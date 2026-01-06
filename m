Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9A9CF6D2A
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FFF210E299;
	Tue,  6 Jan 2026 05:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ExuzEiMT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC8B10E26F;
 Tue,  6 Jan 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767678873; x=1799214873;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PREeMSGxPkcPeOp5is9vjOOKv8c4j7IBkEjDgSuhTYk=;
 b=ExuzEiMTKoZZ+vWlKr2AuhJp/LXBt4eVpa/2zbLdHBN9OQTwQBuJLOsU
 BJBheWzX7BrXGGq/w/OZJmgEDZMx+kBYh/K9JocCP0sswd+ptNzoMYQ+c
 9ufG8YJtYYo3vLWOODqppNWhkICJEmaPvvdhg6ceiwdORtY3p1QZ1rMOP
 Au4kOZCnSl9xsv5rAxR4aM+Pp1ITXZKr264X8/sVzWPbX8Yq/nW+HJQLO
 il0OjW7t8CWZU7LyxZwxNgbAC8KioDEHCJSz/EMvy+NhUZIlyyMO+rAXv
 PJ+jiAdto/98c8kn4yy0J458dgaBQovH+lD5JreN8M4VF8OLVIqF+9wFB Q==;
X-CSE-ConnectionGUID: 9SrOpxwrSDexlJ+0mLtpwA==
X-CSE-MsgGUID: WDSCMSf0RNSzEiaC+sconw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68949116"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="68949116"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:54:33 -0800
X-CSE-ConnectionGUID: UwOTLSpDR/KFneh/7RXx4A==
X-CSE-MsgGUID: qa4bWLYVRZKcX9CsCiI5RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="233272082"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:54:33 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:54:32 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:54:32 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:54:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZVOXyMYiUvoyeusHYHqdV4PUylZhXjeUwnVEnojR+kKH8s2G/FkwI5ssqyokG4umQTWuDj0VA7Y5tjlJ4qyh6c7yJ/8EdjP+sFZJrxBowCEtU8sZOvHmqv0WAajuTfgHPRVBkek0KGLwQdlf/ASuHR4PZnhxdeYgxzJThxtYSS+manCmTia4ZhQp9+57QKH5K/AkXz7HB6ia3+j5ERaUF9CScag5vfdVoBnVFMQqiI4bxdWCUqbe73w76Rk81GeGafe4kHn8q8r+lI3cUGen5zeOnbbaCTKExrXg/19d67HQQmZmkebgUT9IFSxf3rHIFGOYa1XNWFO8pdyzr9psgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AVFXZ8fVI6PX8Kj0FulyMcllgT7z1UyXeobxE592P+k=;
 b=Llv3x++k5RXP97hpx9E39HLUPBQRi4qZTbx/BvK6LRF0IglE3m68YNpab21EfB8cHm2PlqNnKN2b3tJ+xXnLddiDWMPu1w5yEYQNd7FNkFxy1VmJ22SMufB6iU375uWQT9ki9BNwgiojBZF9qh8md6oqjvboyc9NGs9rVg+cePcN6lqVSiEoWHHxQb3Lwugwk7Lczk7OrJmo40qOxhZSco48vx1MPXC4raxgL7PdXPdwajMQW9p1MLWWSyeNtBwSR6dqOCUF2yGd2mXP0yMg9FcODTixELBpPd3Ep4pOGjv6uYXIZlldJzKGs6UThekH+/pN/hm3tTMXVvzDHy2zOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SN7PR11MB8109.namprd11.prod.outlook.com (2603:10b6:806:2e0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:54:30 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:54:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 06/15] drm/i915/cx0: Create macro around pll tables
