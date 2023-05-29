Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED38714386
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 06:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF7E10E032;
	Mon, 29 May 2023 04:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A3510E032
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 04:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685336233; x=1716872233;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vdDTp0boXcRwTRXTY9IisiQW2Elk//q42YavJObQ7cw=;
 b=YQERh4QWrOEDvLO9wo6LaWSBfAhTiaislVSMtDJStPD6LZ1RO6T3t/wH
 /3+DOIiH44W8rGmHplsTOJxctOaRozqgv9Y2IYJFU3FzMIl5ndaUBJGdw
 Q7R9piPFpsOhAqGcljp3+5Wh3VK8ZMiBga81BKYj6PywC2PbDX21SUT98
 Qr68n1f1QZDz5aFByrQgnov9IGBZesXTfobTvYNgZDSZ/kXuflAHmYNcb
 Xvy3P338FYQ2ZOcIm2M2T7J7NDNCELlbbTzXRlQ7CKSFEd05RIJI3+TBv
 iUp6jZ6hPyOt9BgTEwP0SR9CcP/ovILyqJqoa/jYm0tuO5gwGytNhWe5l w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="382871523"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="382871523"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 21:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="775791272"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="775791272"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2023 21:57:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 21:57:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 21:57:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 21:57:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 21:57:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hu9LkSzMf8Z5UGF+dNGzdh/xitc0nY6TRc6uHVJLOGWOQWWmqYDNBDJu5nl6s1yKUhsXL897Xvz+w5uRHURfzwO7MiCTRSDHliX0jYPCjs8O/nBMkAh++bJnvHVlhUehjoQ+b2Q8NqL02F5PMYSi/w75imrkAkKUI9GhBxM3v0tClHLlCPJrJGZYamr9S8nxzBSi3Kg62s1bI0LPJ9S76pRSggp4zvSLtI5I0wblW42Uoab5kn8f/3NslTFYta2qEWOVBVDFWdmMDuA38z08D3Gj4xt4lA2mxO52nuPT+sUg3itLIU1UWfzc2ieMTZvOQ38No32KVQHJ3nVHa2nSTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GfpU6LYBYHG8nyg9+uzdgAQsemSp6HGYgfUKAmQqUn8=;
 b=P4uaquqi8bLeoTrPDKHcOuoaCZKfVi/nz/rSldYmu3Ge0p3DDNQscMqd4drAMf1hq/xomWx0p1B6CyxQhXU0mJV2nb8YG6glqP/sWlwJbzKxrBN+er2iFL4LW4cD4pSnAuewZ5Pv06/Ix+Uj1empSyVBbuY9mzabcXLmqROn3k1UXruqI6MR+9sn4oNEWfkHj2Ps6N3ftuLC6GdSxTX0SH5fEcADODEm/HG74xs0/ZUFiEjbGYUq+5SCma4+aek6iwS6ZasbCAhHRZ0Uljb/DvxsodKrDDjk7b3Ljf4Zy+MqydCJXZQ3P3cAyzU1wNjgHqeWwCS7aVEKl+c43nZ5Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5938.namprd11.prod.outlook.com (2603:10b6:a03:42d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.17; Mon, 29 May
 2023 04:57:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 04:57:05 +0000
Message-ID: <fc65009e-ee6a-826c-542a-f7399646292d@intel.com>
Date: Mon, 29 May 2023 10:26:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <964a765fd38a0da92c910aaef23bcf8eada07df0.1682077472.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <964a765fd38a0da92c910aaef23bcf8eada07df0.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0223.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5938:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d3da71f-156b-40b5-5c57-08db60012528
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rGdqvje1Hv3hRCJom8bH5YxmqeklcGQczT+MA+V/GGuycw4CiBI+H92iS9JBewIVnGS+v37Hr8LQUBoiaNDbHmZgiIRCszVqGvpnXwNKrw/61U2KDLvhFdu5HK//v0InTM76l/oeE/YO/QsIxgQKn7PfrD1SedreZfaSXTKbciwhUducJA5ydVLtf0Ws0UXwvFkb6Nmb0IUPxz7K80/nss7oahGKHHjvDuiw//9D6Xt+jboQUOqehxfQ2CYprBlj/M0Cfys+esgyvmP0v4muwJFhtfNA+TgINQYSajle4ee0eEthmpTYCTI+/xVxGY9OGbxu27e1cA6db82WwAoIc9w64ay8F54KZiUv3dgOCUatTqdDa8QQhFzGy7Ggv/RtdJlS+r34fCv2qT060IxXK+qpW6LzOen8ihMLyJH9FG7Fp/lWHGp6BX2hIpLP9aWUZPtAvNMkEa1CU1os1YauGOhH450lWBHl8fYIlz6tEyQlOMgpGBUVIkg5fCGLF27hBb/Zs4d/kTbR2UqwVjVb0VHc7hdZq6D01jqMYTJE4NhHda21sjIKilCcFeM6hRZNo4StqwWG95opt2QbmJxKu0G77N+G09K9Ge65jeIqMaNzldT3N5aAgRIzhDis4zKNh2fUu6SNM2YGsRJuI7xHPg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(376002)(39860400002)(136003)(396003)(451199021)(31686004)(478600001)(66556008)(66476007)(66946007)(83380400001)(316002)(86362001)(31696002)(36756003)(26005)(53546011)(6506007)(186003)(55236004)(2616005)(6512007)(41300700001)(2906002)(8936002)(8676002)(6666004)(6486002)(38100700002)(82960400001)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3duaUcyM2MzZHhkVUhuOU9vUmRURVBpRkQ3M2xjQVo2RG90Rll6Q3Y3YmhY?=
 =?utf-8?B?VXc3YjFrYUhVK0Fid0NKMUxQUGNZaVQyUlpxTFFOcHN0QkxQMVdidHlCNVNn?=
 =?utf-8?B?amtHZEIxWjczS05jQVpuTUtGQkZvUTdZMTVodUQzRk1LYlloWDk4RWFsUVhS?=
 =?utf-8?B?Y2ZHVFIwOFJ3MFRzdGprUW1DODBjbmJBcWFOdGhWbjQyTURsSm81VXVhMjNX?=
 =?utf-8?B?WjBSREwwYUdWOTZKSjgzRldFSmJwa1VEWnlLSlpraityK21Ddnl4OFMzeFZ4?=
 =?utf-8?B?am5EV0xmNXdKL0tOT0FZQ250N3VLc3NEdy91L2NldU5zb3JhVWsvOWVBbWZ6?=
 =?utf-8?B?WFFtQ2JpdUlJZkRKRzNLajBPRldwSUZKK0FQaE5UajI4SlBTMGZqaEJ5L0VY?=
 =?utf-8?B?bWlZZlR6UHJCNXpnRVVpRWFaQ3QyY1hJRUFRNUdic1hsTnFUTXd2TnhtbkpX?=
 =?utf-8?B?SXBJVGtqOUVLMDZOU1JQTWxUb2lJV09SbzBOT3VnWTVYMXVzbTdHYnljRnFL?=
 =?utf-8?B?Z1dkS0xFQ01IaHNuRHhNSU5pam5HOExvVmZKS2VaNzVmbkxwY2VDS2pNM0ZK?=
 =?utf-8?B?aTcwTHRnaHlRS3lESkl5c2RZalVGQ3BWSW16VmcwWXJyclMyZHJHbGJTZWE4?=
 =?utf-8?B?dWtTdXF6TU5DUUhkSXdvVGx5RWR5dzFJV3pMNzdoR0hIblNzV2lJUkxCSWdo?=
 =?utf-8?B?UEJ5SjBGZGpsZDN2bEMxMXNzL0J0clFldWhlbVFUWEZtNExqY2tuUHdndG5Q?=
 =?utf-8?B?TnJJeGxvRi9IZTQvcyszeCsrYyt6ZGhaenBuRGMwMGhUUXFTOU5wUEdMTXJx?=
 =?utf-8?B?Ni8yK0RMZWNuRWhidFRSbXFoaWhGbWdETi9LQmJsbko0MGJ0SjdQaXJNK3cy?=
 =?utf-8?B?TXVDd1NFNnlla1NkMWJPUGVoVWNyelZFKzgySE9FU2xsRDBxdkVaVTA5S0Zr?=
 =?utf-8?B?L09HczRtSFdldG5xeTNscHo2S3lMSjBjZEFWNk9EdFhvRWRLYjQzT2ZSb1Qy?=
 =?utf-8?B?ZWhOSnl6b3pjK2lqSkZwY3BaOWhvZE9LdUJNeVJvMGs1OC9ZeCsxUXltTmRJ?=
 =?utf-8?B?dnA0VG51alY5dlpoT0pzVFBkT05PVjR0c0kzZ2Y2OURLaGw4V3VLbFdVeS9x?=
 =?utf-8?B?eG9ndVRtaVNSWUtwZ2liOGFKYjZXR0cyTEZ2bGdMSHpTZXdGOTFFb0xwRks0?=
 =?utf-8?B?dmVyd3F2WUE1YzduMmtyazA3MlFkbmZMUVVQM1d0dm0zUVM5TEZLSUJBQXVI?=
 =?utf-8?B?ZEhLMkpzdlUzTVdGeENRS1JOby9vMlRaUVE2bUk1UjAwUkR5dmNjcWUwRlhj?=
 =?utf-8?B?bGxXOTBpSUozU3oyNlhnTEhMaStLeExPU1lDV2NUK3VBZ0FLbFgvQ3AwU0Nn?=
 =?utf-8?B?enhIQy9qUE1MWXZWRTJodTZRMzFVaGJwWEtzWlRJWVVPVlJZeEdxWEVCSHow?=
 =?utf-8?B?cmRlYjVpcGZqdHhGZnpsSFZiTngrRVRWbFNXMjJIWDgxZStaNEs4OXN6MHI5?=
 =?utf-8?B?SVowQktoQmZsMnpVUlBmZVhhUWd6c3VTSnZMZGpTSHR6bjVCZDVhdXJYaTJy?=
 =?utf-8?B?R21SV1BUT1NPUUk3TFNNL2ZHaDBWdFQ1dEgzUTVvcjRYMm5CVXFzVlczRUkz?=
 =?utf-8?B?c241VnBqa1lOMGlGU3o5ajYvTDhEV0lsRjdGZzhWNElFZ0NJanVEbmlIWHVQ?=
 =?utf-8?B?cmJoM055b2Q3aDV1WUU1b2NiVHpqb1FBaU1MZ0JySHBydUF6SVVBVllGTENS?=
 =?utf-8?B?QmN0R3JkRUtZVXAyMG1EdG5pUzFYaHlUS21VSnFMdHh0bHJTb1Y5QmdKQUZx?=
 =?utf-8?B?OWlqYm9XYlRaRnNCUTE0eXN5cUxLM1pqMWZGcWFQWHFkbnZScUUrdGQ5TzU3?=
 =?utf-8?B?eFpLU0MvSnpJRTNVaE1WeHE4SFJHajB2c1pQeWdwNGxLMnlmV0JscC9GY2Np?=
 =?utf-8?B?RVorUi9kSzREQStxMmIzaXRZQ3hjNnlLZ0RhU1R3WFptWGdESXRrWXZxZWQ2?=
 =?utf-8?B?YkZ5V29sak5VSVN2RFZXYmNwWEZ0TXN0YXhwWXgzd09PN2k1V3pwTnFDbnZ2?=
 =?utf-8?B?ejVUVTRmeE9ZK0hJRmluNzlzTFFsS01pdmZwL0xBdUFGK1lxMng1U0kzK3Ny?=
 =?utf-8?B?d2R1RTNmak50ZzRaK25XdTQ4a3NZV0pSVHl5MXpRRmIweWN0NDVpcEZXT3hh?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3da71f-156b-40b5-5c57-08db60012528
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 04:57:04.3308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fndxi9W+so59eGeUpioYMyHTLRgjxBX14MrlVmQ6wxBnaXgNztwP4EH2FBAc3Kerm12KAofSqJ5sOMJcrpIYZr2QiOl25fDAoxE51n6DxKw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5938
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/edid: parse display info
 has_audio similar to is_hdmi
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 4/21/2023 5:17 PM, Jani Nikula wrote:
> Since we already iterate everything that's needed for determining audio,
> reduce the need to call drm_detect_monitor_audio() by storing has_audio
> to connector info.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/drm_edid.c  | 6 ++++++
>   include/drm/drm_connector.h | 8 ++++++++
>   2 files changed, 14 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 0454da505687..813ce00a106a 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -6243,6 +6243,9 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
>   			info->color_formats |= DRM_COLOR_FORMAT_YCBCR444;
>   		if (edid_ext[3] & EDID_CEA_YCRCB422)
>   			info->color_formats |= DRM_COLOR_FORMAT_YCBCR422;
> +		if (edid_ext[3] & EDID_BASIC_AUDIO)
> +			info->has_audio = true;
> +
>   	}
>   	drm_edid_iter_end(&edid_iter);
>   
> @@ -6268,6 +6271,8 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
>   			drm_parse_hdr_metadata_block(connector, data);
>   		else if (cea_db_tag(db) == CTA_DB_VIDEO)
>   			parse_cta_vdb(connector, db);
> +		else if (cea_db_tag(db) == CTA_DB_AUDIO)
> +			info->has_audio = true;
>   	}
>   	cea_db_iter_end(&iter);
>   
> @@ -6424,6 +6429,7 @@ static void drm_reset_display_info(struct drm_connector *connector)
>   	info->max_tmds_clock = 0;
>   	info->dvi_dual = false;
>   	info->is_hdmi = false;
> +	info->has_audio = false;
>   	info->has_hdmi_infoframe = false;
>   	info->rgb_quant_range_selectable = false;
>   	memset(&info->hdmi, 0, sizeof(info->hdmi));
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 7b5048516185..c8be6a343589 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -653,6 +653,14 @@ struct drm_display_info {
>   	 */
>   	bool is_hdmi;
>   
> +	/**
> +	 * @has_audio: True if the sink supports audio.
> +	 *
> +	 * This field shall be used instead of calling
> +	 * drm_detect_monitor_audio() when possible.
> +	 */
> +	bool has_audio;
> +
>   	/**
>   	 * @has_hdmi_infoframe: Does the sink support the HDMI infoframe?
>   	 */
