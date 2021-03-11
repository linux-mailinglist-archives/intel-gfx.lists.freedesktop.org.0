Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E904A33706B
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 11:47:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377886EB87;
	Thu, 11 Mar 2021 10:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930AE6EB87
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 10:47:29 +0000 (UTC)
IronPort-SDR: pnSXSPGKpPLDpIzUxzWjizGTb06oGhS01DkmPkfYfQIz/93BszbJCgwWCmi7ejHUsW/I0ge8Cr
 y5FjZk8ChBdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252665047"
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="252665047"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 02:47:28 -0800
IronPort-SDR: tDfMXpYLsMnpOIEygWyY/+t3u07X2ouAT4RgiqlLhDZMks8EijhgKxiiWIpQ1C01MSPRzW5C4m
 GrMS2hLUl+Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="370519102"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2021 02:47:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Mar 2021 02:47:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 11 Mar 2021 02:47:28 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 11 Mar 2021 02:47:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OEq4WoSMCLFRVXG+W2KgQuxWBH8Ikny7Dr+ZsYpWRECAdceRoatVQ2SPNFLRRoPX64jkTBksHrCMp3Xvyk05aCoBGPkdEZf3c+F7kE4eCBPmuVggG4iPj+nCMCyAgh3OuoRav2O7rj3CrXvQKkAL1KHIrR6sbEQMlrzzJqjIaLS6kZ/MEXCmE077LQkfqflQXzREgojMAZ+MQegQk5XrVvy1wTv9u+Db76dBcIanEzM7ijDwB3J7WBpc8mG6i8h07ZTK2i8AFVDFIAXkgQ3V57G9VbjvqfAKHSMy+tCqQYSsPuWq9+E59ef9Q4runLd81irJCsG+YwQBJoeWJKI04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zYSx3rJAZ1rWzFYWBuXVRStL7uXHZupPt6MWo73eSX8=;
 b=ZTnDgRhJ8QHqGbIa23jLN6by6K6Hosj6b84shrJsZjXRx3gEA1hfar1KnktbSB9rNiZzp0n+mlS0IqpTrRiAF4zIwZeqa5rqV4jEWS5JOh4ip5Zf4xjy/q5hI+qasmyrCwycVT7RLxoMD+BZ7Wc7EFJzZRV7aXIytUIaPDF2dfE9QGCILaGeD9c+VNxmfBkJdD8YVfvgzl/lFOa3aVPtMVxzLreVvYOB2UwK+qS1gfORNnJcaVH0CRz9LbXHrAKuXbcWaT7HW/hZr/ik/Y9lVXGvRHWcelZNOkPNYAuksYZbLx254RLQ5fbHdh7M7MjidBIZ65ivbjhfPsEDmTmvbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zYSx3rJAZ1rWzFYWBuXVRStL7uXHZupPt6MWo73eSX8=;
 b=gIfs0Ii6gwAf7eCf0lwnWB+yMXfP4nkyq7Jc+CD5ct+JtQFxTlEO8u5ZeDVWrWdspuMHpcEDFmOCwqPXaB4U3CqFzBpty7ev3IwntWIiqGGg5MftcHde42i16egk/A7tUAinOX9IPUX+ajy25Ll5g+WXe/odSqR6kg9AwvTFKzU=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB2688.namprd11.prod.outlook.com (2603:10b6:805:57::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.23; Thu, 11 Mar
 2021 10:47:25 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3912.030; Thu, 11 Mar 2021
 10:47:25 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXDy9TNUpQng5a8UOTNIkE1rTbjqpzjp4AgAAB8gCAACvUAIAA2R2AgACOaACAADGngIAAMJ3wgAAM94CABMGLcIACupMAgADfRKCAALElgIAACK2Q
Date: Thu, 11 Mar 2021 10:47:25 +0000
Message-ID: <SA2PR11MB4969660BB1C1F95D95E1C5369D909@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
 <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
 <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>
 <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
 <SA2PR11MB496960ABA0D7C5E2A53A2C099D939@SA2PR11MB4969.namprd11.prod.outlook.com>
 <928454d4-8ae6-9b02-747f-fecdcc1e6ac4@linux.intel.com>
 <SA2PR11MB496973C319344297FFECD50F9D909@SA2PR11MB4969.namprd11.prod.outlook.com>
 <d1489273-e092-0cff-d406-0a94bb7782bc@linux.intel.com>
In-Reply-To: <d1489273-e092-0cff-d406-0a94bb7782bc@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2eb01d2f-92d5-4727-f65e-08d8e47b0efa
x-ms-traffictypediagnostic: SN6PR11MB2688:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2688876FA33CEC741DA1A4409D909@SN6PR11MB2688.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IiCgJdt78FHnNKwQZvLrwOWjw2deELfwc8qDLbe6+pdzf2NL+ob5dSGJ9PkCdsJLXoZUWXScDewDtONt3WthEUb2uNTzAL/pOAyMIkAffscwlGgHyHYCI7PJ2AgIJk9H49X607Qi9ZhGICyRNtldgepCWXPATMt5Vc9Jmom57eT7dZIo/NXR00y7tEAUCgW4SCfg9GhrGIYCtIcq2GKtNeskmbONx8NKYkpeJQMNrBIK+EWEk1J6+XDpQxMe2Bct6eRhbE8jSsVU5McZe8dUD0D0c/y2z4ULQwKC3DFXm7c+E5iG7vUSrV7/QU1A6Xkc4l6EkDqJ0IiuzFDm89L4hK9nxNiMMxbD4+gm9RDs9EZOYi8Vjhea9JShA9YQK/do0cnAN6ym2rD4Qo7SqFDm8gk62z5UwyfWmPRtl3rpJtYkqFM5GbqCjxQtmHFEyfx5lUsE8gsiyqrAcnr5nvICD1tUjvPKBAERBvngDOGrLfPuxMxxTr49iqvcYEqD1OCSwQQq055qysFqmnUO4Thy7fk/0qK1MoNXB2Nsw48M2qlkAfUU73HnFUykuFrG0yzLGNzFSFXwuKj7mWvo7AcpSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(376002)(396003)(366004)(346002)(39860400002)(136003)(71200400001)(55016002)(86362001)(316002)(76116006)(2906002)(66476007)(54906003)(66446008)(64756008)(110136005)(9686003)(52536014)(66946007)(66556008)(7696005)(6506007)(33656002)(83380400001)(8936002)(186003)(26005)(8676002)(5660300002)(478600001)(4326008)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?MWlNWHhHMGhPYWpPRVdvSGY3N2xxSG1NWHdwVGZwOWtudWJLcHpZOWd5QWQz?=
 =?utf-8?B?Y3hiUTVZVGNWY3N3YlhjRUZyaDVKdzkrdkhlRjVMM0VuTzl0cUNSdHhXMHQr?=
 =?utf-8?B?eEFTZnBVQys1RHpiRW4xd3VBYWNZUnBLdGVKYkRTV0ROVlFHcW43QzRIU3JW?=
 =?utf-8?B?UkJJU2dML2FNUEdXWjZ2OWxUaFVBZms1LzBrS0RFU3ZzMlB0TUdWbElTUHRv?=
 =?utf-8?B?dS9sZnNLd2VrRUsvVkxiRCtiM2xvd3NZNVVERlNPU0R1TVg1Vi9HUWhjMFVp?=
 =?utf-8?B?amt1VjhnZStOZGZtU0FEMWw0VTEvb3FKOUFtVHhXbU45V2FkUFlwTFNlQXhB?=
 =?utf-8?B?LzM4QnZ4Q0pteUpYTzB1d1RqdUJjaGZZeXluTVFnNnRWeGcybkgwdFB3MzVU?=
 =?utf-8?B?SE96Q0h3K0U2RUlCajRGdTNoNmpxWG9EZXN6RHBZK3R6V0cvRlBUeVBHMEho?=
 =?utf-8?B?RzNjc2lLVVNzU0NUK3BmL0RWanRwdlRsL3hLUVhWbUM1TDJhenZIWVFoNXJ3?=
 =?utf-8?B?T2lyWUhXYnNJNWk5S1lHMHQyRnBqdUFCc09uSXRyOGI4Q2NkWTFXNnRpWFdh?=
 =?utf-8?B?RlkxUUJJT1QyWk1VMkc4QjhJdDN1RXBwREFjUGlaa0pwSk0wWWR2Um1DcktO?=
 =?utf-8?B?bjBudGRCT1NJZnNqMDFKeGNidEhPbWhNMFdMS0pBQy8veWgxM2VsZzNjQ0Nt?=
 =?utf-8?B?OXZ2VlVtODVuSmgzMGpnb0cvaXJvdTdLd3ZDL0NnVld5UnQ4ZFVPY3BwUElQ?=
 =?utf-8?B?U3g3YWNic0FwMEdIQ3FrN1pCdmEyTk1CdjNEZjU1WlNmK2cwWWpOWTh5WVYx?=
 =?utf-8?B?TkY2THJhalFCc2xKdGZTbVpJUk5yU0ZGM3A0Q290QkxwbTVxcCtmYmZrcnd5?=
 =?utf-8?B?YURsb3BsLzNsWFdtYXFWRUdVZ1d5bjRuNG1pYURSRzFncUZFRzVHTDlGV01q?=
 =?utf-8?B?SmlnTlVPZm9rZ3VLVVVBclk4V2p1QVpjTDBNdkNHMVdaMW85cVFacFJPbVhm?=
 =?utf-8?B?SCtkRzdac2Zvam9pSU1FT1Vwcmk0dkRiMFB6L00zMXhlZzVJN2E3ckoxczJm?=
 =?utf-8?B?cU02dG9DL1M5TEx1N0RkNlBMOXpKMVdzRktlQ01sZi9JK0ExSzN3YU01ZHZH?=
 =?utf-8?B?SDJxcDRkdExaYUl2aEN5RHhRa2JtdVVMRllIazNQNk9aUVlENy96UVQzSXV4?=
 =?utf-8?B?S1AybHdqRFg4WUVtMzJWWUErRFkwcjRMcUsyUEhXZFlhK2diWVlYYkJtVWxI?=
 =?utf-8?B?Z0pLWi95b00rTE10VFJmR2pCSEN2SjNEKy8yQ1FkTytFSlA2dVNRRnB5VlZ5?=
 =?utf-8?B?T3FYbHFYVkJiTnI1WTVGTVl0Vm8zRGwrSWFFT3VGbTdscndEZUE4bE9CWnFP?=
 =?utf-8?B?MlFXdE8xVmJUaFo3WUtIckp0Y1N5VDRjOGlFNEhzM05qaFRQY1NyUkRwWjg2?=
 =?utf-8?B?b0Rhc0duNXJPb0hHcDBqMStkekJVODVvNVFpWWtrZzlmeGI5S3RPUlpUTWhV?=
 =?utf-8?B?ZW1NT0RIWXZWNlZpQUp4K0dwTm1hTHJXN1lEUTNUYjFRKzIyKzA5enBMWmRG?=
 =?utf-8?B?b25udmo5cnZlWVRSTVVLZDU2bTZWcmNRRjg2ci9uRDBHVHJyL0k3U2hSdG9V?=
 =?utf-8?B?d0FJUjZyRjZxVEZVSHRMdkl3ZHUwVjRxRzZJOG14N0tsZGtNc3ZrVklXZ3JS?=
 =?utf-8?B?azlTNUNYSFBFcGFvYkNzaWNPSDkvMTUrVmNKY0VNUE5oODBwWFlWNVZZWTRK?=
 =?utf-8?Q?nr6mbnDBkWRkfjH7LuL6WcUcgH/MP7i4FW5VokV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eb01d2f-92d5-4727-f65e-08d8e47b0efa
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2021 10:47:25.5427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5fxWYxUoJmbbPZUoD9tUTMQyKZemWCSNb/fOGZAm/RzxhbkRiH2ErCnOEqGo/sopriRed8EcFoNFkwE+vNhywg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2688
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Chen,
 Rong A" <rong.a.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> I was referring to the original performance regression report which came
> from LKP which was on "i7-7567U" so Kabylake. Can yo find such machine to
> test on?
[Chiou, Cooper] Yes, lkp-tests team has tested this patch on lkp-kbl-nuc1 (KBL i7-7567U) as the following mail thread and there is no performance regression per their confirmed.
From: Chen, Rong A <rong.a.chen@intel.com>
Sent: Thursday, March 4, 2021 9:56 PM
Hi Cooper,

There's no regression with this patch:

d912096c40cdc drm/i915: Enable
WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
f69d02e37a856 Merge tag 'misc-5.12-2021-03-02' of git://git.kernel.dk/linux-block

f69d02e37a85645a  d912096c40cdc3bc9364966971  testcase/testparams/testbox
----------------  --------------------------  ---------------------------
          %stddev      change         %stddev
              \          |                \
      29.79                       29.67 
phoronix-test-suite/performance-true-Fullscreen-Ultimate-1-Gran_Paradiso_Island__Approxima-supertuxkart-1.5.2-ucode=0xde/lkp-kbl-nuc1
      29.79                       29.67        GEO-MEAN 
phoronix-test-suite.supertuxkart.1280x1024.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
