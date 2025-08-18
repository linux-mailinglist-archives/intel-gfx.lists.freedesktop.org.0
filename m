Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 495D8B29F33
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 12:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F78610E425;
	Mon, 18 Aug 2025 10:37:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K+H7Z55T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAEEA10E1CA;
 Mon, 18 Aug 2025 10:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755513437; x=1787049437;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hUtnF0NU75QKE6spAzCpaxQyJ9aBzXT8q8tX9dRq5AM=;
 b=K+H7Z55TSjr4/qJFSWCRoBG6DMAyDM1hGhSfhxlBX+jz4Ko/lAYiWPfJ
 cleXpdUbBmbrU5PuUdACyWVUvGIw5o44+EftZ5cbM6vwQgD8pO4gQtuia
 ZhSGFTkfFO/DB1CzrOcxeUnwnU1ZamdF8TEkPcsL2zLf8NbQFDlIY7Qo0
 i0COP3NBmLPYmHmHOFz8I2u7SnMaKJCKFBiB4u/cEhXt2Fxqe+6d20KT2
 dlxUwFkzmlpTkL8TYQfypKh6WVDtGmfheJe0j28YAz/OdLFYDSDYBS4Wl
 0FR91F6Y2UlSa61kJj3rd3MDDsVh70bz5l4Amdpuah7dMg1Ty+omymPPd Q==;
