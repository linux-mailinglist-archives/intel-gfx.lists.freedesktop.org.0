Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FFA38C91E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 16:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04496F886;
	Fri, 21 May 2021 14:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59FD56F886;
 Fri, 21 May 2021 14:22:37 +0000 (UTC)
IronPort-SDR: +fJ7+2T5yCLBnsU1Z70VH327RFBwN4ifKaGBqCJccwBHAknCJkzXpIaKbxIkFbsjEMBP7PcTlz
 GOPLWdzHaX+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="181784395"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="181784395"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 07:22:36 -0700
IronPort-SDR: dq67KVyoAqNTwcf1SndKB4Nx44m8iPzaIL6l0fkt/ZpMWen+/sXkzL9buUO6Hdb2/nbmMhuFYP
 7DlZSguCKJ0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="406656868"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 21 May 2021 07:22:35 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 21 May 2021 07:22:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 21 May 2021 07:22:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 21 May 2021 07:22:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mpx2Fxx1jhhONnCpIYQXSd27ciOWFnq816INDMaOT16CSdieDYQSHK3aSNbp2tLvIk0Sm/t0Jiv6hcvH8E6H9cHYM8c9AUAOUUCkNNypnefhO9fb42BFYEuIBXxVaqgD/rJe6xfDU1/NNuLQh/SQshIiy1P46LQjyivmKXKWM4uaCIBeL8B3VJsDK6n5WzYflZbHW/5jIq4BF4dpXQcbCybxqp0fKGqI67DJC0naQvs5oGgDeO0gQ9QBKwWmDLCg6Tu9i8E2jHZgGcnV8lNMmIuod5sWPdCS49aKPtPR4BW/iBfc42shCsiCu+nfPo/3MwNOat3eOwpDbHH95LMCyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3K2u6/UH8ZWwlu1aMgP9xHmQZTYvn463K9r+SM8TB+o=;
 b=F261w0Gd8BOaJ/CFwAZw/jk9/4k5/0kf9lvYWdUYBgupX3g6sMeZV+gmp0R64JVCInRd4V0yx3Vk9Qr/fKKD4zRV9XgolRh696ZZqyKYUXoj5rPPW5Z+I+lV0XGlNMXXlpdIWgHfv5p0x2GJJuQIcIpDh5cwKLLIyVFLQ1sXduwK2I/8wfLJbkdoD7XYgymd6bBYJ2KywSzxFlP4fhPSVm2pWv1aANJtUHHDaxBwVLGUjyZwxzhXycnqr/bkE9fU84sWS8DCYjWSiD8MygewFofq3mimDOPxG9w9T2Tw0VVUHWtA4m4Iw3Hh2Zc9fTeAjR3AVtzIPnUJFNlC9JBuJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3K2u6/UH8ZWwlu1aMgP9xHmQZTYvn463K9r+SM8TB+o=;
 b=POfuir/CEB4qbTiyFhtW9lBpT5gKHKu9YjvhViPmavEpNACv6HABTylRGlOKZFJJRm3RMYT9qRppHj50Fh1HvRcbsCqqe89cL2JwF33TPduItD4cJyQPMXhMRgvcdbbTMrUZpbxjuxDC90myzCvWNkpxfTZ60XXU8GWcZw/xUYQ=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BYAPR11MB3685.namprd11.prod.outlook.com (2603:10b6:a03:fa::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Fri, 21 May
 2021 14:22:33 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4129.034; Fri, 21 May 2021
 14:22:33 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [igt-dev] [PATCH i-g-t] tests/kms_big_fb: Wait for vblank before
 collecting CRC
Thread-Index: AQHXTfhCls8Pt103VkKC8lBXFOqEJqrtzU8AgAAv6yA=
Date: Fri, 21 May 2021 14:22:33 +0000
Message-ID: <BY5PR11MB4372274545478F2FE1C1451A89299@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1621570131-23943-1-git-send-email-vidya.srinivas@intel.com>
 <f0926681-ea44-b2d2-fe8d-a443728d01c2@gmail.com>
In-Reply-To: <f0926681-ea44-b2d2-fe8d-a443728d01c2@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.64]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d6650c33-78b8-4b64-e72f-08d91c63e029
x-ms-traffictypediagnostic: BYAPR11MB3685:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB36850A9A31904BDE3F655B4A89299@BYAPR11MB3685.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 19kJfCKs/Ci+gEnTfpKo/6ke7FvSrFwuuKQ7/n6pIuadYXVVNrFteJI9+ZwMMK0e5Cu1p26y2gHUz4qe+/odXoR68IstOQ9wJM/zlxkVb+YQECuttwBpMs2+EYHGXTSv/dF7jmW8vqO0pH/EfbmGUVuRHlXYW4RJ1xY/lzeIwayr6fKYdNNy0LBzK/ATjc8+/Ls3XQh53KgJDKTz/R2Oo4vXfpjokM1QMjlYDbsbKMheCb/OPes9DVuDSiWwcWBRr2LoynH7j/F+ssnFRkreAHJ+4nTotAF31BiC9bfU+Tp/ZLCcWN4JkKjuC3JCAlTsXyK5htcVsaC5qnTKqVFDj8zqUE6N6HLBaAQtvTjrMk7vs2npZ6rsJtl+4dVdBjMPV0PdZpa7yzBj+kTlpa7nFbnRABqX6jyL1cS64ANwSf03LP+KCRRm/7XRmL6eXFrtXbJOCMsHTDGtVOxLXgrjWFA+bkAHxCJSfXteVHTmm9dN5TrEmz2cNIDPb4Qucr0bQoM/dd703LKkK+S7n7+/lguuhKKMQ9Zc9d/XRP23ZmCD5Lj2JCEW13+lgfOcfalcDHdjK7xyfsV+0Ov63Wl5TUhfAO8qKDfuv2vnHB5aFsk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(376002)(39860400002)(136003)(346002)(8676002)(7696005)(76116006)(66446008)(2906002)(64756008)(66556008)(66946007)(66476007)(478600001)(71200400001)(26005)(52536014)(5660300002)(186003)(8936002)(86362001)(122000001)(53546011)(38100700002)(9686003)(55016002)(33656002)(316002)(4326008)(6506007)(83380400001)(110136005)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?dnRWQjRselhmU2xVdnJka3JNY2plekNYQ2VDWkRSdmhWLzNjbEpGK3NGR0tn?=
 =?utf-8?B?ajRGQjJleHhXTkwvUDZEU3l3OWljTm90eVo0dkxOOUlGdGZpTmZ5QzBRcTcv?=
 =?utf-8?B?YUxDWDM0WDhBdlFESW5wUlh6VXF0WXU0dWlFRFlPOTNXTHBvcXVhdG5GVEJZ?=
 =?utf-8?B?b3F6RzIvUUIrVmVBMTFoZ0N5ZlhJcnhQUjFpc2JOY20rdmhZZjY1cjRpQzhm?=
 =?utf-8?B?cnVSK0J0bXB6UTJESWM4bDNuWHAxTGhsT0RIUjNqNm5OcUlMQUtLSGFxV0NF?=
 =?utf-8?B?Y3JuT0dtMm9TZENIM000eWI2MTRTUll3WGlTWkVmVjA3Tm82K3h6N3U1QUlL?=
 =?utf-8?B?eGM3RTZvWTRqMnZpQXR2WW5XODg2WEM1eGVXS1VkTmtRQktuNHIvWFJ0dCtZ?=
 =?utf-8?B?MTV4WHVDQmxtSTVJWVF2dldmYnVucU1nMzBPUmFxN0JEZ3phamx3emZMSE1k?=
 =?utf-8?B?Qno2bnk3ZFVtS0paQU85S1l3Z3drbEY1L1FxdmUyalJNS2JLTXl4R0R0Nzho?=
 =?utf-8?B?ck1Gb1Z0ZGR5TUtpcGgwaWpFeTE4TXY1ZStKNXd5S0tKbEh0Y3R6MjVoZHFB?=
 =?utf-8?B?OUhmdTNJdjBWOEhyWUJmcWJ3dGdGK3o3dFgvY2RpdXNQMXowalJXei90ZG9T?=
 =?utf-8?B?dGZ1aHFIUnFtb1NQanlERmo1ZWxBeHl1VlRkbXlIcjBCUWhmalV4QWtNT3FU?=
 =?utf-8?B?dmU4K0V2L01DNVpuajBFS2hpeGtRZUFRaDlHQ0NzenBXcTRIQ0Q2aXNaZGUr?=
 =?utf-8?B?SENkQmpmanorSDJxNmRlNnAvMGY3NFBCd1ZLazZUT1kvZ1J6Rm5HSVhScC9o?=
 =?utf-8?B?aXdLbzNkWWdPVm5uSWVOSkpKT1RtaFo3YW1KU2szUGR0OVhQMDJIeS83QVFH?=
 =?utf-8?B?TTc4Qm1SZUdacS9ZN2pOQWZSMjRhSXc3SzlZN3BNMVpPdk8zK1hiU3V5SVRi?=
 =?utf-8?B?QXdzSmhuUTRSTEJ1Y1MxU0ZuMHlzcTMrVWVDQWJJV052MUowMzcvdm1NMnZk?=
 =?utf-8?B?QVltVFpqN3hjY2lsVnhOb3pxdUlKSGxGc1BoN244bW1oTllaMndiYU0raDlt?=
 =?utf-8?B?cjF1alY4cllrS0NXTG55S1NrUndrRk1XUzJFZ1lESk5oVXBDWlQ5U1FUK1pG?=
 =?utf-8?B?WW1oMFIrbzZ6SndGOGdxOXhmZWpaK2ZkQkVOK3N4T3Z5RUgycDI4UlNmemp1?=
 =?utf-8?B?RTQ3aHVEVTdWcFp2a3JZWm1LZFJJbTVSTGFQN1BUYVVjOUVzNkx2b0N4TUJK?=
 =?utf-8?B?M2NmZXhIeG1VTzZtS2NFblFZZ1Z5T05lWUdhOVJKTkFwamNUT2plRncwL0hF?=
 =?utf-8?B?eU1zc3dPVGJVT2k5WkIzSVBPblBrM1hUbmlCSlJtQUFucy9zaXhodExPVFdQ?=
 =?utf-8?B?cFRsczVZUVUzc2ovZEtVdThuVzJJbVhQY1ZMOWhwVkFDZDYwVUpLTXNhbE5t?=
 =?utf-8?B?ZGZDbEZicWo1ek1TVXZKeS9iRWhPSWhiZ2VER0xVRU1wd0xOcFlvOHRMRTg4?=
 =?utf-8?B?SjNKKy9TMWZ4cEF4UXpTSjNoTXBDTHF5MkZxTW5SUEJya0o0SjNiT2JmU1BH?=
 =?utf-8?B?UitkUmZieFE0Rlgyek4relpjd0MvOXhOK2ZTK2psYUFVa0JCcmdkUXZZQ240?=
 =?utf-8?B?VUVzOExqQTU4KzIwVExGU0VBQi90ak00dnRnRnZTdHduSWRGbzBwd3NObGsy?=
 =?utf-8?B?a2RYWW5jTHpwY0ZCZXRQdUdEbVRPMnVZRnpveG50aW9aZXpIZ2YweisrQm5y?=
 =?utf-8?Q?3wvnRJI5gGknpDpxpnVnE/6vrYyXeB3qG9WM1kF?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6650c33-78b8-4b64-e72f-08d91c63e029
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2021 14:22:33.6559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p3RqM0YT8Im7uzcQ9tInzsPkD9B+9y1yxnmFnD+9QrInVHFHgg+5nPittWz3SoaFSktR8mcdyF35TZsOoTSBHpmX6x7uPR3/DBN4p5lyt+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3685
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/kms_big_fb: Wait for
 vblank before collecting CRC
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Juha-Pekka

