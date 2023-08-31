Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8985678F08F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 17:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B317F10E6A0;
	Thu, 31 Aug 2023 15:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE60910E0BB;
 Thu, 31 Aug 2023 15:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693496839; x=1725032839;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qITV9U2R7/k8DUh7XoC5w1k7CNiF4kuJRxHRyCDqc+g=;
 b=VVaYAe/NjwtAPauBLn0OrxOwZo47JOcmeqyp9lIBb8Nai7SXrhgDQy4x
 cur5dwVCmtM2FsGzVbaB8gjeO05Z+kSmyVf7xhOte/9oI4y3zqZ7WjxeC
 PoAMuwVKlMsL8tvWtWoqZhTY8s8qU8EDk4Kj1LwmhxOKcxSakF5RsySrv
 IviHZa62gayTmWoh1C4nHtHQQyGt+yCvsOg4dgHQTpToYCrQN3v0LUgr+
 ispT3UqNu+NMfqeJwLlaHC/lexsT6HnersgyG7vF+vVM00NjvHkmOsOB9
 gXa9vDxt/7Q9xbMvIO8ZLVc18S2/KTDWa1oX1M1zdZzwe4c5AT+WSJnMI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="462347525"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="462347525"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 08:46:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="913333692"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="913333692"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 08:46:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 08:46:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 08:46:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 08:46:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 08:46:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gRw5FXfLUzMTz4DirM2vAfbSv+oKB3bsohEkRN0JNnqNvphz1HeKS/KEk+G2rHlz5k/A9+H/pLF4g+EEhUAwOaxMrFnu++ECvfQahsDGQkcbhEIOYZLRGQMkh6W+BKehsFRDL92iGA1z+OVfckg+8dGNtZpGX+/AC1hk5ZdTYTHkwhZHAFu+ulzJXm9TMEDVEKNbkCzPekdbXxI+08lMSXKUOD8gc6ZUbgEo/CCWIHHeplzpN0Euq8DvQFmFXKMcLPqH8eSM5g50ibZXLOGagqjdPKh3QBTOf3VDmofTEOatMJyJ28U5PH+mbpFodClCXgvSD9VWVLOiFrEcYpwFjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kqAyuSw+UDFzAdEKANIwGZG6dHtrNQXCNOwC3r6h374=;
 b=VRvCC2sr5v1c9s+NtKmuE8/Hqdh4ui752SqIFzT29UW6QHMcrzHOXZEZnzKJi/FthpV6etgnowb4RJorX2TYXuiaofOS/xq2lY/tUsrNGANddrpQdeIEsLRhLybKoLqS4yq844E7+G0l3kml1G/gIqlFmqnHSYS4pHvhr+IAPAcLi/oAF0kf4dsbHWDzFduze2V33yfSyVWN6peEE3LlAObcSDnrgP0D84ucCdBXFPjLyqGJyMEJ0o5/ybT1eoNXCy4LI5YIyqjRVJdIqcaT76quntTGwQ7X48thpyQuRrX8uQWrXy8OTOE9GKlYL+F+w/d9PkXAKwg143OGsbeadg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 15:46:38 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6745.021; Thu, 31 Aug 2023
 15:46:38 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] tests/i915_pm_freq_api: Test s2idle instead of S3
