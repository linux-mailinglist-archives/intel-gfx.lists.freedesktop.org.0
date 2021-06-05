Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D97239C615
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 07:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF5B6E854;
	Sat,  5 Jun 2021 05:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 988DA6E853;
 Sat,  5 Jun 2021 05:46:58 +0000 (UTC)
IronPort-SDR: iH3f2/qpXRbGIrcVVbAUWORikV5sGtAfXxUg5meXK5H54qpNnTqgyCh+wsHQ0AIRuO7nsUTAcH
 XkqdFOJ5+IaA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="204440731"
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="204440731"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 22:46:58 -0700
IronPort-SDR: 7kMZH/oC0oURB9MNxyoLNfu7XtGHl7ZapMoj0xUJouzB6jqoRmA3sWULH6m9iRo8Kfl54+c50u
 ZSPI0jXkxS4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,250,1616482800"; d="scan'208";a="401165410"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2021 22:46:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 22:46:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 4 Jun 2021 22:46:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 4 Jun 2021 22:46:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VDX413+oiEX86oETAValkLD6Q6jbzsUcR8FH0DgZ7NPGyWfZ4dDLSbgvPzQiTwTLLqMgWT2Wq9Kxmnq5U8FMUt52b/I3SSGU8YWmcUhXPTPXT4NRRyXA0gqoUOc5hpEUL9fImYVXHns+UE4OsVJ20Fl7G2f/96jidzCbszbmpO/1agAE3dJ01owZ6j6WmL4PTexfk+ctvVyeD40+xEz81+N2qkp5icbWyDo+iplG0lR4YB1zGp81CdJxA+Xjt0aHlLowJs9GaTDCy/E6s5ZWQhLVjlfYzSBzF6ZHGYstq4cPQB7wfmjvx5suF7cbkDZO1jltk8EKBHgcKNckDwydvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3ycboIr2Fd/vEDQLvRPz11EUYexF+rlDZSXUNeZSw0=;
 b=L2H6qBq7F3ljfM+Q118wPL+ldQF2fqmKPJOFE+j9xhiLb/azfF/fceNKTBp2viXsERyLp0cgFU/jAI04TK2Uw5jUU99Vo/8U4vNFu9zquqkFcXJ01U0uSc5HYZE3WqYhGez1Ue9uqCXZ51MI7Hkyr7hKiqy4t8OCJnzTU8KJ04w9psteVygHFj0z2aQDppcuG71+AwYzCC1OULXOOWL5VJz3EyWQ7CzlTv2HAGcocbqg0MFgiTQRwLdsRXrt5LMhSsytS3VtlEApg+x0YdYxy3AkjkzOhrXjJ5QBSCBn5P0Tul4DoEOC73AKD705AJYW5czZxOk7PiiK8Ljtm7F2jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a3ycboIr2Fd/vEDQLvRPz11EUYexF+rlDZSXUNeZSw0=;
 b=x2LJFt5je8DlqS7Wc/vHDAXPt4gcokF4aYa+DJSkb4/Bvvo+tSsmP+Fc+DDLyo9nLyli79hx1dBQrNHxE8I+E/D2c8Re0x9DQcKg8Nhv5gZxaLBeFovnegaU5hf6pL64IgOfFlfpJ6y+d9rDZEy57ByyTrBh7cvjhrb589+X2og=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4402.namprd11.prod.outlook.com (2603:10b6:a03:1c9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.26; Sat, 5 Jun
 2021 05:46:55 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.024; Sat, 5 Jun 2021
 05:46:55 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Mark Yacoub <markyacoub@chromium.org>
Thread-Topic: [PATCH i-g-t] [RFC] tests/drm_read: Fix subtest invalid-buffer
Thread-Index: AQHXU3vIkT7N7VppbU+WMWYWno0TBKsEO+QAgAC5gGA=
Date: Sat, 5 Jun 2021 05:46:55 +0000
Message-ID: <BY5PR11MB4372AD9AACA7DDF226FD4797893A9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176367-12608-1-git-send-email-vidya.srinivas@intel.com>
 <CAJUqKUovbY4fT8wgeDfU+OoD4S-oBbSG80gn-BdFxGGc1GYo9A@mail.gmail.com>
In-Reply-To: <CAJUqKUovbY4fT8wgeDfU+OoD4S-oBbSG80gn-BdFxGGc1GYo9A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: chromium.org; dkim=none (message not signed)
 header.d=none;chromium.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75780a13-103f-4fe4-3608-08d927e553fa
x-ms-traffictypediagnostic: BY5PR11MB4402:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4402A10726B0D0877A724CEA893A9@BY5PR11MB4402.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ILnaZOP0Yedn7eMTuVXT+O8ArH3LYPUFgxbs8jD5BLkTGM3qfkJBOHZGkUQQG3EpI7rZUP7k/CkAn9qP6DvUOb6rzSylgIFbSYsOV7svgn4Vh/WbhpFASnRPZeVdlCDEYbK6OSBnpViWtQgfOfLRxC+V6c0KXsvXfMGe6TLrZW1nu2zw1UDMDVy1BIiB3kBUKc4ipSqZv2V2+KyXMvzDLCljztRSgk2bHjUOMKSpTb0bpTve+ncEUMyimXpTdFQxtNDsmd8Mn3XnVjy3bn8k/VKlRjykElpBKbbnWujrNsnx6m+5QvLyCgvHvQi5ww9UYCW4B/t7TT+CCUIm05saWn67VTRUDg8/Qm6WJqfMgCcaEGZefACfE7IAYoSS/DesxjYw+NeURV/LCaeWQ7np8cJVe2CJMGbzm5Pp86K8bs0Bk9tc0fYU9qf7RJx1T2uQGFFkOpD1c94wMvtosvqCpNoDTIMAfrxkYTJ+ryCP11ZMOSH6nBPyREAEPCa4CsQBMSeUh6HzfwVvMUoVSYp26tKqUVxEse7EbGuMoXpvz6tNi5rFYwmRid7nS1ejGsERE5h/th/QvNstwUD5TfmBS9YDlGl8a5Yxz+pw+7KTs30=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(136003)(346002)(376002)(366004)(396003)(6916009)(186003)(9686003)(5660300002)(6506007)(8676002)(54906003)(4326008)(55016002)(7696005)(316002)(66446008)(66556008)(66476007)(52536014)(26005)(83380400001)(86362001)(53546011)(64756008)(66946007)(71200400001)(33656002)(122000001)(107886003)(38100700002)(76116006)(2906002)(478600001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?eEhibGw1RUNyd0lpVFBleHp4TEhERFU1dlV5SDd3T0s0TFB6YUp2dUpleHdx?=
 =?utf-8?B?bFpuR2VtM1dhSStFand6TkkwOTBqQTk3VVVOYkNraTYvUjBFS2p0MnZWTmt2?=
 =?utf-8?B?L0ExbUJjVkpGQk1vZDYzQzFmL2xMWXk3T1hVN2xybkc0cWMzS2h5SlUzRW5V?=
 =?utf-8?B?ejF1OGxtS28wY3hlbjZuNDVsOXV3ZTFXMzE1OEVUNnFwZWlhM3JzNlBQSVY1?=
 =?utf-8?B?eWUraEQvWXAzNmNESDNyb096SEI0a0JBdUpJRE1rM3I0QXk0Q3dqUHJoc3pJ?=
 =?utf-8?B?QlArSGtYK0VhYndJNjhPNisvUzBWa0pxMkNGWGwwQnpCNmpaUmE5aUxiVm0z?=
 =?utf-8?B?Rmk3M2c5cGM1eFBqNjhEMEhQK2FWOVhjTHR6TzhXZFNmWHc3bml6UXgwdlJp?=
 =?utf-8?B?UXRFclNPcWRCS2RNanpCWXM2Z1k3aFNXTXBnbDRudDVqYmxyUEVlclNiZE94?=
 =?utf-8?B?K291cDM0aHVROTloVk52VEx4UlZxdXBDaXF2bG9jZUlkTTg0OTFFcHRmRnRn?=
 =?utf-8?B?WHJYWDBYc1QxK2xFYUdubm0xSUJvKzcwUTAvMXFSeXhLdjJhQmtROXR2ZUls?=
 =?utf-8?B?aFZ6NC9ZT3IwV1hZelY1Mjk4R3JIM2VucFBieWVjUlE1d2Izd3ZuajVxN091?=
 =?utf-8?B?K1dPRDNmMXhCdDZkcnkxaXhjTVdTNmdLNUtuSjNFWEZYaDdqZE92ZVFTZGtw?=
 =?utf-8?B?eDFXSC9SNEllMko3Z0NON0JVNDlOdFRlUTVvc0o0ajZ1VUgxMWlEaDlVSC8z?=
 =?utf-8?B?MzJyKy9CZ0ZabXhHL1JzMW1PbWZDdUY4V3A4L2srYURpV0lWR1JmdlZEZTc3?=
 =?utf-8?B?Rlk0RVpqa1RBUDJKR09QNlhwQ2VRamtIa3BmRk9LMVFoejJ0VmpaN3pvQmNs?=
 =?utf-8?B?MnpzT24vWkV0M3lWY2MwcWprL1lPQUFJVTRNeUl2dGltL0tVWmhPVzVkSTcr?=
 =?utf-8?B?ZEUwVnZTUGxUSEgwbTdSVjYyc1NSTFc3WlRhYjVuanlkNS9qd3FPVU9HRlhS?=
 =?utf-8?B?ZGRmaFI1d09oaDVqZ242YlR6Y1FzNFJCbUNLWXMzOWlRb0dHMVhUK0FoVk9S?=
 =?utf-8?B?WjR6clBOUHY5THVpRjJFU2V3OVNmUnptY3ZXUGFlZ2dub1IwSU0vbmhYVEw3?=
 =?utf-8?B?bzJrcW50WmwydUkxTTVvRCtxR1lOMXdZSWVYMlE0aWlzdHdqdnJLMHFPMTcy?=
 =?utf-8?B?RERtNThPZDNTa3hWbTVFaTRBejgwWXZuaDFQblRMUlFGRmlqNzM0TFpsdXZX?=
 =?utf-8?B?eUplWTZwZjNFelBoNmNlNEFMQjl0MTh2bXlnellDdzU0elVPRVR6ZzJ1a1F2?=
 =?utf-8?B?Mk1UTStVUGlyRWgvQWFFVmttTmh6TU9ueTUrQ1d1UTAvWlB6OXpxVyt6OXZt?=
 =?utf-8?B?TXM5LzlZeVo4QWpyV09PSlhpS2dNbGFEeTl2cnBDUU9pSmxwbW1lSWFiNGd6?=
 =?utf-8?B?YitUeXp1QWo3UXY3ZmdRcjlEZmdkdUMwdUpnRDdwSEFNY0tnZmlSMkRCQ2pX?=
 =?utf-8?B?Nm8rVVBRVzN6TnVYMmZkUGJlUWRmblpuZGN5bnVYWHpoZFAvYkhXSFNOSlNm?=
 =?utf-8?B?ZEJ0R3RWTHZIbUtyRC95Q2Zaelg3eXVVNDRVYVcyYmhJcFVKNTYzUHIrdGNk?=
 =?utf-8?B?RTBxTEduUGp5bDN6ZU1TR2tKV1R4UTg2T2VzUHpOWnlnUVQ5ejZoZ0tNUjU0?=
 =?utf-8?B?NXNvek56VEE0RjJjQmExaDI3WjE0dTBqc3ZTdW9uYnExRjY3STFjM0ZPMVFv?=
 =?utf-8?Q?a/usVbyd6q/kQqqntLKJf1evXTdlSedemA9fDAf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75780a13-103f-4fe4-3608-08d927e553fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2021 05:46:55.8967 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pgjx0uF7LVNb95g1NjMyAXN6ahe5JsqjmI7b3BEL22qVQAixNHKIzwmCs+s2MjL9l99To9uyBRld27AuI+S6K8Ia8YHjiU/elt97YJhpCY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4402
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] [RFC] tests/drm_read: Fix subtest
 invalid-buffer
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin,
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you very much Mark, for testing the patch and providing the "Tested-by" tag.

Regards
Vidya

-----Original Message-----
From: Mark Yacoub <markyacoub@chromium.org> 
Sent: Saturday, June 5, 2021 12:13 AM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; Almahallawy, Khaled <khaled.almahallawy@intel.com>; Lin, Charlton <charlton.lin@intel.com>
Subject: Re: [PATCH i-g-t] [RFC] tests/drm_read: Fix subtest invalid-buffer

On Fri, May 28, 2021 at 12:41 AM Vidya Srinivas <vidya.srinivas@intel.com> wrote:
>
> Using (void *)-1 directly in read is aborting on chrome systems.
> Following message is seen.
>
> Starting subtest: invalid-buffer
> *** buffer overflow detected ***: terminated Received signal SIGABRT.
> Stack trace:
> Aborted (core dumped)
>
> Patch just adds a pointer variable and uses it in read.
>
Tested on ChromeOS on TGL (Delbin) and JSL (Drawlat)
Tested-by: Mark Yacoub <markyacoub@chromium.org>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/drm_read.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/tests/drm_read.c b/tests/drm_read.c index 
> ccf9d822fd8d..2fdec5be4078 100644
> --- a/tests/drm_read.c
> +++ b/tests/drm_read.c
> @@ -103,10 +103,11 @@ static void teardown(int fd)  static void 
> test_invalid_buffer(int in)  {
>         int fd = setup(in, 0);
> +       void *add = (void *)-1;
>
>         alarm(1);
>
> -       igt_assert_eq(read(fd, (void *)-1, 4096), -1);
> +       igt_assert_eq(read(fd, add, 4096), -1);
>         igt_assert_eq(errno, EFAULT);
>
>         teardown(fd);
> --
> 2.7.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
