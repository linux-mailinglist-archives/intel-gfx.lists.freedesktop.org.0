Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC56C8B0047
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 05:59:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0D810F424;
	Wed, 24 Apr 2024 03:59:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jQpfJYaz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3902C10F424
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 03:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713931151; x=1745467151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mhNQ66YndT5Y8kvMsL/Xg11fLYu8IDdWvxWUhM917zo=;
 b=jQpfJYazQXHZQiIWoKMrd+PUqOkn3hFUgZqPfQRhHAPsl9yd6FYWLfWp
 UKRPJJP+1EkicnKCZkmedgC36xBfGNJTrIn135Ha1KfC1delLbBAYL+HL
 K7RQKAZj+Xt2f6fUOOqD8DgGACECxq/Dh2w3/JbpqWmWFIevWiqOPcGex
 RChtnkSBl1599YcO3RxEArlp9UJ2hhpusvC0YefBhDN8X6o2S4H1Tio88
 D16FQb1cshy6EcJlOySaRLEu8vA8n5Y/LW83zM1AyVaUsVmgPJvS+KKlJ
 msCadx4I3kEDMP6rZqot2wRT2Fot2JDStIMBcwkMPRnE5gaSvtsB1BRVW A==;
X-CSE-ConnectionGUID: EUlvj01TScWccnECXg+BqA==
X-CSE-MsgGUID: 5ZBWsXtTRwWFPTPMRaRdAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9468847"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; 
   d="scan'208";a="9468847"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 20:59:11 -0700
