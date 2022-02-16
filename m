Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BABA4B8830
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 13:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D611410E90D;
	Wed, 16 Feb 2022 12:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6E3D10E90C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 12:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645015940; x=1676551940;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=v3tIi1LKqFq90+YjyViPhMDSGmMGQB68hM2Ft/v1k+4=;
 b=IGrX7lRfYRhJAR5Po9q5XJbpdecf3mFWVzSMvMxbvjiV3fMPw+q5DSAL
 CP7eKB0v0vCIokcWsVbWmrLDxpuXq+kDRSzRNdblVXqmDW5a4PvAzNsdM
 9P6v1Mz7sXd61Jr/CFzdOJXBNCth2jI12iaGg+6/VU5p8q9icQDz9seVx
 Uq6YBU2ClFbuLvgFwlfVsGnN3UvH6KOz4Agk0Cmi0VWu1Wpz0/g0GL+u4
 ZyKANIJgd495SJHjjMGnRbR5+kJQZItdEAjXm9nlwa153qHH4qsolUDAR
 j/J4B3xs3QKF2Lu7KhGP5LfpzY9rXfHKda/wrDEf0bezmlG6BfabiGoZK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="231221505"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="231221505"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:52:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="571256327"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 16 Feb 2022 04:52:19 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 04:52:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 16 Feb 2022 04:52:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 16 Feb 2022 04:52:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bs4J14/kFtfKzegIbvOerxOj4UagdrbYR0mEG7Gyw7A4QajM7/vA9NDegRwFN+Fe/9oVOXlJcIALdf3KWra8b1j1kUZx2C0Y/XWgK7vOuYjef8KnndSZGSdqtUcu2Ko4dspd79+j5uTYd7MkToCJmoASlutE/1Z2A2dpl+D4aehJX93XxJvSE937atDDzANTHtr6Dfl5IR43mIZq7n0FGFIkRyf5ng1DHG8eMN07hA/1HfggjXI12uWhHMApau0L47cLakfbKSjRDYmE3GotcyGQc4JQUvVu9VtJ3MJ/ns6OVmrOQFegTYUYzijzVWwAFBxzHMYHt3I/uk3Tc9WEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hSOKF9vpoHHzLN2AxNf5Gb2HZ4OwDTNT8nXLyLaHuMY=;
 b=em2KOKjwWDx05itHQU+R4Xlq56JDOCWX1BfTsbp3JtiuNW3tvkJesecrRH3ECYRu4g/Z2GuwKIYOKezOAr4dt9BNmnsldFxxk5Jtwabuq1FezTmRMCJcgA8M3iauu+kDJmCXqEQEQtFn/IgdWTcRgBS7gic1gIllybSMF1NUUf3+QT+2xeLvKPsB0TnzkXAuV53HLX7pynp2P5JmVQuLayWc+bbBWiVGyYunF3sHXyZvkdnflpAyWPVEbIgTTES0yL4IGNWJWjj0uVcVHvsbFsRRLr4jowbQ8Kgkrwys0i52k3EJL78OYT39+GZ0h8Rqypu6W77Nyc5+56mweOo6YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM5PR11MB1531.namprd11.prod.outlook.com (2603:10b6:4:10::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Wed, 16 Feb
 2022 12:52:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530%2]) with mapi id 15.20.4995.016; Wed, 16 Feb 2022
 12:52:18 +0000