X-CSE-ConnectionGUID: F/o07L72SLmL6NDM80t/sQ==
X-CSE-MsgGUID: NsDXOEblQi6LX5oqchSEkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69107377"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69107377"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:37:16 -0700
X-CSE-ConnectionGUID: tMvbTgXxTAq2j0DfAgfPcg==
X-CSE-MsgGUID: 738TrXT0SWei6mQgGSzWeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167785074"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:37:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 03:37:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 18 Aug 2025 03:37:16 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.89)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 18 Aug 2025 03:37:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B0qQA2ZxoKN0fQuzj/a+VxUgv24n2BcbglzkpZmZNi1UoCA6JUxqf6uvzuEsKsdLuJ5rJViXX6EKQzbl0LsgwPlbDP4Pj6Q6uHO8M0YHpEdsVHWm+tf0HMeXMYWkqnzeBI9/fisU31fG+nviWHQDO4AiV7YDFyLZLXMgNDZ3yLCLFXOlqhT0VsvRtojzJf2G8Cu+LC2AjIsLRxj6O29+bDVx0zNHGdHrN85rb3v701VzJ8Mp0V+SCkIuwb1JwFKAf4Gl3CxP2C9n8cvUe/kNtR2tFv6d1Nq8wUI5s8m7GjoNcec+bC/6js8FfFG3gaXJx5Ho3ZHSum1TT8Xm7GeOjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pgkmcdKaHJbEkgWOCcvcEsYYutGN5L9CIG2jAhg54mM=;
 b=IhUdzU1IFl+ur7IRNkhZTX4DHXnpHDur/zcX3BKYUIK8w7g9ep0RlRtzrj6eKyJTUVcd+RRxHCgV0gI97Dm4zkAYlAvV55QWYfslDSW5tdN7n/NPkDIklMl/jZslK2ZKNeGYc/2bv81c8FFMQ1eTgkU8+cgbsUjknn2rnxe+MDFVs/tFStUCxcpore90+RwAAgwsX1RwwNetx6db2hwmCCUHKDBjxDVyGuqyNBsP9k+6hWAVMevXQeUAzly+krw8AGkB9D+56MKbHabMt3cKZt82CsbHcvmFQaNzrPgdajYS31FZRCZSqa+f8mjobf8AhijN/uvBspTCAiXUazJq7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by IA3PR11MB9160.namprd11.prod.outlook.com (2603:10b6:208:57a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 10:37:13 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9031.023; Mon, 18 Aug 2025
 10:37:13 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
Thread-Topic: [PATCH 04/12] drm/i915/display: Extract helpers to set
 dsc/scaler prefill latencies
Thread-Index: AQHcEBQmjyDASK1jJk6zdtJD7pDsNLRoN+TQ
Date: Mon, 18 Aug 2025 10:37:13 +0000
Message-ID: <IA1PR11MB634877E0D72DB122A36C2D4EB231A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
 <20250818073128.2319762-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250818073128.2319762-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|IA3PR11MB9160:EE_
x-ms-office365-filtering-correlation-id: 034ad611-80a9-4ad4-f543-08ddde4331d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?36SRFoXn2FacmZK5aFm4mdhPTGTlR3D9MlZClM/Ns9T6bs/0RzDK5sjj3W2T?=
 =?us-ascii?Q?wnZltGYjiMVGs9PVH0GEHyZAHNjimWKy/g/PobcyKNBRxzMIeHHd8n2K5kyL?=
 =?us-ascii?Q?2/+frz5ny3QKpzZrJaBsI2F/nOyvLTNRVO2X0v/q9chtEp2oxivquD2B38Un?=
 =?us-ascii?Q?UhDQEanp4Goz8cO5U4a1kQbsbKswI6sOsMEX6IPnUSBrWDteHR6kj6VGXE6I?=
 =?us-ascii?Q?iNNZqsw3D6shX41+exleIesnG0sorHPJHAryw898V0Y3qcJse3DWKndt/ckK?=
 =?us-ascii?Q?VcqZfpJem3JEkLMgpKIhC97VAHJbY7TL/quNgW1foitV0oQiPRk0Wj+E5mvK?=
 =?us-ascii?Q?WbNa4wAzXLFTxL6p06dP5Zdt27kP80ggEeosvtqHWNpeREXIuyC+q1tSsS/O?=
 =?us-ascii?Q?LtpWnMpvP2iaIkynQ938Qj396n7fAATjvSL/nIr3O6wenwXDMEWTYoB6BhxC?=
 =?us-ascii?Q?jItUGEFjKf8MEbuepk5mxdfArosTzXKoW/+3p5qRUXkGBmPftU8NanyvUTFv?=
 =?us-ascii?Q?kf/tUcrWewbkPfEuxTl9sy3WpMqxzsM9YzKavKRbhjXoBScRRDwg6T5/IgoN?=
 =?us-ascii?Q?XaXJNQO3ivdyO31STaaCODfZx0uzEkknv8howd5LgYrpBV/VlLXf0bl760Ao?=
 =?us-ascii?Q?HUWPZwlN1WPO0+KXd8njbsrAOoXVP6NZ78mtnFbz87hbWRMsNQBwcVzuLe6x?=
 =?us-ascii?Q?JYksr9uKw4ITKwTZruNulDyeGn9jqbyqOfxNiI6gJcgEvVtaoWYvrMfjaYtJ?=
 =?us-ascii?Q?kUqyQ401aPNURp4uy6AdPCaWpz3tB6wHZJkCejM8jJzjMhKrlUjLoDfsJgWN?=
 =?us-ascii?Q?MU1xF8M+mjQKFLUhZNHTVI4PpRJfmloLLM7nkDIc6U9yfpTCIrr1+0Gfkh6k?=
 =?us-ascii?Q?zkltoVi02JVz+ypEnF7xjXT5FpuyLoc2BvGy4SoWECxBbrSA2GgV7GFM0lpU?=
 =?us-ascii?Q?xQvAaKpn7pWNn6jI9zs6x4I86/Vi30zfMQc61BlYnZZhNe1IE1HtKbGJjR35?=
 =?us-ascii?Q?14RUOIFIqPRZgb5wQoDsp6QWuMrFLSjCvbe9gvBHa9h2l2GVhXozpQdud392?=
 =?us-ascii?Q?tp9Zzqbkpu7ltyKpMQ7rso0lyNtN+5wxYeUaCoYLijaYHism1rs0XDxtC1uS?=
 =?us-ascii?Q?H84/kGoC270A+3vt8yFVBhrQZ9KYDVkOBUoDc6QGcz69CjlYrJxAtKX6eKHp?=
 =?us-ascii?Q?BHBkdKNY5zZRi1tm447fo6W423QhQKbfGqx+jqu4snHVpTXWEOUSzRqDlqbd?=
 =?us-ascii?Q?kQp5xPO5NPBCI7p/tkQnp47ccGD21js+tKJ8/MYFsEXvlXKkW++cRflJ04eh?=
 =?us-ascii?Q?QGWil61E6KjEIMHLU3Hb1qa0brFSV3Yr2KUZriTp3cdT7+7eIqhcwU3CFrS1?=
 =?us-ascii?Q?II1bSQ2eKhFZ2sPyNXR8Hzw9cma4WOJ14ZYpL31+4HgSWcd3I3uCbkeh7ugw?=
 =?us-ascii?Q?poDyMzYQzxnr38QsaBaR4ALonWIZlS9MVg71iHPGsZx4vW48n/1KE9kzbn8h?=
 =?us-ascii?Q?sYgnx/ZGsEuocLg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3Z2WtLg7Hzs5DTYhQn4FhEUiQ+ajdcqeMPK2L22TZSDEmwIWL8d04uo21CAE?=
 =?us-ascii?Q?hX6J7ZOIothPAGFAjb5ztNAhfx/fUbdZ1QvATOHANG8iUyuZb5CyvvWDXlVP?=
 =?us-ascii?Q?mw+J71y8hnYkMvWHP0sAC6qGl8iO+kOJQrbn/1wxb55RiHGohQAO0MxmJXVB?=
 =?us-ascii?Q?YkjFKgl5RRSO3ax7u9n9wRurZcI16s/Z6aJmDISrxzYi+5+yRhJX6Ff2JRyh?=
 =?us-ascii?Q?2QGurJfSyP178aztQ/PWReZ+J2kXFDjDAhJGEd7lyDwTVfX7iD8IdYhXuwp5?=
 =?us-ascii?Q?fRX7vWm1LAA/kM4QyHjWbILnYLaEpRDgUYYGU/d8IcQEZP4qZnLU4BB6E5Lk?=
 =?us-ascii?Q?1gbibXZWSZZ3Eiwo5diMs3JDTANVpkSxjSEXc6AQzroZmpxbuXoqhr/3ttBZ?=
 =?us-ascii?Q?ZC9ToZWLhVWYRkj/hUp/ghQ0AvrwTKJIRrzi1cZINYt87hKFt6LVbMQ7cGeA?=
 =?us-ascii?Q?kkZ/OK1QgPEMvWFJeZqnUKLL5Q0BcOkz3w19NU+i5nu1I3pZhSVDyazN6VWM?=
 =?us-ascii?Q?uytKyGUmLShbd7b7TjS+F4GEi45HFAGuQjhQjU6Rviz1D5gR7w9pAaip1xUf?=
 =?us-ascii?Q?wBJXrp7AX0Oy/NnmK4w5JjUMwjOHbJrVpWTa+heedFgoWEtr8LUSW2bu1dyD?=
 =?us-ascii?Q?Ryjm1dCzpmyjSUpTOnlxqSWD2wQR5UZ3VbIrVPHNF6XpzP5hupSJQ8Uigy6q?=
 =?us-ascii?Q?HmpYgRfOxl59n3qgratyEbjQjJWauIPsjnfx0UFiU1CdE7yQvASJ7y0jer+1?=
 =?us-ascii?Q?KLQEykwT6rZfJRYiTPxrAdWi/E+6W/PFCaT7KUhn0L5ULGxDezTydahxYvMZ?=
 =?us-ascii?Q?rSfwSZQBga8LbUrsPA8A510saBbZU0G2BxD8BAqnE9DXvrAZmh2Fd5iZnIO5?=
 =?us-ascii?Q?ttTnRM6Ty4Y7IRx6CiYGUZDMvNKF4r3O25M+NhbQ37DGqpYtuIdyeQCj2LhN?=
 =?us-ascii?Q?TAVwWMc6vdZCUiAQ/6J3JPQJINKOmyB1phICioAD7Z3K8duL5uiC6c/YQrAd?=
 =?us-ascii?Q?T41U4e7Rs5eKai3SKkAwvfp/jWRpRbLMnJIRF4zCBZnjgYlSPxjkmPKE2auF?=
 =?us-ascii?Q?H2nTMMxdlsbEsedjCe3GaFfpXLXPOJeR+dQAY2uGvSj27aSdZdwTQLlKnk5c?=
 =?us-ascii?Q?GqkYJubzyZboDQDqNF3cXnn+PqwBY+bBzeT1CMAB9+4ziEbMNK1hc6vYwxhU?=
 =?us-ascii?Q?jB1UNlrvk08E1sqiaOFcg1NHGWRGhxBaW9GFwlNarhjV3equRZ74L2EeKXsE?=
 =?us-ascii?Q?BTtTlBysi/itxwaNMGNjl7kz+7BPngwU7WJWqafrqetSaBYp3s6pcvBEli7G?=
 =?us-ascii?Q?0f2kalLPutpyn7GSI0PULzfNzVSYZTwtUbHCKEaYg91NTi1e6iqjJ2u0lwim?=
 =?us-ascii?Q?am4ISIcQf3kCYORFSRTjT2t5+r5vZOJrSquflNzxsFQLGiKFBVQidIFiUKab?=
 =?us-ascii?Q?gcV493aumuGabJNbmLRDJVwB5vTK3xximRsu4HqpL0B3577hcREQCSHiHZIv?=
 =?us-ascii?Q?Utoj0TqD88npJUeAATQAQPNpyGQa2dVau+0N4a2vgcYeYU9KCdsTeCcVt6jM?=
 =?us-ascii?Q?KephVxT4LryTip8H9FeE18SG126QqsB4SBFV227J6Y9KkL5OHt7sQ4vAqOCZ?=
 =?us-ascii?Q?wL9MOxx8e7mbJVXWoJ6OgZ6l0JrcebaMHGtQYel/EzSTyZzG0/YQfyoOS4/a?=
 =?us-ascii?Q?5Ot3D7Q0OwOZlflLEOqdxHG+oEY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 034ad611-80a9-4ad4-f543-08ddde4331d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2025 10:37:13.6505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tpziEp19L8i8MOZVxd5S1w42h9CRmxFdA9l+sCP5UXuBSgwvybtz7QQwHh+EW/V2LuiKaCmuMJR3V0Ys1Gaq48XuiiNy0sQECS9GKczGScrlEqTStyU25c/xoTy5tfEx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9160
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 18 August 2025 13:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scale=
r prefill
> latencies
>=20
> Currently dsc/scaler prefill latencies are handled during watermark calcu=
lations.
> With the optimized guardband, we need to compute the latencies to find th=
e
> minimum guardband that works for most cases.
> Extract the helpers to compute these latencies, so that they can be used =
while
> computing vrr guardband.
>=20
> While at it, put declarations in reverse xmas tree order for better redab=
ility.
>=20
> v2: Initialize {h,v}scale_k to 0, and simplify the check in
> intel_display_scaler_prefill_latency(). (Mitul)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++
> drivers/gpu/drm/i915/display/intel_display.h |  8 ++++
> drivers/gpu/drm/i915/display/skl_watermark.c | 46 +++++++++-----------
>  3 files changed, 62 insertions(+), 25 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c1a3a95c65f0..62ec95a75154 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8328,3 +8328,36 @@ bool intel_scanout_needs_vtd_wa(struct
> intel_display *display)
>=20
>  	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);  }
> +
> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscal=
e, u64
> vscale,
> +					 int chroma_downscaling_factor,
> +					 int cdclk_prefill_adjustment,
> +					 int linetime)
> +{
> +	int scaler_prefill_latency;
> +
> +	scaler_prefill_latency =3D 4 * linetime +
> +				 DIV_ROUND_UP_ULL((4 * linetime * hscale *
> vscale *
> +						   chroma_downscaling_factor),
> 1000000);
> +
> +	scaler_prefill_latency *=3D cdclk_prefill_adjustment;
> +
> +	return scaler_prefill_latency;
> +}
> +
> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale,=
 u64