X-CSE-ConnectionGUID: L/qqnNbvRuWvkywVAFY/5w==
X-CSE-MsgGUID: /pjkQLfnQxaKW1pIWnc2uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="24619888"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Apr 2024 20:59:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Apr 2024 20:59:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Apr 2024 20:59:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Apr 2024 20:58:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dgXMW6HQrv3u2GOdyToFybTMbbgV4zzjy1tn+nDjl798aBgIlmgHOF0IHvvxq3HRl906Kdk5ynrON1CmwPMPc+iBzPjFaZHSyFcUALK+D/O+PCjK2WPDgnLcOySEQKkDXSkjx02awn9Ego1PW7OjtUeUrUagzg0JNFZa9NyXovNw5pxCkCAuma7qxluZehwzUDuNxkcJEF8Bj7PwNBdupNJaW76u5WrHz+DFfxDgUo/k+59dh3BXk0OW4OHPNsr7ZrIY2AWgcbONRpqNt55EoIQ0yF2MTwUc1MAKz/lSjqUmo7Ql6xId+hWE6e7g5vHlo+wp2KB+kKvNTXAScPYsSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5KaTGiyJgEzA75V6P4fHmL+D45Tat89gWSkhGenuC4=;
 b=hcoY08OdzFB1bnXoqeA/gpZv6Bw5rOjnwhnfg1qVaHoio2SCxJLxhL08q7R6ZP8lO3uNP0OiQZFaJ0qQoVdanhQ/FzfmgImNP84hIyiqvf1dBZvVNzsmZow2lL/5WbFCBQvjO8imS0KPcaqUmLAyk8hO/5Od1keVTot2D21GION0vZ4nMmPALTJXLM8uj2rrP2e03azXx+2f4T45BeuqaIL3OWBF3/kklbh5TCaj/TFpT2oZ8EVg8MxDFvz8VDR4yUJliDJ607hIwY5PaQRDVnTqqZ+JR9cjp7nvVhQQuHIaTCXKdws2So5K1P4YGVUcG7+UzRCYJlbx4b64SbXPPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA2PR11MB4874.namprd11.prod.outlook.com (2603:10b6:806:f9::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Wed, 24 Apr
 2024 03:58:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7519.018; Wed, 24 Apr 2024
 03:58:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Sebastian Wick <sebastian.wick@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Murthy, Arun R" <arun.r.murthy@intel.com>, "Kumar, Naveen1"
 <naveen1.kumar@intel.com>
Subject: RE: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Topic: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
Thread-Index: AQHalcRCURx7fXhZhkaqNBmMqdfghbF2xMnw
Date: Wed, 24 Apr 2024 03:58:42 +0000
Message-ID: <SN7PR11MB6750052CC3E4F6481F8F1093E3102@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240422033256.713902-6-suraj.kandpal@intel.com>
 <20240423212129.GA99376@toolbox>
In-Reply-To: <20240423212129.GA99376@toolbox>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA2PR11MB4874:EE_
x-ms-office365-filtering-correlation-id: bbd74906-e02a-4164-8aea-08dc6412d4f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?9dyiUjs9A3r3goeXXxgBe292GkriikqLjYUN7ukrwvWVCr0fNHCO2CJ3x61K?=
 =?us-ascii?Q?7IiF9wnJ+i+0PIvsdgFiR0BNsrhCbVEG7Nv0h81jt3QE1o0BPoAEcRPjc2gM?=
 =?us-ascii?Q?mgpkyG4CGR/Yxyp8XSpNyeJtk5mWHqz518WUeO1h5QtSiq/Vh83mxrspOKee?=
 =?us-ascii?Q?8YqxIOY3aAOBhxtujngcNuI85KFV3klBD1ggCNWWB+kvifOJYhDcE2HCfVrw?=
 =?us-ascii?Q?NAfnthEZmkx9o5tYAo8o8/llf1dKqnyVfqoTqCs/DlCMU4gN9Z9rYjGgpLuI?=
 =?us-ascii?Q?IT2MlsXeqdX/f90KNWGQ4AfTfKyV5kAH1CkutFxIl9zDT2ndKcS6QHO6SOkG?=
 =?us-ascii?Q?7Z24arPzDs6YTHeCQfki4kc4BPsGEeVxXpJWRAzpKbGtAHzVaXM4E7tqOlda?=
 =?us-ascii?Q?jZrbvXnSHfpX7h1J53nEP/14v3Tz/obQD6/Ln/AFx5Qe7L/tlQbwht0/1TB2?=
 =?us-ascii?Q?pTKDhCoNjLh3KZH+RzUvotqqcA/7EwsLTa09RrtZ0v6QM1OJqDDKoRZcG2GD?=
 =?us-ascii?Q?4yoyPSwAJhJdttGEkgXZYtrOwGJSDtDmLc8DCu3+KI6Rwnwj7GVvL8susZlS?=
 =?us-ascii?Q?SQp2uIRa1e/Td6AwiRPTNeXVOGzCjX8B8iYFaKaE82oaUW26ZZTfsar/I7K3?=
 =?us-ascii?Q?q/MM/DjZRw2Z2ZADXCTB+CotnauFZgO88wlPELFAMfdElpOzQqMMU6lAaeqc?=
 =?us-ascii?Q?VkqBLWzNeFFs0LxlXEJwK3rXubDhdJLRHBAYltFwLW06qDpCixzsktjpKY8c?=
 =?us-ascii?Q?KQE5KSkYksf4JwqsG0BmBxoM+LS7qj6MDI+FwwW0BkWOa4UMGspvZ/ZXlufw?=
 =?us-ascii?Q?UjdgC/2c4hFIGXeJqZgvO62gmc3XFZA+HNLrssTiNNXfJqaArxQKTxgczpEe?=
 =?us-ascii?Q?kWU3REgzwsffpfyETZlAOPEYXsFUb89GYYptLg5MGmXXTGDmrcwtorwpOFVp?=
 =?us-ascii?Q?ug17g6M9WCM1AtpQyVlkPVr2LULYPgzShgUogUr7gELdhU7C2CC8o33an7V6?=
 =?us-ascii?Q?s1vIqsnbcRvBD0sF+5v10bjYbDRdwGeD58Inj3yKMq6U3xnmViWK6xVqY8Wu?=
 =?us-ascii?Q?WjIX5LYDVle8aFIkb2p6zxCLrbMxjdouPXhBALGm/hXkw4ixZr6KTMubUplC?=
 =?us-ascii?Q?6lGq3FPJ1pziXZBwHIBF/Vls+vJkcqxL1ugbldgfe3Ii5rEz18nj8dGP53qs?=
 =?us-ascii?Q?yCwLriCU0T4v8bFKkNdF47z7u33jrJOrbBuDwMxf9Ds6tiPBRNGzSnhRFxIQ?=
 =?us-ascii?Q?z0IguCQMKUkGDkd3C90ouJBoOqoPhQPZKK845NZdL3lKqM6q/eXZeQwWW+t7?=
 =?us-ascii?Q?mT9YwyxB5QKwiNLpsvf8M1kvwsYb63vucGXqpiWTcUWTvg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Nto48zNtjZNRSL/bXtTsOXroT4Xj2oYcW4iLeMUhd3aN81HMEXlnUD9IHY+m?=
 =?us-ascii?Q?GR3lAL+9UmfEkhcIREGL2T6N4tLf+qY471WdhQwmZTLcH5vvaWE1vRiW+V3t?=
 =?us-ascii?Q?GgC1wh9LVrOegj/kvcPWdLhggBDrnryC8eRORHB7qZtArrcrDp3zaONXT57+?=
 =?us-ascii?Q?iQb23aoWF0FYdMH1CQhUXrlevq0RINva3D8YOVO3Boi2FdfoKSAjwe1Su+L6?=
 =?us-ascii?Q?AwE2OCIWYaKNdnTmDFKRngchY3pd7QS3CRYUlOHY04k8mKGj06SgA6az47uJ?=
 =?us-ascii?Q?Slr63odd86bWCJ3qblI/6N3ojH2ruWXTqZuJ3GY6EEw09fhdswkFJloH6xVE?=
 =?us-ascii?Q?TSth7RGYPe4GyKBrMMEo8hRZDNyg69G+UkdoocNyxLiFVKySHgOA1nBcD38+?=
 =?us-ascii?Q?N/paz1R0MzeGrTpv9gkHSpFpCD4pZUNLY/NTX/wh+QuVlXYuPwVKsYe3DwZB?=
 =?us-ascii?Q?YJ98fJCMcLXKY4dDh6dllu1+x1gwYHefd2CFto9o/EiMjUfmhs5NfIar8+tZ?=
 =?us-ascii?Q?WJ2fOs7jlpyctCz6TSSH8y6YXyIaAhR6TztZGwKIKEj3uOjCKaF0xitVhvQm?=
 =?us-ascii?Q?4aeAZzKZj9A3Pj/Fp9RiGexUbVrGHbFjxsEjNNd/BYYgeNnf2NQUDR/vBUa/?=
 =?us-ascii?Q?fSP8OmXpz3AYMC12Zg/HQmo/4fa3T8UsQklNmLpgLkIlgg5BeUhWQ+Uc9mLs?=
 =?us-ascii?Q?N8CKFVf13qYpdlxC+9JmSVVkHLkD4tv44ZYinsKahWcH/udtFQV+ZlBWEA42?=
 =?us-ascii?Q?DCPxXl4Xf0tbeJNyWO1DRfRd9qUKvZSJlfJJ275nTfCQSno3DD9/y27jpNJC?=
 =?us-ascii?Q?D6tGjxtSF63wtIXy2i1y6SWFBNPsMoRQT6Yyi1D7sjQ2wZcYzeEl0awIcsQy?=
 =?us-ascii?Q?RfnTi7DqVsN9/xDjtrQgu3/uwuMgnvFYwKgvPtusK3boLrufNJyldaPwUDKn?=
 =?us-ascii?Q?nAbLcI0D99sWmQDRQKEGcv06nnM7tdB4xilL/lc+57RfMPQE46HT96rvSaF+?=
 =?us-ascii?Q?LJ1uOM56hDG9KoukfvW2fS6WlBdrxs8qoqSMnkdEjmM34B+nmKQ2v2x111tu?=
 =?us-ascii?Q?MK8wgOVVnMxP/EBsSrLu9nCHj7x1lW8fT89Z3rGBRQMklctEcW0OAM4Z1DWb?=
 =?us-ascii?Q?UAVfquvadXQJefslSPxN6wPoWSYj0gSgfP05IZtaicIfgI8KZjcWNZJXXdHs?=
 =?us-ascii?Q?S6XMk+2MJNMNjZ2W+NSY7hLJARR6W41hqKEzKINHjUPWf6v+gN3oT3HwsRX1?=
 =?us-ascii?Q?WUYsL1XduUAU8wQFaYXSQ4iuxmfWKmwNpZXymIRgMtiTxmsEZfzbqBOWhdp2?=
 =?us-ascii?Q?CyyPYOImn1MghOlhe1xij3ti8F6GKGlUaC9pwDiJNz5wXFIkpuZ/FgoSVGAe?=
 =?us-ascii?Q?2G6WG/PozYaBpxfQYhXJV3Z4JYpk4bRLLTJQNYrhfZn3hc67zc6gLhc7yPqv?=
 =?us-ascii?Q?iIk7ZgYOnaFTn/2QsWqreIADrDnFQQNnsKSDC+a1XMv4XV/6SKqg0rjccH6P?=
 =?us-ascii?Q?zywGTU838tpfmWqmifz1JmjVUILZCP6gRe2AgRmmpv0qitaw+muCoVW/5bbM?=
 =?us-ascii?Q?7vMBP/ac0wL6zIajpFO8fesofntQa6EfL3NPH201?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbd74906-e02a-4164-8aea-08dc6412d4f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2024 03:58:42.4583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MhQW2MKVzbs/rsRcziiIlgghDkHKERBANfmTk2mm3tN4GcHPX4bLhBnNqWWo0QozKbWy5H+VPFZbcZFUiL3aLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4874
X-OriginatorOrg: intel.com
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
> From: Sebastian Wick <sebastian.wick@redhat.com>
> Sent: Wednesday, April 24, 2024 2:51 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>; Kumar, Naveen1
> <naveen1.kumar@intel.com>
> Subject: Re: [5/6] drm/i915/dp: Enable AUX based backlight for HDR
>=20
> On Mon, Apr 22, 2024 at 09:02:54AM +0530, Suraj Kandpal wrote:
> > As of now whenerver HDR is switched on we use the PWM to change the
> > backlight as opposed to AUX based backlight changes in terms of nits.
> > This patch writes to the appropriate DPCD registers to enable aux
> > based backlight using values in nits.
> >
> > --v2
> > -Fix max_cll and max_fall assignment [Jani] -Fix the size sent in
> > drm_dpcd_write [Jani]
> >
> > --v3
> > -Content Luminance needs to be sent only for pre-ICL after that it is
> > directly picked up from hdr metadata [Ville]
> >
> > --v4
> > -Add checks for HDR TCON cap bits [Ville] -Check eotf of
> > hdr_output_data and sets bits base of that value.
> >
> > --v5
> > -Fix capability check bits.
> > -Check colorspace before setting BT2020
> >
> > --v6
> > -Use intel_dp_has_gamut_dip to check if we have capability to send sdp
> > [Ville] -Seprate filling of all hdr tcon related bits into it's own
> > function.
> > -Check eotf data to make sure we are in HDR mode [Sebastian]
> >
> > --v7
> > -Fix confusion function name for hdr mode check [Jani] -Fix the
> > condition which tells us if we are in HDR mode or not [Sebastian]
> >
> > --v8
> > -Call fill_hdr_tcon_param unconditionally as some parameters may not
> > be dependent on the fact if we are in hdr mode or not [Sebastian] -Fix
> > some conditions after change in hdr mode check [Sebastian]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_aux_backlight.c | 98
> > ++++++++++++++++---
> >  1 file changed, 87 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > index b61bad218994..e23694257ea5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > @@ -40,11 +40,6 @@
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux_backlight.h"
> >
> > -/* TODO:
> > - * Implement HDR, right now we just implement the bare minimum to
> > bring us back into SDR mode so we
> > - * can make people's backlights work in the mean time
> > - */
> > -
> >  /*
> >   * DP AUX registers for Intel's proprietary HDR backlight interface. W=
e define
> >   * them here since we'll likely be the only driver to ever use these.
> > @@ -127,9 +122,6 @@ intel_dp_aux_supports_hdr_backlight(struct
> intel_connector *connector)
> >  	if (ret !=3D sizeof(tcon_cap))
> >  		return false;
> >
> > -	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > -		return false;
> > -
> >  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR
> backlight interface version %d\n",
> >  		    connector->base.base.id, connector->base.name,
> >  		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported",
> > tcon_cap[0]); @@ -137,6 +129,9 @@
> intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
> >  	if (!is_intel_tcon_cap(tcon_cap))
> >  		return false;
> >
> > +	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
> > +		return false;
> > +
> >  	/*
> >  	 * If we don't have HDR static metadata there is no way to
> >  	 * runtime detect used range for nits based control. For now @@
> > -225,13 +220,27 @@ intel_dp_aux_hdr_set_aux_backlight(const struct
> drm_connector_state *conn_state,
> >  			connector->base.base.id, connector->base.name);  }
> >
> > +static bool
> > +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state) {
> > +	struct hdr_output_metadata *hdr_metadata;
> > +
> > +	if (!conn_state->hdr_output_metadata)
> > +		return false;
> > +
> > +	hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > +
> > +	return hdr_metadata->hdmi_metadata_type1.eotf =3D=3D
> > +HDMI_EOTF_SMPTE_ST2084; }
> > +
> >  static void
> >  intel_dp_aux_hdr_set_backlight(const struct drm_connector_state
> > *conn_state, u32 level)  {
> >  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> >  	struct intel_panel *panel =3D &connector->panel;
> >
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (intel_dp_in_hdr_mode(conn_state) ||
> > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		const u32 pwm_level =3D
> intel_backlight_level_to_pwm(connector,
> > level); @@ -240,6 +249,64 @@ intel_dp_aux_hdr_set_backlight(const
> struct drm_connector_state *conn_state, u32
> >  	}
> >  }
> >
> > +static void
> > +intel_dp_aux_write_content_luminance(struct intel_connector *connector=
,
> > +				     struct hdr_output_metadata
> *hdr_metadata) {
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > +	int ret;
> > +	u8 buf[4];
> > +
> > +	if (!intel_dp_has_gamut_metadata_dip(connector->encoder))
> > +		return;
>=20
> The usage of intel_dp_has_gamut_metadata_dip is all over the place. You
> happily set INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE and
> INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE even when it doesn't have
> the dip but you require it for INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX
> and INTEL_EDP_HDR_CONTENT_LUMINANCE. Why?
>=20
> Especially because when there is no gamut_metadata_dip, the KMS propertie=
s
> for HDR is not exposed.
>=20

As I have iterated multiple times before segmented backlight needs to be se=
t
regardless of H/W's capabilities to send SDP(the spec demands it). Having i=
t set based on a KMS property
Is a whole different conversation keeping in mind this is an INTEL specific=
 spec DPCD
reg bit which needs to be set, do we really want to expose a property that =
only intel
H/W will use does not seem right but as I said a discussion that needs to b=
e taken up later=20
and should not be a part of this patch series which enables HDR and AUX bas=
ed backlight.
INTEL_EDP_HDR_CONTENT_LUMINANCE is only set in cases DISPLAY_VER < 11 that'=
s why the=20
Dip check there since it return true in case DISPLAY_VER >=3D 11 or if port=
 is not A (which is used for EDP).
INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX well and this need a dip check which se=
ems obvious since we
Would only want to override aux if SDP is present.
So in short I am pretty happy with the bits that have been set and the cond=
itions used to set them.

> > +
> > +	buf[0] =3D hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF;
> > +	buf[1] =3D (hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF00)
> >> 8;
> > +	buf[2] =3D hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF;
> > +	buf[3] =3D (hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF00)
> >> 8;
> > +
> > +	ret =3D drm_dp_dpcd_write(&intel_dp->aux,
> > +				INTEL_EDP_HDR_CONTENT_LUMINANCE,
> > +				buf, sizeof(buf));
> > +	if (ret < 0)
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Content Luminance DPCD reg write failed, err:-
> %d\n",
> > +			    ret);
> > +}
> > +
> > +static void
> > +intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state
> > +*conn_state, u8 *ctrl) {
> > +	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> > +	struct intel_panel *panel =3D &connector->panel;
> > +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> > +
> > +	/*
> > +	 * According to spec segmented backlight needs to be set whenever
> panel is in
> > +	 * HDR mode.
> > +	 */
> > +	if (intel_dp_in_hdr_mode(conn_state)) {
> > +		*ctrl |=3D
> INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
> > +	}
> > +
> > +	if (DISPLAY_VER(i915) < 11)
> > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
> > +
> > +	if (panel->backlight.edp.intel.supports_2020_gamut &&
> > +	    (conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_RGB ||
> > +	     conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_YCC ||
> > +	     conn_state->colorspace =3D=3D
> DRM_MODE_COLORIMETRY_BT2020_CYCC))
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
> > +
> > +	if (panel->backlight.edp.intel.supports_sdp_colorimetry &&
> > +	    intel_dp_has_gamut_metadata_dip(connector->encoder))
> > +		*ctrl |=3D INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > +	else
> > +		*ctrl &=3D ~INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
> > +}
> > +
> >  static void
> >  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_=
state,
> >  				  const struct drm_connector_state
> *conn_state, u32 level) @@
> > -248,6 +315,7 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  	struct intel_panel *panel =3D &connector->panel;
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> >  	struct intel_dp *intel_dp =3D enc_to_intel_dp(connector->encoder);
> > +	struct hdr_output_metadata *hdr_metadata;
> >  	int ret;
> >  	u8 old_ctrl, ctrl;
> >
> > @@ -261,8 +329,10 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  	}
> >
> >  	ctrl =3D old_ctrl;
> > -	if (panel->backlight.edp.intel.sdr_uses_aux) {
> > +	if (intel_dp_in_hdr_mode(conn_state) ||
> > +	    panel->backlight.edp.intel.sdr_uses_aux) {
> >  		ctrl |=3D INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> > +
> >  		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
> >  	} else {
> >  		u32 pwm_level =3D intel_backlight_level_to_pwm(connector,
> level); @@
> > -272,10 +342,17 @@ intel_dp_aux_hdr_enable_backlight(const struct
> intel_crtc_state *crtc_state,
> >  		ctrl &=3D ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
> >  	}
> >
> > +	intel_dp_aux_fill_hdr_tcon_params(conn_state, &ctrl);
> > +
> >  	if (ctrl !=3D old_ctrl &&
> >  	    drm_dp_dpcd_writeb(&intel_dp->aux,
> INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) !=3D 1)
> >  		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to
> configure DPCD brightness controls\n",
> >  			connector->base.base.id, connector->base.name);
>=20
> Unrelated to the changes here, but why is crtl based on the old value?
> There is nothing else that sets it so the state is always entirely determ=
ined
> here.
>=20

We read the getset_param register and set oldctrl and ctrl. Then ctrl is ch=
anged based on
State and other params. In case ctrl and old ctrl still end up being the sa=
me value that means
No change in DPCD register is required as of now so let's not waste a AUX w=
rite operation on that

Regards,
Suraj Kandpal
> > +
> > +	if (intel_dp_in_hdr_mode(conn_state)) {
> > +		hdr_metadata =3D conn_state->hdr_output_metadata->data;
> > +		intel_dp_aux_write_content_luminance(connector,
> hdr_metadata);
> > +	}
> >  }
> >
> >  static void
> > @@ -332,7 +409,6 @@ intel_dp_aux_hdr_setup_backlight(struct
> intel_connector *connector, enum pipe pi
> >  		    connector->base.base.id, connector->base.name,
> >  		    panel->backlight.min, panel->backlight.max);
> >
> > -
> >  	panel->backlight.level =3D intel_dp_aux_hdr_get_backlight(connector,
> pipe);
> >  	panel->backlight.enabled =3D panel->backlight.level !=3D 0;
> >