We are seeing the CRC failures on Jasperlake systems. Sometimes the test passes and sometimes it fails throwing CRC error.

Regards
Vidya

-----Original Message-----
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> 
Sent: Friday, May 21, 2021 5:00 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; igt-dev@lists.freedesktop.org
Cc: Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [igt-dev] [PATCH i-g-t] tests/kms_big_fb: Wait for vblank before collecting CRC

Hi Vidya,

on which machines this would help? I see there's many vblanks already being waited. There's igt_display_commit2 which probably will block and even if it didn't there's igt_pipe_crc_collect_crc(..) where crc calculation is started after flip and then get one crc before disabling crc counting again.

/Juha-Pekka

On 21.5.2021 7.08, Vidya Srinivas wrote:
> Without wait for vblank, CRC mismatch is seen between big and small 
> CRC on few systems
> 
> Change-Id: I3bec931aa901130997e693ac1cacf389e2a8100f
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>   tests/kms_big_fb.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c index 
> b2027b6b9d1b..7d78ff829d41 100644
> --- a/tests/kms_big_fb.c
> +++ b/tests/kms_big_fb.c
> @@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
>   static bool test_plane(data_t *data)
>   {
>   	igt_plane_t *plane = data->plane;
> +	igt_display_t *display = &data->display;
>   	struct igt_fb *small_fb = &data->small_fb;
>   	struct igt_fb *big_fb = &data->big_fb;
>   	int w = data->big_fb_width - small_fb->width; @@ -337,16 +338,17 @@ 
> static bool test_plane(data_t *data)
>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
>   
> -
> +		igt_wait_for_vblank(data->drm_fd, 
> +display->pipes[data->pipe].crtc_offset);
>   		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
>   
>   		igt_plane_set_fb(plane, big_fb);
>   		igt_fb_set_position(big_fb, plane, x, y);
>   		igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
> +
>   		igt_plane_set_size(plane, data->width, data->height);
>   		igt_display_commit2(&data->display, data->display.is_atomic ?
>   				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
> -
> +		igt_wait_for_vblank(data->drm_fd, 
> +display->pipes[data->pipe].crtc_offset);
>   		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
>   
>   		igt_plane_set_fb(plane, NULL);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