Thread-Topic: [PATCH v2 06/15] drm/i915/cx0: Create macro around pll tables
Thread-Index: AQHcb2nrAR3Q9nfoIkekA2dSMcWIu7VEwr0w
Date: Tue, 6 Jan 2026 05:54:30 +0000
Message-ID: <IA3PR11MB89370E4A07210E0D7E88EBB4E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-7-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-7-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SN7PR11MB8109:EE_
x-ms-office365-filtering-correlation-id: 4245b9c1-da8f-4c66-0012-08de4ce80f2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?yy6U4IvJv3l7G2vXQ6MkXz5FHIAy6xJQfwKNlSPyqSQOGgZSAPFR943FhIFE?=
 =?us-ascii?Q?5ooBFlZp7EsAIQM3M/7uisbY/RN1Opc9i9/7huLiPDkVt2f9/cPYnoq4Cgji?=
 =?us-ascii?Q?SIqtod20mtD0PrY3krZTOCM7YS03GlhMePWImgzHFDz3NMksqEEYjr/TAmh6?=
 =?us-ascii?Q?BEzc1TI8JrZE3R/j0Kk7kRFgAH6ls4dKqExzcSnNu6L2/rdABj9OboDqRp26?=
 =?us-ascii?Q?skpzrnk3BB0/egIGQBukqRvMGlEQp4MBw++gbJRDqXcNzHCFQqxH0PbcKR9T?=
 =?us-ascii?Q?7ERsvKljSXx2oSfIXlk6GaKrtgKbYrkkbX2QAhZvOyeEaQPFWJhlMzuZgybr?=
 =?us-ascii?Q?d1R1L33s/ZDyyH+fAae/N6dj/mgZLp5otatcJflEF1HC377FHffuL1TttOST?=
 =?us-ascii?Q?GoPJKfb+uLzG+a7OusNaovQd0whG9V7QPRe93qpfVEg8HJhPs+miJ5GAV4iA?=
 =?us-ascii?Q?t8q02Y588lsM7NDzHv99Euyswpjir3YvS4/5tK+G5p7P9ag25p0u65xLNiZX?=
 =?us-ascii?Q?yJmFY3KUI3RmgtCwsqV4a3HIU6yWn0jBKP8oOfCgEyDZ/CH6yVQj9f8EwJEB?=
 =?us-ascii?Q?tn2/1NmeyPKwnB17N8feJf6btuti6J+m3SbgwcNAJQZXy/JNNJSiYW1df7c0?=
 =?us-ascii?Q?iXdJnaGlN3Bk44iZPwY+P5fTuEcMuoEPt9rAsXSQdEEDk1G9BqNfTUUCCsaX?=
 =?us-ascii?Q?j0IuQmTo2nzpXbWUNMndH3zehAngVMpRir8eNj3pGwaU9BuFGL/fbv+PiTi1?=
 =?us-ascii?Q?5FzIuTP7RaxWpwGrVB0iKAkHKiAq23Ss1parJ+LlLXpMbzsByzaFqnh3CtcV?=
 =?us-ascii?Q?R7zbFFRWKe9e/chSoprU1D2fsLMisIikf8Ummr+jXYaUZKZTQJKyLCCn3w3D?=
 =?us-ascii?Q?qWt9hAkYrySWPKHgqikdFnN3BIpCDvhkLTg1V3rx3sDdN5WJnRIbp7rE5JkU?=
 =?us-ascii?Q?6gpajiJZvMiuOetWj9u8ssbW8hWfA4XRoZrBLfljkbBvmoC4pW8TOM3yqWDZ?=
 =?us-ascii?Q?KSySxdLEL3xSEAd0ylS/e+81r/3V0NOgugscy81Fb9ybcymbQn8YfyVbO7p2?=
 =?us-ascii?Q?f6rhTrxYhu4yF5v8UQI6tRWeMDr2fYcQ5WDwl5LxkpmtLZFSHomd0/w8U5N0?=
 =?us-ascii?Q?jP9ej71x1PEy+8zhk2PIGAUb7p4PiGufvd9bo9MHklb5i6Yp5bGBoRBpM8N7?=
 =?us-ascii?Q?U5e7Eke144CfrhK1uQipp9k8zvsZEn2+s6E/oUQv5oA/bcbFTAadonhV0Iq/?=
 =?us-ascii?Q?j9uBbkgLUWVV+gaueivGxgUG/pNbdIQaIWPobLzl0mFRS0V252zIV0Xw3cjN?=
 =?us-ascii?Q?BQKRFJebQcbqy/8skLWURZ9doWwe381lft9cxdcWa32m62dO6TCEpfUxygUS?=
 =?us-ascii?Q?ymeeN5lMFqbwEW99fotzHFfHx/OUbdtmoaA9NPY9w+u6jEkB9ggfx5SarWtT?=
 =?us-ascii?Q?1cRF8h5rebKPJs58fcuizjF3AcRnWJk9xLJB7gXYtz7KEIXNq9u3Ip8m/KZe?=
 =?us-ascii?Q?MqsTbkT6sK1V+Cl+YwAzY1K5sO+Ain++jKEy?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?e1zXYnT+HB6GwZywQ17DJUKyCrGj5yAXA1NOdI3z0PwArjW++FBvWolOOOE6?=
 =?us-ascii?Q?NoRRa34UCK2bmpfre48RL9E3UpYhr+bUbXltOcxqjNchL3M6+ZinJvFN0rtw?=
 =?us-ascii?Q?N1IpqZev4VXi6PkzEDQaADc/DTayWhWnn8HWLJLQimvhGaQwsZrc6v1lTXxK?=
 =?us-ascii?Q?owAvGYp4s2IvIGAw9IisWbXvEzlGZF5xq4F5lu6SWxk94+sK2NIUzh8fbr+J?=
 =?us-ascii?Q?k+s6bS2PlkRsNr7KWKaqJjPHJzZrVepQ//sD4EWtV5nzL0vgJpkIlzAPkvyO?=
 =?us-ascii?Q?hikDCr+IqpvDZ5UMS/vbTv0sQ8cfe3ml1WYFiARn0ZkuK1JDaaO6J+6UIPlY?=
 =?us-ascii?Q?5WYpElVPMIwek3EhBHwpDOuLjOTL3PH+515YR2GRjBVZhymODyh5aSOjvVas?=
 =?us-ascii?Q?+xd64MoOUNxYNoTpRJzbwaAbuCVtuIcZRB/BLL+wvNJS4M7u7BFtUDoIW7ZM?=
 =?us-ascii?Q?tty4Ec98UtP3rMTRAmxVIvyTtrX88VJHwupvjhoxok+Fo1mLNV3tgjeuf0YN?=
 =?us-ascii?Q?bLn+ulfhPQKUrPl6EYorDDaMKZEAyZWEAfl+wdj8X+fJj+2KvXUHjOq6i003?=
 =?us-ascii?Q?KUQVn9U5VHShit62J/+V2IN5+VxhRz7/6nuKzZ2qOsA0bN99svulyeTKJ+zh?=
 =?us-ascii?Q?LiYTxmP7w05FPvfM05+HelujTqnwYUGZdSz9B1/6xH74mA8IPxtLDUmlcc8v?=
 =?us-ascii?Q?NpYFQHMeWNHzrCF6ohXbhSTusH8e5QKoOR8m6LR2QMXx8p9Zx/y8VhFsmzUl?=
 =?us-ascii?Q?hN5mXT0urokW/K2lj772wJagFPRGzrG/ZHZ6ldH3/aoXtDydBjwsazSTZSi/?=
 =?us-ascii?Q?CDJDxBipBAojAXJvReV/NXdc91O8Q+95EGOU88D6ZDf0v+YJPKQqftxvujoJ?=
 =?us-ascii?Q?Zu+16IPCUpBnza+L0o8dwHkHv4oLkNs3uuV69CCMJUEtPqxxspewG/9a8k4s?=
 =?us-ascii?Q?DUI8TuwpFDBuKOP5ZYraRn8WjuVoCgPmPK95U84tuJkZEU2moqI076USr4QV?=
 =?us-ascii?Q?Ui4o0NoF2pcPxdtfqOkVpXYbCqIFxnDHqQhy/Jih7oMUAOlnlpo2xBWH74qt?=
 =?us-ascii?Q?cZvvS148Nh/ti0ftoh+sXmL0dRNGqek1C8l9SS9EX5fM8a7r2Eco1K41SoGp?=
 =?us-ascii?Q?qf6nsFkMozTg4FY1wFa8K9tPmq3OvXMul0L/CnrGOw1Y4mmJL/vAmZ9yA3yj?=
 =?us-ascii?Q?vAuOkEYb29gzK/4j8iw/G/KygmseVSQmrqeLKUSMJtf8gzRbPLzHiWmXAzCd?=
 =?us-ascii?Q?RSTYwAoLs4OuDFs8G3sEsvdZq/+E+ZaZEZj3ubnWyfRha+KefqOc0qzLS8as?=
 =?us-ascii?Q?GfwlddV0QQ2BBSQHIONyTu/BwDtD+U0W5fQIr7rmcIgPWolFQtGeWAg7ESJN?=
 =?us-ascii?Q?bKN1CdSdOIK5W5Mv95Txtg5MZVyA99uBXbzVwDs0pbd4b+2WKeI9Ql8yptRE?=
 =?us-ascii?Q?xlXdE/GmGsFRMXLS8aiXDD/61d1Smsbby++nhv7Nz5Gvk5oJSLx6070XTTdW?=
 =?us-ascii?Q?AJ+A62pabniGu1ThiZJ4bRFn6mhuUvfT0cnb9ZkmxjQxWYm/Bzi4H9WbRl3P?=
 =?us-ascii?Q?9Ppfm5hvmIj2G5kTLcc7pvnUqF3uDnLn2mQD2wbLaYoJ4NX9W8EUogvG6MMM?=
 =?us-ascii?Q?O3ddgcGeogy+SaJ127HzVxOerkVvr/FlJwVqGre+qy1wED9LZbLS1+qSYqVU?=
 =?us-ascii?Q?aLXxxt37llokr+y2KkFmrNSXwAZTtrggztA9rqn+HwVLre3IpWqDfCDMWuFW?=
 =?us-ascii?Q?aXAuihf3uw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4245b9c1-da8f-4c66-0012-08de4ce80f2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:54:30.3535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BHx2B5VnrQDht8zIsAeYznfXPZ9Q9zdNzjFgFgyMkv/rxXi0wW5HXnu3ho8DF0VAB4s/qxcDWRCq4xGs37pc1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8109
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