Thread-Index: AQHZ25uBE1FgKiLZc0KOitxd3HBxZLAEjUDA
Date: Thu, 31 Aug 2023 15:46:38 +0000
Message-ID: <CY5PR11MB62114B3D39F4994E692E49D695E5A@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230830233836.477940-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20230830233836.477940-1-vinay.belgaumkar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CO1PR11MB5123:EE_
x-ms-office365-filtering-correlation-id: 699ed9aa-7a97-49f8-e411-08dbaa3976b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mHXRkGGF7Rarr5sKUp6HF3Z5nHUngRyCrbNRfNK6XAXmL0Kk9A7vUfeJBz6fva9I15pwHqd8rtZXfFE3phY1gIciUH+owjBSzTAKlFvLfNVFnVI4KVACeIQcdB0RTw3MLyd0DQMIIjLALidUdCYN+Qg5jbYcCb8qUSEnBQquHAuyNw4u+OXq8txA8ZgpFP7WeDnfbATRhm0Wo1cFzV5QLaJVjqmii0IYNgQj9t2+XV7M0A1PcpXI8tYbk9Y5JKxFI+wEGSBy9d3fGi4DTcfFRbk6nSpFGLiVyAJqnP0J3KsaghBA0YS7i+agkAx5JzDLWUfFLp2C0Y6UFUfaWBJP68cmjUdkc6H7XMoYkZ0TxHANmeWIUdEGvbQpwWKAtlKCTuoOCnZVn2GpL4I3AbKZ+J5hdC+0mVMdEtdkUJn9edGc1RI1HdeIb9UkIi1ms4SG81HDqdsH0+46DFHQjwZX26q3SR1gP98XHYEBbja1cnoLHHAYffB1CrvXDGJhbmIBCrdCjNl9smeCV+XAuN6KX0fjM9qcu5pvZXOuxbe+LscRjCbNMftNSp+hL82yPo/P3CJ0wzJvI9W7AaWXaFn/PiMUU1qQ2MEvTdzPr+fNOYdRKKtOQHDNrMdx3P+JLx+Q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(39860400002)(396003)(366004)(1800799009)(451199024)(186009)(9686003)(7696005)(71200400001)(6506007)(86362001)(33656002)(38100700002)(38070700005)(82960400001)(55016003)(122000001)(478600001)(110136005)(53546011)(64756008)(26005)(83380400001)(5660300002)(8936002)(450100002)(76116006)(52536014)(2906002)(66556008)(66946007)(316002)(66446008)(41300700001)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nBJFmNGoCVNsgwOiB3fa95tS1e2gdENwzr8zRAcq0IVf03nS2zlARbWJzYpY?=
 =?us-ascii?Q?IZbJGFreXTEMlialB13V2x3O2KCepiuHJ9ApYza/K6sqWpEwJhKosUaV1s7X?=
 =?us-ascii?Q?iR1ED9NhG6U1e/DO6iNgHjP603euolIe4Kw6I/x4zldEnHb7sS8R+MImR1qg?=
 =?us-ascii?Q?jA/+J2g763hnTzZwEOmQejoVAAtsSRPKAXgw47lNirjSx5ZP+Q/bJlsILELY?=
 =?us-ascii?Q?kNRpauCMbHCd47ZCeNs5TjqQX7xX3LxBeH6KoDxW4SqvAkzRQlk7ULFMQU8k?=
 =?us-ascii?Q?silMwtjYR1ZvAraqXFSG+KCb2Mv7wD7iYFBmC8kQCBk4ns7gpWQHXMiS/VMp?=
 =?us-ascii?Q?c7akC/29xq++DujyCUxckTy5aE22brzPfPsifQCWD6FPfFrXbnayRjf6702W?=
 =?us-ascii?Q?qECrVKJqjlnMUr/51NuJGxGvhXQwNZhk2vJHQkh/3//gWFF2vyAJlYcBTvPp?=
 =?us-ascii?Q?AW0sw3Yu3M+ky9JAk3GRmumFeDABXs07G8dZUAtFVwOVoRsjx+uAW2RS/Wom?=
 =?us-ascii?Q?/YisQuoB1p0XAWU/nEtoANvox+SkPcGp871oYz1pYZpt0+4Hei6Np2MAdUw1?=
 =?us-ascii?Q?t3GjQEbXtKuYXEwUJiPUHERNOKxmASdH2Q3uMOW6D9p0TZAbRHMnzy9pS6zY?=
 =?us-ascii?Q?TyRC32pNGHpwLoIIObbBaI78v9k09AZg8Srt68vTGanwjFVu6ZsgMt4D8CNo?=
 =?us-ascii?Q?OKUfuMW1Ebl+d48BEZT5bCNk/cWglyUBEc7srXk9HItC1upldVlXvIFcQBY+?=
 =?us-ascii?Q?GwnOsehVmrYeP5u5pUnG981R2RlspT1RjyqXZJ+rn1Ge2XakqcEphZ/R4z+5?=
 =?us-ascii?Q?XUXYgZapC6xhCNK4xnEEpZobtUSBgTISswSK4QF/hXt/jYfT7YxMvIW+C7VJ?=
 =?us-ascii?Q?qrhvnW3LmcjsU2P1ZohNo3LD1REWcSp0qE6/U5ZaxfZKM4SArc90hSBncgbE?=
 =?us-ascii?Q?iaQH5glFgYTtMSntj2z7qqT9YG+3o2Ccuoj/OoQUfyb1xh6W1tgcpLZl9pNT?=
 =?us-ascii?Q?bjrKMSFcW9TIz1TYdq130tuy7jPtWSd6cLWj4B5lXFKrbD3bHM0OnEmYQdZL?=
 =?us-ascii?Q?mkEH1No0xI/nuJB9fbd66nbEMiDqO5ZYVdE4WDR8TyymWcHlFjre0iMmtPro?=
 =?us-ascii?Q?Rs/2l4HA+OfGJoabvmtUGvMftDYgDkqaV6qY3HbJnugBdJD0mBdhSGxT0WVU?=
 =?us-ascii?Q?cFSvpDYv34zwI4c2zjCOqixeeZ8DE5XGs5j9y/YOtzlqEkkyVk5PTpMIX3OT?=
 =?us-ascii?Q?Qu6CbenecblBj5GsG1+dZ7C27Bw3gfkIPSNc1ZLWCiKKB/7kfVWAK5ooaGfR?=
 =?us-ascii?Q?1VcIKUPrsZ2vycg3gDQdA7Q8IBGRIkO/QJa8rmjPviJ5tYQf4IAYfPX47PNo?=
 =?us-ascii?Q?Y03CMWBo57IyszQ3pg8zql1k+fSM/BNZjzeDgN717CC163lJRJ080lslwzfH?=
 =?us-ascii?Q?2qOZ2di8Ry6hEhqRIzzZHsqfxb2hFel3hjrmkIHw4wM67UKgrRtE2uq367Uk?=
 =?us-ascii?Q?iSZVhZXh40cOhAQkMeFP4zpt1P+TilbIrJMSnB0vZRw0fsQ7gaLzDvLExiqd?=
 =?us-ascii?Q?gAh7PhrhFeYBQ770VRqM27h2NeRO+zdUOy6NPUCa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 699ed9aa-7a97-49f8-e411-08dbaa3976b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 15:46:38.3972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HWCgG4BoaI2WqIxSIrN+XRPe3aFqngJ76BFkMci7LrCr7D4STjt4DCjKUd+qmu0irHl94d11Y1p9OHKYbeZu2sT0zHQ9o3HNWkM4OIumX4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Test s2idle
 instead of S3
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



> -----Original Message-----
> From: Belgaumkar, Vinay <vinay.belgaumkar@intel.com>
> Sent: Thursday, August 31, 2023 5:09 AM
> To: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org
> Cc: Belgaumkar, Vinay <vinay.belgaumkar@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Subject: [PATCH i-g-t] tests/i915_pm_freq_api: Test s2idle instead of S3
>=20
> Test skips whenever S3 is not supported, use s2idle instead, which is wid=
ely
> enabled.
>=20
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  tests/i915/i915_pm_freq_api.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.=
c
> index 2912287c4..03bd0d05b 100644
> --- a/tests/i915/i915_pm_freq_api.c
> +++ b/tests/i915/i915_pm_freq_api.c
> @@ -125,7 +125,7 @@ static void test_suspend(int i915, int dirfd, int gt)
>  		igt_assert_eq(req_freq, rpn);
>=20
>  	/* Manually trigger a suspend */
> -	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
> +	igt_system_suspend_autoresume(SUSPEND_STATE_FREEZE,
>  				      SUSPEND_TEST_NONE);
>=20
>  	req_freq =3D get_freq(dirfd, RPS_CUR_FREQ_MHZ);
> --
> 2.38.1

