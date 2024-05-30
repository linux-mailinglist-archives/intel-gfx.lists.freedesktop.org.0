Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D080D8D42BF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 03:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C686511ABDE;
	Thu, 30 May 2024 01:12:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JRCnaXab";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B4A11ABDE
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 01:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717031547; x=1748567547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g0r+KKa9hcdEYyXvIU7G+a7JEuSfUBnyk1WE7ihZD8g=;
 b=JRCnaXabtsRSRQt4KG433N1forSJsE/dI/zFiCVmFPXkk2uv8HEtDlDt
 Jic/lVYQZ3dvKsjnO42ION956VV82NVgRYKE7rcMn27RYYHxcfIl/k+xw
 2dt7fFP2wBvb9zmekma4inNJ834ZWaui+hEg1EAmcDfErGShE+bOANYyX
 vMo4Yk58X562usbTdPlgNEdTfn97XlRa2PAH5lAu7x2mZySzzocCHVItP
 NKGjW8zGfgMo+CErI426pTEfCJY7YK+y9PcF9qzGL/MQkqrrQxg+6jc9n
 sbZbm+XG6nkyB0vEW7o0QwxRrsZoWObIIxejRhwnjul0zybZE/gsTzmY8 w==;
X-CSE-ConnectionGUID: zzPqloitRUaIZ3oxYDrzcQ==
X-CSE-MsgGUID: 0rN0hTIcQ8OxBwfUajNd5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24606435"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24606435"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 18:12:26 -0700
X-CSE-ConnectionGUID: vySnzW6CTuyjYbMwAodCOg==
X-CSE-MsgGUID: YIsndrTsQsKBchuD76h7Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="40168667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 18:12:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 18:12:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 18:12:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 18:12:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 18:12:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpjLWMEMEBFrIJGeJ6Z4QBEfggAApxITQwJi7P9XAy+V/0xpfFPUgmvq7l5Us5606zo91qBo50+jBnRJePdmO8lqIZFqKOkkc6RxS+sFIE1iiwWWlOtzS4kjRgqwl7VH7NwgqtCCEac10TA4eYJ1bVP62MGD0TSCRz3OZxF/+S5prmaEQQsb4b5xEWz4wEjMMNS1egU1UR3ai4ezj6NmTsBIfsbXpbU5KmeEt1ZOiGqLMTEH4NBsAxi51luNLdgDKwvJRW1ywBM4VQHIWaoaV67AZCYoX1g1+LxC1T9rhSGaP1C5unEWNQgXh6Z/QCLEcYxw/Cwr1kHe6bZz4s8pGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m2LSs7iQ7Dy2w6aTqS4v7cf1Sg+Jd7ErznfzosZ8Nac=;
 b=VEkjWNHnokb+M0r1IB8TTTd3MIvbkkSg2Y41cVDJy9oFqwcYlV0sYCGsUAj31TeE6QQCiBtihvGtmZJfxjX1xughAR9pX0FL/PXV0bNXhiaA6YoSMiiCsMrIbSG/tyq+wGZ1gezcsBuB7/vKvZNUrPZRVmWcUfyaOFDBek56MEgyNQEmy7LDToQNeiR2uf1PDNizg7NPqQoz+bRyA6I5Uj+J239ZxoLX04zLv7JgotQ3vHGrkROv6b8kXQxVfci/dHq87dpsqXrrvHAY2R64MXioeGYJuAT2/xLdYsAOQ1iZpEgugj2RTZOXSODxDlPkjm2k0J872cWceEJRtLpEAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL3PR11MB6364.namprd11.prod.outlook.com (2603:10b6:208:3b7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 30 May
 2024 01:12:23 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%6]) with mapi id 15.20.7611.025; Thu, 30 May 2024
 01:12:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Nautiyal, Ankit
 K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line
 rekeying
Thread-Topic: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line
 rekeying
Thread-Index: AQHar/Z6cjOsL7pSu0mV83d8GbK0E7GufTUAgAB9xpA=
Date: Thu, 30 May 2024 01:12:22 +0000
Message-ID: <SN7PR11MB67509E087CEACD5B9471BF05E3F32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240527052118.1624216-2-suraj.kandpal@intel.com>
 <20240529173516.GM4990@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20240529173516.GM4990@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL3PR11MB6364:EE_