> Subject: [PATCH v2 06/15] drm/i915/cx0: Create macro around pll tables
>=20
> Create macro for storing pll dividers with table name and clock rate.
>=20
> v2: Preserve the terminating {} in each PLL table.
>=20

Nit: Acronyms in capital (PLL everywhere)
With that fixed,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 301 ++++++++++---------
>  1 file changed, 167 insertions(+), 134 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index b7ac89e32586..ab402bd8a125 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -780,25 +780,58 @@ static const struct intel_c10pll_state
> mtl_c10_dp_hbr3 =3D {
>  	.pll[19] =3D 0x23,
>  };
>=20
> -static const struct intel_c10pll_state * const mtl_c10_dp_tables[] =3D {
> -	&mtl_c10_dp_rbr,
> -	&mtl_c10_dp_hbr1,
> -	&mtl_c10_dp_hbr2,
> -	&mtl_c10_dp_hbr3,
> -	NULL,
> -};
> -
> -static const struct intel_c10pll_state * const mtl_c10_edp_tables[] =3D =
{
> -	&mtl_c10_dp_rbr,
> -	&mtl_c10_edp_r216,
> -	&mtl_c10_edp_r243,
> -	&mtl_c10_dp_hbr1,
> -	&mtl_c10_edp_r324,
> -	&mtl_c10_edp_r432,
> -	&mtl_c10_dp_hbr2,
> -	&mtl_c10_edp_r675,
> -	&mtl_c10_dp_hbr3,
> -	NULL,
> +struct intel_cx0pll_params {
> +	const char *name;
> +	bool is_c10;
> +	bool is_hdmi;
> +	int clock_rate;
> +	union {
> +		const struct intel_c10pll_state *c10;
> +		const struct intel_c20pll_state *c20;
> +	};
> +};
> +
> +#define __C10PLL_PARAMS(__is_hdmi, __clock_rate, __state) { \
> +	.name =3D __stringify(__state), \
> +	.is_c10 =3D true, \
> +	.is_hdmi =3D __is_hdmi, \
> +	.clock_rate =3D __clock_rate, \
> +	.c10 =3D &__state, \
> +}
> +
> +#define __C20PLL_PARAMS(__is_hdmi, __clock_rate, __state)    { \
> +	.name =3D __stringify(__state), \
> +	.is_c10 =3D false, \
> +	.is_hdmi =3D __is_hdmi, \
> +	.clock_rate =3D __clock_rate, \
> +	.c20 =3D &__state, \
> +}
> +
> +#define C10PLL_HDMI_PARAMS(__clock_rate, __state)
> __C10PLL_PARAMS(true, __clock_rate, __state)
> +#define C10PLL_DP_PARAMS(__clock_rate, __state)
> __C10PLL_PARAMS(false, __clock_rate, __state)
> +
> +#define C20PLL_HDMI_PARAMS(__clock_rate, __state)
> __C20PLL_PARAMS(true, __clock_rate, __state)
> +#define C20PLL_DP_PARAMS(__clock_rate, __state)
> __C20PLL_PARAMS(false, __clock_rate, __state)
> +
> +static const struct intel_cx0pll_params mtl_c10_dp_tables[] =3D {
> +	C10PLL_DP_PARAMS(162000, mtl_c10_dp_rbr),
> +	C10PLL_DP_PARAMS(270000, mtl_c10_dp_hbr1),
> +	C10PLL_DP_PARAMS(540000, mtl_c10_dp_hbr2),
> +	C10PLL_DP_PARAMS(810000, mtl_c10_dp_hbr3),
> +	{}
> +};
> +
> +static const struct intel_cx0pll_params mtl_c10_edp_tables[] =3D {
> +	C10PLL_DP_PARAMS(162000, mtl_c10_dp_rbr),
> +	C10PLL_DP_PARAMS(216000, mtl_c10_edp_r216),
> +	C10PLL_DP_PARAMS(243000, mtl_c10_edp_r243),
> +	C10PLL_DP_PARAMS(270000, mtl_c10_dp_hbr1),
> +	C10PLL_DP_PARAMS(324000, mtl_c10_edp_r324),
> +	C10PLL_DP_PARAMS(432000, mtl_c10_edp_r432),
> +	C10PLL_DP_PARAMS(540000, mtl_c10_dp_hbr2),
> +	C10PLL_DP_PARAMS(675000, mtl_c10_edp_r675),
> +	C10PLL_DP_PARAMS(810000, mtl_c10_dp_hbr3),
> +	{}
>  };
>=20
>  /* C20 basic DP 1.4 tables */
> @@ -976,15 +1009,15 @@ static const struct intel_c20pll_state
> mtl_c20_dp_uhbr20 =3D {
>  		},
>  };
>=20
> -static const struct intel_c20pll_state * const mtl_c20_dp_tables[] =3D {
> -	&mtl_c20_dp_rbr,
> -	&mtl_c20_dp_hbr1,
> -	&mtl_c20_dp_hbr2,
> -	&mtl_c20_dp_hbr3,
> -	&mtl_c20_dp_uhbr10,
> -	&mtl_c20_dp_uhbr13_5,
> -	&mtl_c20_dp_uhbr20,
> -	NULL,
> +static const struct intel_cx0pll_params mtl_c20_dp_tables[] =3D {
> +	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
> +	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
> +	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
> +	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
> +	C20PLL_DP_PARAMS(1000000, mtl_c20_dp_uhbr10),
> +	C20PLL_DP_PARAMS(1350000, mtl_c20_dp_uhbr13_5),
> +	C20PLL_DP_PARAMS(2000000, mtl_c20_dp_uhbr20),
> +	{}
>  };
>=20
>  /*
> @@ -1116,17 +1149,17 @@ static const struct intel_c20pll_state
> xe2hpd_c20_edp_r675 =3D {
>  		  },
>  };
>=20
> -static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] =
=3D {
> -	&mtl_c20_dp_rbr,
> -	&xe2hpd_c20_edp_r216,
> -	&xe2hpd_c20_edp_r243,
> -	&mtl_c20_dp_hbr1,
> -	&xe2hpd_c20_edp_r324,
> -	&xe2hpd_c20_edp_r432,
> -	&mtl_c20_dp_hbr2,
> -	&xe2hpd_c20_edp_r675,
> -	&mtl_c20_dp_hbr3,
> -	NULL,
> +static const struct intel_cx0pll_params xe2hpd_c20_edp_tables[] =3D {
> +	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
> +	C20PLL_DP_PARAMS(216000, xe2hpd_c20_edp_r216),
> +	C20PLL_DP_PARAMS(243000, xe2hpd_c20_edp_r243),
> +	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
> +	C20PLL_DP_PARAMS(324000, xe2hpd_c20_edp_r324),
> +	C20PLL_DP_PARAMS(432000, xe2hpd_c20_edp_r432),
> +	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
> +	C20PLL_DP_PARAMS(675000, xe2hpd_c20_edp_r675),
> +	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
> +	{}
>  };
>=20
>  static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 =3D { @@ -
> 1154,30 +1187,30 @@ static const struct intel_c20pll_state
> xe2hpd_c20_dp_uhbr13_5 =3D {
>  		},
>  };
>=20
> -static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] =
=3D {
> -	&mtl_c20_dp_rbr,
> -	&mtl_c20_dp_hbr1,
> -	&mtl_c20_dp_hbr2,
> -	&mtl_c20_dp_hbr3,
> -	&mtl_c20_dp_uhbr10,
> -	&xe2hpd_c20_dp_uhbr13_5,
> -	NULL,
> +static const struct intel_cx0pll_params xe2hpd_c20_dp_tables[] =3D {
> +	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
> +	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
> +	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
> +	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
> +	C20PLL_DP_PARAMS(1000000, mtl_c20_dp_uhbr10),
> +	C20PLL_DP_PARAMS(1350000, xe2hpd_c20_dp_uhbr13_5),
> +	{}
>  };
>=20
> -static const struct intel_c20pll_state * const xe3lpd_c20_dp_edp_tables[=
] =3D {
> -	&mtl_c20_dp_rbr,
> -	&xe2hpd_c20_edp_r216,
> -	&xe2hpd_c20_edp_r243,
> -	&mtl_c20_dp_hbr1,
> -	&xe2hpd_c20_edp_r324,
> -	&xe2hpd_c20_edp_r432,
> -	&mtl_c20_dp_hbr2,
> -	&xe2hpd_c20_edp_r675,
> -	&mtl_c20_dp_hbr3,
> -	&mtl_c20_dp_uhbr10,
> -	&xe2hpd_c20_dp_uhbr13_5,
> -	&mtl_c20_dp_uhbr20,
> -	NULL,
> +static const struct intel_cx0pll_params xe3lpd_c20_dp_edp_tables[] =3D {
> +	C20PLL_DP_PARAMS(162000, mtl_c20_dp_rbr),
> +	C20PLL_DP_PARAMS(216000, xe2hpd_c20_edp_r216),
> +	C20PLL_DP_PARAMS(243000, xe2hpd_c20_edp_r243),
> +	C20PLL_DP_PARAMS(270000, mtl_c20_dp_hbr1),
> +	C20PLL_DP_PARAMS(324000, xe2hpd_c20_edp_r324),
> +	C20PLL_DP_PARAMS(432000, xe2hpd_c20_edp_r432),
> +	C20PLL_DP_PARAMS(540000, mtl_c20_dp_hbr2),
> +	C20PLL_DP_PARAMS(675000, xe2hpd_c20_edp_r675),
> +	C20PLL_DP_PARAMS(810000, mtl_c20_dp_hbr3),
> +	C20PLL_DP_PARAMS(1000000, mtl_c20_dp_uhbr10),
> +	C20PLL_DP_PARAMS(1350000, xe2hpd_c20_dp_uhbr13_5),
> +	C20PLL_DP_PARAMS(2000000, mtl_c20_dp_uhbr20),
> +	{}
>  };
>=20
>  /*
> @@ -1715,53 +1748,53 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_593407 =3D {
>  	.pll[15] =3D 0x08, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D 0=
x84, .pll[19]
> =3D 0x23,  };
>=20
> -static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] =3D=
 {
> -	&mtl_c10_hdmi_25_2, /* Consolidated Table */
> -	&mtl_c10_hdmi_27_0, /* Consolidated Table */
> -	&mtl_c10_hdmi_27027,
> -	&mtl_c10_hdmi_28320,
> -	&mtl_c10_hdmi_30240,
> -	&mtl_c10_hdmi_31500,
> -	&mtl_c10_hdmi_36000,
> -	&mtl_c10_hdmi_40000,
> -	&mtl_c10_hdmi_49500,
> -	&mtl_c10_hdmi_50000,
> -	&mtl_c10_hdmi_57284,
> -	&mtl_c10_hdmi_58000,
> -	&mtl_c10_hdmi_65000,
> -	&mtl_c10_hdmi_71000,
> -	&mtl_c10_hdmi_74176,
> -	&mtl_c10_hdmi_74_25, /* Consolidated Table */
> -	&mtl_c10_hdmi_75000,
> -	&mtl_c10_hdmi_78750,
> -	&mtl_c10_hdmi_85500,
> -	&mtl_c10_hdmi_88750,
> -	&mtl_c10_hdmi_106500,
> -	&mtl_c10_hdmi_108000,
> -	&mtl_c10_hdmi_115500,
> -	&mtl_c10_hdmi_119000,
> -	&mtl_c10_hdmi_135000,
> -	&mtl_c10_hdmi_138500,
> -	&mtl_c10_hdmi_147160,
> -	&mtl_c10_hdmi_148352,
> -	&mtl_c10_hdmi_148_5, /* Consolidated Table */
> -	&mtl_c10_hdmi_154000,
> -	&mtl_c10_hdmi_162000,
> -	&mtl_c10_hdmi_167000,
> -	&mtl_c10_hdmi_197802,
> -	&mtl_c10_hdmi_198000,
> -	&mtl_c10_hdmi_209800,
> -	&mtl_c10_hdmi_241500,
> -	&mtl_c10_hdmi_262750,
> -	&mtl_c10_hdmi_268500,
> -	&mtl_c10_hdmi_296703,
> -	&mtl_c10_hdmi_297000,
> -	&mtl_c10_hdmi_319750,
> -	&mtl_c10_hdmi_497750,
> -	&mtl_c10_hdmi_592000,
> -	&mtl_c10_hdmi_593407,
> -	&mtl_c10_hdmi_594, /* Consolidated Table */
> -	NULL,
> +static const struct intel_cx0pll_params mtl_c10_hdmi_tables[] =3D {
> +	C10PLL_HDMI_PARAMS(25200, mtl_c10_hdmi_25_2), /*
> Consolidated Table */
> +	C10PLL_HDMI_PARAMS(27000, mtl_c10_hdmi_27_0), /*
> Consolidated Table */
> +	C10PLL_HDMI_PARAMS(27027, mtl_c10_hdmi_27027),
> +	C10PLL_HDMI_PARAMS(28320, mtl_c10_hdmi_28320),
> +	C10PLL_HDMI_PARAMS(30240, mtl_c10_hdmi_30240),
> +	C10PLL_HDMI_PARAMS(31500, mtl_c10_hdmi_31500),
> +	C10PLL_HDMI_PARAMS(36000, mtl_c10_hdmi_36000),
> +	C10PLL_HDMI_PARAMS(40000, mtl_c10_hdmi_40000),
> +	C10PLL_HDMI_PARAMS(49500, mtl_c10_hdmi_49500),
> +	C10PLL_HDMI_PARAMS(50000, mtl_c10_hdmi_50000),
> +	C10PLL_HDMI_PARAMS(57284, mtl_c10_hdmi_57284),
> +	C10PLL_HDMI_PARAMS(58000, mtl_c10_hdmi_58000),
> +	C10PLL_HDMI_PARAMS(65000, mtl_c10_hdmi_65000),
> +	C10PLL_HDMI_PARAMS(71000, mtl_c10_hdmi_71000),
> +	C10PLL_HDMI_PARAMS(74176, mtl_c10_hdmi_74176),
> +	C10PLL_HDMI_PARAMS(74250, mtl_c10_hdmi_74_25), /*
> Consolidated Table */
> +	C10PLL_HDMI_PARAMS(75000, mtl_c10_hdmi_75000),
> +	C10PLL_HDMI_PARAMS(78750, mtl_c10_hdmi_78750),
> +	C10PLL_HDMI_PARAMS(85500, mtl_c10_hdmi_85500),
> +	C10PLL_HDMI_PARAMS(88750, mtl_c10_hdmi_88750),
> +	C10PLL_HDMI_PARAMS(106500, mtl_c10_hdmi_106500),
> +	C10PLL_HDMI_PARAMS(108000, mtl_c10_hdmi_108000),
> +	C10PLL_HDMI_PARAMS(115500, mtl_c10_hdmi_115500),
> +	C10PLL_HDMI_PARAMS(119000, mtl_c10_hdmi_119000),
> +	C10PLL_HDMI_PARAMS(135000, mtl_c10_hdmi_135000),
> +	C10PLL_HDMI_PARAMS(138500, mtl_c10_hdmi_138500),
> +	C10PLL_HDMI_PARAMS(147160, mtl_c10_hdmi_147160),
> +	C10PLL_HDMI_PARAMS(148352, mtl_c10_hdmi_148352),
> +	C10PLL_HDMI_PARAMS(148500, mtl_c10_hdmi_148_5), /*
> Consolidated Table */
> +	C10PLL_HDMI_PARAMS(154000, mtl_c10_hdmi_154000),
> +	C10PLL_HDMI_PARAMS(162000, mtl_c10_hdmi_162000),
> +	C10PLL_HDMI_PARAMS(167000, mtl_c10_hdmi_167000),
> +	C10PLL_HDMI_PARAMS(197802, mtl_c10_hdmi_197802),
> +	C10PLL_HDMI_PARAMS(198000, mtl_c10_hdmi_198000),
> +	C10PLL_HDMI_PARAMS(209800, mtl_c10_hdmi_209800),
> +	C10PLL_HDMI_PARAMS(241500, mtl_c10_hdmi_241500),
> +	C10PLL_HDMI_PARAMS(262750, mtl_c10_hdmi_262750),
> +	C10PLL_HDMI_PARAMS(268500, mtl_c10_hdmi_268500),
> +	C10PLL_HDMI_PARAMS(296703, mtl_c10_hdmi_296703),
> +	C10PLL_HDMI_PARAMS(297000, mtl_c10_hdmi_297000),
> +	C10PLL_HDMI_PARAMS(319750, mtl_c10_hdmi_319750),
> +	C10PLL_HDMI_PARAMS(497750, mtl_c10_hdmi_497750),
> +	C10PLL_HDMI_PARAMS(592000, mtl_c10_hdmi_592000),
> +	C10PLL_HDMI_PARAMS(593407, mtl_c10_hdmi_593407),
> +	C10PLL_HDMI_PARAMS(594000, mtl_c10_hdmi_594), /*
> Consolidated Table */
> +	{}
>  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_25_175 =3D { @@ -201=
4,21
> +2047,21 @@ static const struct intel_c20pll_state mtl_c20_hdmi_1200 =3D =
{
>  		},
>  };
>=20
> -static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] =3D=
 {
> -	&mtl_c20_hdmi_25_175,
> -	&mtl_c20_hdmi_27_0,
> -	&mtl_c20_hdmi_74_25,
> -	&mtl_c20_hdmi_148_5,
> -	&mtl_c20_hdmi_594,
> -	&mtl_c20_hdmi_300,
> -	&mtl_c20_hdmi_600,
> -	&mtl_c20_hdmi_800,
> -	&mtl_c20_hdmi_1000,
> -	&mtl_c20_hdmi_1200,
> -	NULL,
> +static const struct intel_cx0pll_params mtl_c20_hdmi_tables[] =3D {
> +	C20PLL_HDMI_PARAMS(25175, mtl_c20_hdmi_25_175),
> +	C20PLL_HDMI_PARAMS(27000, mtl_c20_hdmi_27_0),
> +	C20PLL_HDMI_PARAMS(74250, mtl_c20_hdmi_74_25),
> +	C20PLL_HDMI_PARAMS(148500, mtl_c20_hdmi_148_5),
> +	C20PLL_HDMI_PARAMS(594000, mtl_c20_hdmi_594),
> +	C20PLL_HDMI_PARAMS(300000, mtl_c20_hdmi_300),
> +	C20PLL_HDMI_PARAMS(600000, mtl_c20_hdmi_600),
> +	C20PLL_HDMI_PARAMS(800000, mtl_c20_hdmi_800),
> +	C20PLL_HDMI_PARAMS(1000000, mtl_c20_hdmi_1000),
> +	C20PLL_HDMI_PARAMS(1200000, mtl_c20_hdmi_1200),
> +	{}
>  };
>=20
> -static const struct intel_c10pll_state * const *
> +static const struct intel_cx0pll_params *
>  intel_c10pll_tables_get(const struct intel_crtc_state *crtc_state,
>  			struct intel_encoder *encoder)
>  {
> @@ -2183,16 +2216,16 @@ static int intel_c20pll_calc_port_clock(const
> struct intel_c20pll_state *pll_sta
>   * intel_c20pll_calc_state_from_table().
>   */
>  static int intel_c10pll_calc_state_from_table(struct intel_encoder *enco=
der,
> -					      const struct intel_c10pll_state *
> const *tables,
> +					      const struct intel_cx0pll_params
> *tables,
>  					      bool is_dp, int port_clock, int
> lane_count,
>  					      struct intel_cx0pll_state
> *pll_state)  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	int i;
>=20
> -	for (i =3D 0; tables[i]; i++) {
> -		if (port_clock =3D=3D tables[i]->clock) {
> -			pll_state->c10 =3D *tables[i];
> +	for (i =3D 0; tables[i].name; i++) {
> +		if (port_clock =3D=3D tables[i].clock_rate) {
> +			pll_state->c10 =3D *tables[i].c10;
>  			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
>  			intel_c10pll_update_pll(encoder, pll_state);
>=20
> @@ -2214,7 +2247,7 @@ static int intel_c10pll_calc_state(const struct
> intel_crtc_state *crtc_state,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
> -	const struct intel_c10pll_state * const *tables;
> +	const struct intel_cx0pll_params *tables;
>  	int err;
>=20
>  	tables =3D intel_c10pll_tables_get(crtc_state, encoder); @@ -2505,7
> +2538,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_displa=
y
> *display,
>  	return 0;
>  }
>=20
> -static const struct intel_c20pll_state * const *
> +static const struct intel_cx0pll_params *
>  intel_c20_pll_tables_get(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
> @@ -2673,20 +2706,20 @@ static void
> intel_c20_program_vdr_params(struct intel_encoder *encoder,
>  		      MB_WRITE_COMMITTED);
>  }
>=20
> -static const struct intel_c20pll_state *
> +static const struct intel_cx0pll_params *
>  intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
> -	const struct intel_c20pll_state * const *tables;
> +	const struct intel_cx0pll_params *tables;
>  	int i;
>=20
>  	tables =3D intel_c20_pll_tables_get(crtc_state, encoder);
>  	if (!tables)
>  		return NULL;
>=20
> -	for (i =3D 0; tables[i]; i++)
> -		if (crtc_state->port_clock =3D=3D tables[i]->clock)
> -			return tables[i];
> +	for (i =3D 0; tables[i].name; i++)
> +		if (crtc_state->port_clock =3D=3D tables[i].clock_rate)
> +			return &tables[i];
>=20
>  	return NULL;
>  }
> @@ -2695,13 +2728,13 @@ static int
> intel_c20pll_calc_state_from_table(const struct intel_crtc_state *crt
>  					      struct intel_encoder *encoder,
>  					      struct intel_cx0pll_state
> *pll_state)  {
> -	const struct intel_c20pll_state *table;
> +	const struct intel_cx0pll_params *table;
>=20
>  	table =3D intel_c20_pll_find_table(crtc_state, encoder);
>  	if (!table)
>  		return -EINVAL;
>=20
> -	pll_state->c20 =3D *table;
> +	pll_state->c20 =3D *table->c20;
>=20
>  	intel_cx0pll_update_ssc(encoder, pll_state,
> intel_crtc_has_dp_encoder(crtc_state));
>=20
> --
> 2.34.1