Message-ID: <27c41171-0a34-52b4-d189-fa167b3a2eb2@intel.com>
Date: Wed, 16 Feb 2022 18:22:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-3-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220215183208.6143-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BMXPR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f00a90af-2e6d-4158-4e5c-08d9f14b29dc
X-MS-TrafficTypeDiagnostic: DM5PR11MB1531:EE_
X-Microsoft-Antispam-PRVS: <DM5PR11MB1531F1FF0763FB98980EDF96CE359@DM5PR11MB1531.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:826;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +2HPRQ1PiBNP+IEXODnRcUPwrZvyS6KdNuL9VL6e3STajOn6apNW8ezddUq6Sb/fXBjIwUlQXc84ApPx37oIh+0mVcxxV280immaRqYKoKWeyh6qu9K6RKEgx705C/sJS4eZ/EXsrDCTW0/nlhE2XOAJU04JCrdBKVDzcV0RjyFYBVjzkOn7xXVRkykTNUpJvA4ZnEj9BG54TSNhZ2qUAUlYgypHpel3ce9UR/tCHGEqUTCHrUpyElsUc6TzOImQWiOutTOCE305ChKUr3rjfRIBXT42/lOgEv4d0XQepIpippQgy/Xx9Kgf7wIOIHB+mMGVxV2/GQ9iKf9bV/TGLETjAJslt6w+bbXAH2Rfqcki1CSP9uH9k57PM6Y7r7hc1wJSXmWFWmFgXFulHV+eUufpkHZJINFuGw4lOTF7hFaEONKTtdQKNk0K81WVbV4mAhtX6ZDAyGrGo4Fjy8JbvmtO+/krGt9+jTMy20nSa6gGd5jRuDpADqQBrcsF9Egm3PR881zk7umAIqJQQJQLdHkOKHrQ77kq5hPmHPhGpzhog+qN+H0SdZErh/58zKLSmfSs0WcfGzAvFY0LYU92Zu2pefW6UTxcmIF3Lm7olCZ4VV0Dxw0YTSdLapmne1HM77A3V5vVuzqMsPH2a4J5kQ8ugie/pFk/CIzKgNgFmBcmlvczszTX1cJlei0BoVB7ZuPX0CcwS7YtkQFY5vKP+udHJG5SB7oZjclLb4b5VRM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(6916009)(66476007)(83380400001)(36756003)(66946007)(66556008)(53546011)(6512007)(55236004)(6506007)(86362001)(2906002)(31686004)(82960400001)(38100700002)(6666004)(31696002)(6486002)(5660300002)(2616005)(186003)(26005)(8936002)(508600001)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bk00K2VtUnZETk1jcHpvMFEvcXFPMi9Hb1ZadjYvVEJmL3ZKMnNDb0ZWSnAr?=
 =?utf-8?B?NU9TVUhYY1JUVDVsaVp3b0x5NnFGcXpLdjJHd3JVQUdqMmRhMFFnSHlKTDNW?=
 =?utf-8?B?dnZXOVNaQS84ZmF2d2gvMWxJMzU1bHBxM3F5RTMwWFFFRnowRnVaSU1TcDBZ?=
 =?utf-8?B?UHl4WWhHQVEvV0VHNFNtMUgzM0FkcWI1WGtjMWtXblRWajNBNUF2OE90RWYv?=
 =?utf-8?B?RUloVVhtbTcwazRBRE5HVnk2eThWb0x5cWdzUHJKclpTWjN0eUxVVVk5S1cw?=
 =?utf-8?B?ZERFcDIwVjFFOVk5ZjBNbkt3dnB4dlFlK0pjYU5XN1AvRUVWMWQwMEpNUlk1?=
 =?utf-8?B?Z3h5aURRMkVCVHFEU0labUIxcE5Sc25wL2oxbk5mS1RaRnhOMitEN0YrcGNG?=
 =?utf-8?B?dUQ3R0U0L2kzdU5yY3lmY1k4UnBxZmFzVitHSldUOVZOV09HVEFVbmlidlBY?=
 =?utf-8?B?bFJKcDBoUmg1anBFcStwelRidUNKNGlicWV2N3BuSFBlOG8wUXZDaUJaOUZN?=
 =?utf-8?B?bzlKUVZjMFphQnMvZ1I4K0lLcHoxQmRMK0F5OFRWVldreEpwN2pEZEMvZ0lj?=
 =?utf-8?B?YTRyRDFrZDQ1dUZZTnZWeittS1lZTnhwcUpwVEE2OE5lQ2wyQU5YbGZuU0JG?=
 =?utf-8?B?N0NtY3VNbldvRU9FT2Z6SWEyOEYrNDBidmczbU15aFBjOFJkMlVtc2tqWDRZ?=
 =?utf-8?B?MTByb2tNV250MFZKN0oyWTJKdEV2N1JZTkx5VXZudnZXOGRiRUVpcmV6NzZt?=
 =?utf-8?B?VmdkNFRPeFV0WXlxRFVNSU1LemFDaTJseFBuc0ZMV1JHanh4Q1NQbFo4S2Yr?=
 =?utf-8?B?ZG9rc1RsY0hhblRFWlpGL1RZMTNrcXRpVEMrZGE1UjNVOFMzMkZWWnhuTzgw?=
 =?utf-8?B?SnNhZGRsNXZzcUo1R2xEY1FPY2d1TFhUVnpnbjJ6amhRR3BBeGFRRUpTS1Rz?=
 =?utf-8?B?TWJaaEt4eE83MVBRdW1YVEJpWktxS2VMQnJuSlRnSGVjZG5idXVTMDd1NjN5?=
 =?utf-8?B?TUtrbTVuRjFjR0hXeFhZb2dnUmNYT3k5MkNVQTVPelA3V01vWE43NWE1UzZQ?=
 =?utf-8?B?aUhBMTYzcmpISkg1UzJGeithOFgzQVpOZzhKdHoxWnI4Z0F0eVdHdU9RN0k5?=
 =?utf-8?B?MnhRaFBDS2ZKYSszVjVmeTdKa1d5STNjTTNUL0xaTlh4TkhiaHVCZE41aEw5?=
 =?utf-8?B?YllMaEhud2JwREgrTnUxdVIxSFpnWXZRYzg4VURoNkFSRWo2dmlBSFV1Z0Vq?=
 =?utf-8?B?TERFaXo1c2JZOHZYbWp3VHF5RVd5ZXNhUzY3amJmc0JVUWFJSEs5YzdpMWw3?=
 =?utf-8?B?OExtK0NJSTRyQzAwUmJKMkpkS0V1WlNFN2tMY3NmWmtvdktHd0phU0RXdGxD?=
 =?utf-8?B?Y1l6SmNkLzFjMlluZVBvWUtWcW5uWUF0eGVhZWZ0cXVrMCt4VElrK00vcFlR?=
 =?utf-8?B?YzNqN1lNam15bVRSR3IvTHJZRmkzSTRIRzBPbysvcHNzWFB0Mkp6bXlrNmpZ?=
 =?utf-8?B?VWptcUVpdFd5TjlXeUR4SXdJc2xkbk9iWExhcU9Gbm9GYk1qK0VPam1OU2xQ?=
 =?utf-8?B?RExRZDdVa2F6ZTZHVnJDdGtuN25BOEsveTdvYzU3UUZkTldnb291VlFybW53?=
 =?utf-8?B?Snp0dVpSRGlPTXhpeGZGcjczUzEzVTY5cWxPZ1NpZGxJRmFwZi9aMnhPMXp4?=
 =?utf-8?B?dFV5UUFGUnRvY1dXZzBzYnhGUGJRUGVhbTE0RVZjSDlPdkoyQ0tMVk9mc3dP?=
 =?utf-8?B?RUgrejU5V2dFQnJRRHQxVEhHdVZmK3Vjb0cxMEhDeUtPdDVMYm9tZXp0WWJv?=
 =?utf-8?B?V1JROG5PV2NxbHVVdFNueVJ6VjFMUGsva0FoWGVSVGFjR0tWUVZvTXc4cjJh?=
 =?utf-8?B?S1VQaGc2ZGp5bFpTZ0ErbUcxNmg0V1pRVElxc1dkcld1SnNSN2Mra3VWQk1p?=
 =?utf-8?B?dmxQVCtYZ1hnVXY3eVN1S2NlRTBwQXFUZnNPaTVaaGZsRDE4RlVDR3BsL1I0?=
 =?utf-8?B?cDVDOVJFcGdoalYyazFJbTQ4c1orZ01sdVZERDIzUFhqTUNrdFkxczZ5Y1lZ?=
 =?utf-8?B?Y09Pb2pEUUxPY0xpZEdZMGVjUjBUUi82ampHeUxITHIydU9ldEE3eWlnemlq?=
 =?utf-8?B?N3k0NFdjNitVUU1aelVlR1preEppeFZaSWVJRWVpenYzRE1SL1FPVnpuSDF0?=
 =?utf-8?B?YS9iRHFVaEo4UDhYeWxvcitvQTM4OXlxejFVVzNnaXVtWXVYTHhyaFhYSmlX?=
 =?utf-8?Q?360Zh4zPcn8KXEo4/1fuf4Ud7uYZgZFgJ4q21Ao2kQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f00a90af-2e6d-4158-4e5c-08d9f14b29dc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 12:52:17.9749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E25XfpnGk58NxuP129qK340zYKf3UP1HFtNLT9lt3xSfGmU9ha1FoKRN15Qbx01HJfzdMF6TNqMb+W7reVz3Av4DwSvdKuOM4a0zI8EeIvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Remove nop bigjoiner state
 copy
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


On 2/16/2022 12:01 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We just copied over the whole master crtc state, including
> cpu_transcoder+has_audio. No need to copy those again.
>
> Also get rid of the unhelpful comment.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 3 ---
>   1 file changed, 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 622903847551..49ca13abd108 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5779,12 +5779,9 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>   
>   	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
>   
> -	/* Some fixups */
>   	slave_crtc_state->uapi.mode_changed = master_crtc_state->uapi.mode_changed;
>   	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
>   	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
> -	slave_crtc_state->cpu_transcoder = master_crtc_state->cpu_transcoder;
> -	slave_crtc_state->has_audio = master_crtc_state->has_audio;

Makes sense, these two are only set, uapi was preserved from older slave 
state, so only the relevant bits need to be copied from master here.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>




>   
>   	return 0;
>   }