x-ms-office365-filtering-correlation-id: 3ba77913-5be6-4497-1752-08dc80458f2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?pCUdt++CtzxkqiQ2ny/DRmsoVEwBvMr0ktPdT8+BTRhGRMzq5n9nRp+QpIYT?=
 =?us-ascii?Q?92KFQBZztU8F+kI7DkCtdM/G600t14d+zF2nOWnyhylNaeAWoIjhu4yfK086?=
 =?us-ascii?Q?3oJHkzLEY6gC/tCHs+VbfFQrPrsMvk/+jIcKEl+diIxe0rOGXgQulP7W3XLn?=
 =?us-ascii?Q?0wwGheALIF6NtFdnPGRAOj5V2RqNljtzq7ZZYObVSFFNQCDzQFKzsm2KRQYh?=
 =?us-ascii?Q?Asg0eDVvM+8x9qrjLkxcPed6rVs08GUd8AcqOvdFbKoeFZFp4q7ReGxTYrCm?=
 =?us-ascii?Q?iLgVVQjYrt+BaXyYML+HdXU8utw0x3SWFc/XNVkIui6RvaZmI/tRYrPEqp2x?=
 =?us-ascii?Q?qAbr+BKHH/XfO8nhhurzkJdKrt+XyhKZm3mVv4Nz690s9LWhAzMiIUjyVXCY?=
 =?us-ascii?Q?SniPh72StsqQVyWEu5EsTmDxQBCoXuqeHJxWw80r9Q8mPrcF0/SXC9For0WY?=
 =?us-ascii?Q?bdckscsZgrEDQ66FatKxlaZtIm/3goCm1qwL3Y/ZtTcBgz1rZIuN2FCXD1qM?=
 =?us-ascii?Q?D0LXV6FqpwfU1rKXwSZTEo97lfBF2rkGN7Yl6BgueZQvQERRtDqkwGEyKByr?=
 =?us-ascii?Q?8VN6Km9cUvnGbw53CaXK/ijJPD1CUEykOXt0qca4o/b1m8KnGWUt1jHm2R1o?=
 =?us-ascii?Q?LXYiGCTaqGU4APgVEUYklsPaZkDF+TMo35lFd2lnfLPz4TEZl4Vyz1GBKP9M?=
 =?us-ascii?Q?wWLSwxbIN3vBgeWUMi5bvqWCIqyhSCLQfX/rgmDELSbZp/0U5hWvrtr9Xu7k?=
 =?us-ascii?Q?Xcw5o/b1F5ss2+l/LYIlov2M3mlQcg1daSgs8tR9IRChDP2IUQcutSGvwaKD?=
 =?us-ascii?Q?UgCxrtOeEts/Teo9ko9cIOhV8gQjL3UPfEAscgvREXdVpT0W52NYqISNmZp6?=
 =?us-ascii?Q?kIj0bVpajj6Fn+HLTt8y7Lj6ABm/+854DyJQn39MZqO6/mxxu2lE2dLXPWWk?=
 =?us-ascii?Q?dSNCqWzxxYl1of7zT55hP0HbWgY6Hjcv3m/CGuQCK9PJH1RUa/yaHBn3lqcj?=
 =?us-ascii?Q?w/hqJynmj43W2nsTFVZeVT8wECQJDR7o0ptEc7Cv0VuqJe8aLnfsHDAr9gl0?=
 =?us-ascii?Q?r8fIJGuuwqDjDM+s+Z/sdzKq48FFJfshQe+uaknx0hBTINH6vPc3x3LXSWiW?=
 =?us-ascii?Q?s8wOoDn40G3GYGKL2pCmX9Q9uSx1FZg8qyAlpTmXIlt8kAYqGRe5owC/I5la?=
 =?us-ascii?Q?LT3MFQe1kwbwqshUTFGHk0NhM+0mdaGK6lYkJv8zTa1TdHmD8vbX25Tq8YLm?=
 =?us-ascii?Q?UaHdmV2Xx2xa6ZDK0jj5+Z27yX7CnibIgdMBsHn0Y1WwpKbmwsrnMwHBF/0a?=
 =?us-ascii?Q?LHLiPWuJ6S946FTO/5Mid1PNyhXPaD0XUeXPQrapdvlo2w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IgOttQBak220iqTDlrRIi1n5kDqsjmQ1cIjW3vun5Zmi6Kz1kFynaJhygG6S?=
 =?us-ascii?Q?d9e0ee2sKrIE50PBaq55YXG3yOwX2eorgIKdjXYD5O4WV2v0FLHxQk5rgtr+?=
 =?us-ascii?Q?Ah0aCs6hp6jw8iE4EVtY7BDVNkFIroKPZnhCTZgqHylkgO8p+SZUNIHcJeia?=
 =?us-ascii?Q?+VHDLzMmGjXj2/nS/tdo90tsRdPc6CXr38aWRNPP95h0pzHRRUe0oYNerbsj?=
 =?us-ascii?Q?Rie2C7LdTpE8hFt73mbUzj6dCLo1AuxBgZSs48Kyc8h6h9Aq6zKbs5fiXFu8?=
 =?us-ascii?Q?Yqa7YSmbKEcRPxA441x/YxyeNnEIwgojaDjx1jWKVe5ITabVMt09SzgoqBef?=
 =?us-ascii?Q?MGDUM5KD6Zt7L3FzlPjhGj6ALkSVRer9GpCNV5c+RIFlQPze4vZfi1wH+eSG?=
 =?us-ascii?Q?XZOlYu0jWMA92/ppLNJVhHesPx8ckz/5dSjbf6n3pXLlaiGUTDxdmVOE5E28?=
 =?us-ascii?Q?gNk5phC1ZNNXGBJvaaMTb1dcNPnyDSADNvq2qVFsppQ5M7Mekyq2iidvUJYn?=
 =?us-ascii?Q?lb1gvinl9ktWlAzxQiZ18zh8a9LQxHr3QAJ7y4OvGZfnEbFMkaIRevqZ7iUv?=
 =?us-ascii?Q?I0jDKdDZVkfNK4XrXIachUIyPnnEDcZwFJaWt+uwy3erCuCLH0c6sywm11E7?=
 =?us-ascii?Q?iIPP1Seu8IrUTIG6PqIOFJBkI+3FYOhprM5KjDn8X4moFXBEdzme7HO4VFK2?=
 =?us-ascii?Q?xTIMXWsEmn7JnQINlVu6QhUtGt/gEWy0o7oACWnKBYPnzNJ2tdzMJInlJA9s?=
 =?us-ascii?Q?kgX42rtMSpqWBn+rEINxfW00JPaoYmEXlJlGTI4JPRGVVkwzyPIZ192Y/DaK?=
 =?us-ascii?Q?xyu8WXf8uidF6Y9wkzE+G4/8kbZPX9LkW5mbQj0kyUD91tT9TbWdRfDcC8tN?=
 =?us-ascii?Q?ohWE9hF/V7AXTNxAYZRle7zATapjVD2CUh7YEFdyx+m7raHD6eD1ljTlUldP?=
 =?us-ascii?Q?hOIR3ftYEY1scBHQlsH4Dcw4Xlc2hvCqMDH18dEubTLHLJdPYEqNpEOyw3cz?=
 =?us-ascii?Q?UMhLatp05E4obUt0X2FkxcX5i9o440+Lw5or6xJhiYXbI66jrbe0MEVJXSrn?=
 =?us-ascii?Q?2leSei/rpgUS+BiTj8800SGstZnkJ5FA7JId7FHJnhcpc/vh7oGileSAzubA?=
 =?us-ascii?Q?DNDBCKZhrv8azmyVW4Q0tgGDQZ6JSTtmjTnFQ/IHJovx39dN+yQnns2uZ0x1?=
 =?us-ascii?Q?2sqhTiYH5b5++DDtQQzibeo6B6cVsRGgoXbQE89iGrHOqVBa5BCBMw6I9gbP?=
 =?us-ascii?Q?vYZV9VzKFvUCI8sHDHQBWbaWBCueUt+7BMsStUfYrAVc7q1QohjoI89rDFqu?=
 =?us-ascii?Q?g69/zq4fhq9TLcPjKIyBMAufJMo7aWQ5wtcxdoirlc1F7078AsvXf53wGHa3?=
 =?us-ascii?Q?yfsD6ZjkZxJa3kBwxxUwBtHivuR2B+uuupdiEGQ+CC8Y0DiMgROJQrUHIRC2?=
 =?us-ascii?Q?cfOrl7tO3bAOMF1dC6Hd/ePHKjfNZnhwPAZeZ2dq6yhCE/I6jZZ/ioq0pHLd?=
 =?us-ascii?Q?FIga0u7a2VfNynj95jPuwpMBeYiXjk5u2EzPcoYRpOpjwdq2Ci4dLb6cJvqb?=
 =?us-ascii?Q?0m5hoQYn+8MsUYXF9mAFw42sE4wr+BZWP00J3UzR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ba77913-5be6-4497-1752-08dc80458f2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2024 01:12:22.2465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: foHEz5QpZrAyVLc1yLwyMZXhGquEVdUgqlIX+dSn+cnHHlgtijhHqhrTj4yXX2FcGTDCqAPT7PK1j4N0MBZOMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6364
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


, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line
> rekeying
>=20
> I'm not terribly familiar with HDCP, but from reading the spec my
> understanding is that in general we need to enable rekeying for HDCP 1.4 =
and
> disable it for higher HDCP versions, right?  That would be the expected
> "normal" programming for all platforms if we didn't have any workarounds.
> However the issue here is that we have a workaround
> (Wa_16021352814) which affects the early steppings of certain platforms a=
nd
> instructs us to "Prune timings with hblank below 138" instead of disablin=
g
> rekeying.
>=20
> In that case, I'd expect the logic for this function to be something like=
 the
> following pseudocode:
>=20
>     needs_wa_16021352814() {
>         return IS_DISPLAY_STEP(IP_VER(14, 0), STEP_A0, STEP_D0) ||
>                IS_DISPLAY_STEP(IP_VER(14, 1), STEP_A0, STEP_B0) ||
>                IS_DISPLAY_STEP(IP_VER(20, 0), STEP_A0, STEP_B0);
>     }
>=20
>     intel_hdcp_disable_hdcp_line_rekeying() {
>         assert(output is HDMI);
>         assert(HDCP > 1.4);
>=20
>         /*
>          * Wa_16021352814: Rather than disabling rekeying, we need
>          * to prune timings with hblank below 138 pixels, which is
>          * taken care of in xxxxxx().
>          */
>         if (needs_wa_16021352814())
>             return;
>=20
>         if (DISPLAY_VER_FULL() >=3D IP_VER(14, 1))
>                 intel_de_rmw(TRANS_DDI_FUNC_CTL, ...);
>         else
>                 intel_de_rmw(MTL_CHICKEN_TRANS, ...);
>     }
>=20
> And the logic to prune modes according to hblank for this workaround woul=
d
> need to be programmed somewhere as well...has that already happened?
>=20
>=20
> Matt
>=20