> *vscale,
> +				      int chroma_downscaling_factor,
> +				      int cdclk_prefill_adjustment,
> +				      int linetime)
> +{
> +	int dsc_prefill_latency;
> +
> +	dsc_prefill_latency =3D DIV_ROUND_UP(15 * linetime *
> +chroma_downscaling_factor, 10);
> +
> +	for (int i =3D 0; i < num_scaler_users; i++)
> +		dsc_prefill_latency =3D DIV_ROUND_UP_ULL(dsc_prefill_latency *
> hscale[i] * vscale[i],
> +						       1000000);
> +	dsc_prefill_latency *=3D cdclk_prefill_adjustment;
> +
> +	return dsc_prefill_latency;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 37e2ab301a80..8d094b0a8c6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -559,5 +559,13 @@ bool assert_port_valid(struct intel_display *display=
,
> enum port port);
>=20
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 hscal=
e, u64
> vscale,
> +					 int chroma_downscaling_factor,
> +					 int cdclk_prefill_adjustment,
> +					 int linetime);
> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 *hscale,=
 u64
> *vscale,
> +				      int chroma_downscaling_factor,
> +				      int cdclk_prefill_adjustment,
> +				      int linetime);
>=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 97b42bbf5642..f0213785e9fc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2179,11 +2179,12 @@ cdclk_prefill_adjustment(const struct
> intel_crtc_state *crtc_state)  static int  dsc_prefill_latency(const stru=
ct
> intel_crtc_state *crtc_state, int linetime)  {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> +skl_scaler_chroma_downscale_factor(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	const struct intel_crtc_scaler_state *scaler_state =3D
> -					&crtc_state->scaler_state;
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> -	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>  	u32 dsc_prefill_latency =3D 0;
>=20
>  	if (!crtc_state->dsc.compression_enable || @@ -2191,18 +2192,16
> @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int lin=
etime)
>  	    num_scaler_users > crtc->num_scalers)
>  		return dsc_prefill_latency;
>=20
> -	dsc_prefill_latency =3D DIV_ROUND_UP(15 * linetime *
> chroma_downscaling_factor, 10);
> -
>  	for (int i =3D 0; i < num_scaler_users; i++) {
> -		u64 hscale_k, vscale_k;
> -
> -		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> -		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale, 1000) >> 16);
> -		dsc_prefill_latency =3D DIV_ROUND_UP_ULL(dsc_prefill_latency *
> hscale_k * vscale_k,
> -						       1000000);
> +		hscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale,
> +1000) >> 16);
>  	}
>=20
> -	dsc_prefill_latency *=3D cdclk_prefill_adjustment(crtc_state);
> +	dsc_prefill_latency =3D
> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						  chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						  linetime);
>=20
>  	return dsc_prefill_latency;
>  }
> @@ -2210,28 +2209,25 @@ dsc_prefill_latency(const struct intel_crtc_state
> *crtc_state, int linetime)  static int  scaler_prefill_latency(const stru=
ct
> intel_crtc_state *crtc_state, int linetime)  {
> -	const struct intel_crtc_scaler_state *scaler_state =3D
> -					&crtc_state->scaler_state;
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> +skl_scaler_chroma_downscale_factor(crtc_state);
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k =3D 0, vscale_k =3D 0;
>  	int scaler_prefill_latency =3D 0;
>=20
>  	if (!num_scaler_users)
>  		return scaler_prefill_latency;
>=20
> -	scaler_prefill_latency =3D 4 * linetime;
> -
>  	if (num_scaler_users > 1) {
> -		u64 hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> -		u64 vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
> -		int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> -		int latency;
> -
> -		latency =3D DIV_ROUND_UP_ULL((4 * linetime * hscale_k *
> vscale_k *
> -					    chroma_downscaling_factor),
> 1000000);
> -		scaler_prefill_latency +=3D latency;
> +		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> +		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale,
> +1000) >> 16);
>  	}
>=20
> -	scaler_prefill_latency *=3D cdclk_prefill_adjustment(crtc_state);
> +	scaler_prefill_latency =3D
> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						     chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						     linetime);

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>=20
>  	return scaler_prefill_latency;
>  }
> --
> 2.45.2

