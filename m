Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B9859BD25
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 11:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F1E10E05E;
	Mon, 22 Aug 2022 09:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74FA610E91A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 09:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661161955; x=1692697955;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aJM5AoYQ2wx5DJ4Nbqy0T2Pj+pMqH/bW8gHJkfvmoUs=;
 b=lsCVHez5P/PyQqcu2Fk53D9WjL7Z9uJYmE2kvsUtCOcjySu0+9eOk1DG
 g/SY+mqnxgiUO+mEn8l0b7QWIEZY0YoolodX0pH8q1S9d/aN+0wcp1dSj
 jEzSnf/aci2YNwbcUqkR1bGDMkoRg6Xl5tLX25/D40PzJmfmu9d1eSAGe
 dd/UxHgZQ0d/73KImS8dIp05qgfKUiyY0lEouLZJ9LtW+40i1CoBJtvYz
 /GVJYzlhD/Z2JlfZAM7Q0fBrre/dPey6/pud6ZTxCwHN7UJ4V11dF3th4
 vNkUPB1Z+sptUMPQUiwbiCajC7PtcajcOJxfHA9zkEIWBBAEnDAO0empM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="379663289"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="379663289"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 02:52:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="698230178"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Aug 2022 02:52:34 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 02:52:34 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 02:52:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 02:52:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 02:52:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I0hbbV9cFUQ/Cn1bjQLTzOVQfQN3d8mta3wSalSoRrlvh/A1+VYGH3klmU3LKAR6HSEbprMYi85zCCx78C0TH9SvN2uwnGNWaH7Z5eQnTu38uuxmywMyqQ2Hos+zmTwx7ay652ZCzy/jCpWxnwxqwErw/zbX0ZePSh4I/UwI7OpsERI/49iKySBDtWhobcFKUQQMyYFSxt6aUDGQfYmZZ+GrwMInU0JCODW+sYzVSXf1keaaHTfvJkSjA2WQS38gf5Zy4MCUrdPIA9H45cpNBEW0XfqmwgxosNGNFyrROx8PY5TVn2O/78AFwMtvXYujbYcYsM12IUZPtK1sWI9HZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uHE3pc+mDlozuGA6FXybf6x1hvD0TUJXa5iW06CntZo=;
 b=iFqqz+qbi3x0ktPrTOd9LEyVtzDZsQAMmhepvDhtVp/e53x/sYdurltocgke8h92mi9IR5zDBzINiWVdXUfDiEOyOcTBMc4gvqtkxDSXQWKn083dwP5a6paxUFn9rvBPR24yeZkUxRbVBArsGU/IodATkUi5tSWpC0yeL0D1izYvn2FoW2iMlcTWZgZym1kss6PZedQ3Wve3ru06J8x+wjqdH2TBoycSmY3QzSAaFs6gzKS56OiDFA61wltMJqSe7XQ/2TKfZVfMfmiR7Z6iaGosnVLvtbg8k4pzc25SQoYjwzmA/qBRtAULHBmS7uS/TaLpUaLZ5kG14li2FsnOuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN7PR11MB2562.namprd11.prod.outlook.com (2603:10b6:406:b4::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Mon, 22 Aug
 2022 09:52:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 09:52:26 +0000
Message-ID: <d33e683d-3ce7-b449-6998-1b72b8fa3629@intel.com>
Date: Mon, 22 Aug 2022 15:22:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220817124516.284456-1-jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220817124516.284456-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0001.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f1feb9b6-6f4d-4769-e54d-08da842404da
X-MS-TrafficTypeDiagnostic: BN7PR11MB2562:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: slcMTtF+0HA04ODghOlen3AdtqqKEsjkCimZCbdR5ZkoQNgmd/CWUwRvBa1lxgfaCWpMu/jwO/osRqyqrJGHdIUneIxiQ2yKJhrL5zSTcIwEZbX1shz1uRUdnX9nuAPCJCQQn+uvxVhRHMULWlB1qXQlWkvUMX4XFCYvP7lnr42CAda+E2wDQL/JRACJvdOOK39MRX5+uSz0rLytPPFTGdPPfAc1AiqKKggFUaJFtoSIy2lj1W8m16S46mlgBUOch9GzJgC7b883bIy8gfj4R/VWMTIf9qNZdRb/w0aKRnlYNbCMw2b28rKr5soMkwwo1REOJCrY9DjKZ7TfDM/I/7vIT5ui6eK/nRSp6XAcAlqBDSD2Mabp60R/6XdMh/eI3a+b7DBNbrHQXPa1epTZWTP5ZjCN4+jVb/CDJ8dIWvhZJIjJbs+htJSEk72OayaFDjRLdK3Iud987fIB9bqw8+t9oEGa2i1ZmeKWaJx6nT9gozX1AC/X+avKi0tYY3VyFgwUqtF4V7Dd60Hesccb+Tmmf0me37folUHcpHU34EGvjTwiBJdD70VqfVcTum3YqjXBNMAQyYJYqn5S9sDdgDLiasLxoHhfqnjY2IxM98J82HtqA9c7BnIhONVmHFXQ/Ud56KSXgLHBgpuXNCL+Qo/4/oyUImfkvVGDvBZHh/t83lVEaGxd2S8qGgIJnX6OIquaoQh9KWs9dCCItj85CvQw+qcX5gLNFwLaB4wjg1avQL/qmBgCk9ZOfalG/vq1j86u3O2K/aTUU4HR52nSJl5p3eaVs0hnpcqownm39tI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(136003)(346002)(376002)(6506007)(6666004)(478600001)(6486002)(41300700001)(186003)(83380400001)(6512007)(26005)(55236004)(8936002)(2616005)(53546011)(15650500001)(107886003)(5660300002)(2906002)(316002)(66556008)(4326008)(66946007)(8676002)(66476007)(38100700002)(31686004)(86362001)(31696002)(82960400001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azB0RVVRZE9Tem0xeklKbUswT055eUNWcURRbmVXZ29uYTZEY2M0QTV6MUVT?=
 =?utf-8?B?SE1iMEFtQklQdkgrakp6cDh1eVE2UkdINHh1MGh4LzNHRGR6aUxFRWFhLy9x?=
 =?utf-8?B?WXMyeVhkaW5JUFY1UjhKTmhYRElxTXdVOWhiSU1ReStON3dpRXRUVGcxQnhw?=
 =?utf-8?B?M1ZDeEN4QXJGUkswckxtWGYvczFGUit0cE5ZdXFtRXcyTWkxYUtHa1o5ZmR2?=
 =?utf-8?B?VnFjL0NiSUFBR0lldkpTc3pKelBHQjh0R1NNMVRzYWJlRWRUZ0xRWjNEd0Q5?=
 =?utf-8?B?VTNoSDBuQ3N4OGZJNkliQ0pmTFhDU085L0ZnNkM5VTR6b0JlSHZwU240c1VU?=
 =?utf-8?B?SzdDNXMvTzdwMlBQRnZlUzRaTFBPTXdPTE05ekJlVU9SU3YrL2VpTFAwS3Rv?=
 =?utf-8?B?Z2thRDZlaU5YSEJJRjVjYW5LUWJHakRPNytEblNaNDNxR254U2hGWFZRdW1E?=
 =?utf-8?B?ajZiVkcyVGJpa2VKdHU3RTl2VGd2d2VsZEtwN1RhQkt2NUFnaExoTGhRd282?=
 =?utf-8?B?SWsyWENEaWloWHRpNVE3OGpocVZNcFpwMUZ6bDM0bHJiZVB4Tk9QTzlNcG14?=
 =?utf-8?B?UmY1WlNDcm5QTmEzUnBHaE1obU1aMXlrUFRDQzBDSW5NaHpSa28wRnIwTDYw?=
 =?utf-8?B?Z0NQWWx3WVNjWlRKZTd0NTlTeHY1aFhGT0hDQzlEK0hndGFLM251Yk1MQ25H?=
 =?utf-8?B?UThQdjNkOGVqMldsVFdzay9IaHh1bUI4RVFET1FoODArMlhjSThwRFVkdFJK?=
 =?utf-8?B?NURWY0ZVQnJNc25rR290QWxqaWxFQUp6Qk5xUDhSU2F4THNUb01Kc3ZZMzNC?=
 =?utf-8?B?dGFDZUw1VWtYdC9XYzN1aGRqcnAwTzlzWDZxdlhtMWRqOWFVcVRBU2x2cTc1?=
 =?utf-8?B?N25xdk1wOUVIN3ROTlFhdk5FU2JaWXFaQ1J0ejVXUmpsRkN1VEV5VHBvNkJ4?=
 =?utf-8?B?aFNlakhMekxDRFZPb2VBa1ZBRlYwQWZlY0FHTlNYUFd2ektBUGZxTTFvVTVJ?=
 =?utf-8?B?TE55NW1kWDMyMG1JaHBjWjBmZmViSHUxaGxBYTV3RTV3aTRrOC9Hd3BhT1N6?=
 =?utf-8?B?RHcvUFVtczc2clVUV0hTSW9FVDNZVjNZVE81NCtmenFpVEkxZ2ppZjlxTGVW?=
 =?utf-8?B?aTR1MGt2MzQ1Q1lzL0p2cU9ub1pHUDhpTHVQeXdZRFZNUTg0Q012a2VwSlpo?=
 =?utf-8?B?ajZiYmJFcEsvSzFEeGpWRmNmaGZtVTJBV1lPNWVGb1lMU0NuOXhLVEVNVU5T?=
 =?utf-8?B?bTlDTmRRa3pPbHpkNWtxUFA3WHlqTDZJWHE3T2xaOHZ0c2RDeWIzUXd1NlFN?=
 =?utf-8?B?YjlZSmdNOU1JWDZHd0ZSVHVWUFNsQzZUc0tXRHhGUUpQWW5JenlWdGlNcHNS?=
 =?utf-8?B?ZVJzaWpsVEpwalRhYVdJdUp3eU9pVUlFakc5U2RrVitlRFoySGRLT3IyS2ZJ?=
 =?utf-8?B?ZDVlSzhTTFhseFVxU0NYUmdUS0VoM29xNW1ZbHRhRFRJZklmUTJqVUYwYStH?=
 =?utf-8?B?SDVrdW5HUmdxS3VaVTlzMGN0RW1jcCtpZzRQdU56NzQ4d2RtakpKTHAvMHJQ?=
 =?utf-8?B?ZUVtdEVBMERLcFo4NUVkd1hCYmdCMWs4NmVoN0RwSU5UektFSFlsOWhmU1FL?=
 =?utf-8?B?dTN2TnZITFJYQmJrWWI1WkhpeUtwVXlhdld6U1dHbUc2ZVYwQ2F1SHFuQlJu?=
 =?utf-8?B?bVdCeDN1YnIxWmRNTk4vb3dNVkFiaE1Mcm94UUw5aDhnS0h5TkhPWUMrajNx?=
 =?utf-8?B?aUxzN1VDVjZ1SVI0OWswb1M4Wks0QjZ5azdXK3daTUpEbDhzTzRMYi9sMG5s?=
 =?utf-8?B?d2h5NkR0a01IYmlJUkFRUld3SnFUQk52cFMzSklsK3BQa2tOS0pjRkhTZWR1?=
 =?utf-8?B?bVdabzV4L2hPVmR3QVhoQlBLWVZnWGRyR2kvaVBJcmpyOEV4WFQ4ZFErTUwr?=
 =?utf-8?B?WmVPbm9tN212VHdtcm5RWXBpOHU1RFVmTWZuS21GelJWZzliVDZXMjF0KzIx?=
 =?utf-8?B?ZFlSaUt1RWQ5aUcvV29IUG5aSXJJSXRGSERQWUtVSUFXN0NqSS9ocEZkZnA2?=
 =?utf-8?B?RGF5MGlRdzZkNWE2Z3pGOHhZR2w3SkZYVk9pb1ZCb1ZTV2t1dkExNjJmWkVS?=
 =?utf-8?B?Wk1qdU1aZUNHUmo2dk4yMjFLL3g3RTQ2YS9BV3pZcnhJMlNUWlhPT3FWeUxX?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1feb9b6-6f4d-4769-e54d-08da842404da
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2022 09:52:26.5083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tb847oep+ahlkWsyxjc8xOst6Z/DjWW1XxKP7VOyBbqqNWf3/BSZJhTu3E8+KxdZXj4LnH9X85jZd1/l1eolXqjD0wKHOTBC1ncpB9HJQY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2562
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dsc/mtl: Update the DSC minor
 version
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

On 8/17/2022 6:15 PM, Jani Nikula wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>
>  From MTL onwards we support DSC1.2, since there is hardcoding
> to minor version 1, update it.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++----
>   1 file changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 32292c0be2bd..db5f536bde05 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1377,7 +1377,18 @@ static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
>   	return 0;
>   }
>   
> -#define DSC_SUPPORTED_VERSION_MIN		1
> +static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +
> +	return DISPLAY_VER(i915) >= 14 ? 2 : 1;
> +}
> +
> +static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
> +{
> +	return (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] & DP_DSC_MINOR_MASK) >>
> +		DP_DSC_MINOR_SHIFT;
> +}
>   
>   static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>   				       struct intel_crtc_state *crtc_state)
> @@ -1416,9 +1427,8 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>   		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
>   		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
>   	vdsc_cfg->dsc_version_minor =
> -		min(DSC_SUPPORTED_VERSION_MIN,
> -		    (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
> -		     DP_DSC_MINOR_MASK) >> DP_DSC_MINOR_SHIFT);
> +		min(intel_dp_source_dsc_version_minor(intel_dp),
> +		    intel_dp_sink_dsc_version_minor(intel_dp));
>   
>   	vdsc_cfg->convert_rgb = intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
>   		DP_DSC_RGB;