So the disable line rekeying is called from a flow which would only come in=
to picture when
HDCP 1.4 is being enabled.
Next the WA says to prune modes when HDCP 1.4 is being enabled.=20
Now we prune modes in intel_dp/hdmi_detect which happens way before HDCP is=
 called for enablement.
would require a change in code flow. Does doing that make sense keeping in =
mind that this is a temporary
WA and we are to use disable HDCP Line Rekeying on the latest stepping anyw=
ays specially the upstream code?

Regards,
Suraj Kandpal
> On Mon, May 27, 2024 at 10:51:19AM +0530, Suraj Kandpal wrote:
> > Replace IS_METEORLAKE usage with a more appropriate macro. While we
> > are at it also add the stepping restrictions for other platforms.
> >
> > Fixes: 6a3691ca4799 ("drm/i915/hdcp: Disable HDCP Line Rekeying for
> > HDCP2.2 on HDMI")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 02cbbbfd8e25..5767070248bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -42,10 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> >  		return;
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > -		if (IS_METEORLAKE(dev_priv))
> > +		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_D0,
> > +STEP_FOREVER))
> >  			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> >  				     0, HDCP_LINE_REKEY_DISABLE);
> > -		else
> > +		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0,
> STEP_FOREVER) ||
> > +			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0),
> STEP_B0,
> > +STEP_FOREVER))
> >  			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> >cpu_transcoder),
> >  				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> >  	}
> > --
> > 2.43.2
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
