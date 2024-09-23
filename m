Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FAD97E604
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:32:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57ADE10E388;
	Mon, 23 Sep 2024 06:32:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RVlwWYmq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74F2110E388;
 Mon, 23 Sep 2024 06:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727073164; x=1758609164;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ie2oQ1uc0KA0KZzylCyymah3yPjieJXx3Tj1V5iiD0Y=;
 b=RVlwWYmq1vIDYmFAQCL6iVNhjYwJFmtPA6fgpUXNN3PDNRsxYwFdgPo8
 I/UE96+S/kqNV0ZZPMNES67seEylZSDW93BeTpaOE+3NzLhn1QhyQmUrS
 a6SbqmL8x6YnKCOT8F3fabEE7wz6FyEhGv4e1ZrB0BWYru6/dNZb3gbLW
 FPRBa8vix2ySLiCiS2S004wZ7UDGvDBrOpVKi14pHlIH9P994IeOTpZph
 YqJOFciXwXRZNeynhGo8Qml4VjRYZo41RVz8mbOXUzItzxxQD6zJS1bqF
 wnIC+ecy9bVyvbsZfCN4erdG97TCHxxIa1KI2oMjCnHz30FvCoExcWEKi w==;
X-CSE-ConnectionGUID: SngnjfEES3C3dneX35/zXw==
X-CSE-MsgGUID: EZ0bqhf4QMuVs+JXn5j9DA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="51424373"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="51424373"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:32:44 -0700
X-CSE-ConnectionGUID: /TBGrBtfQT+MnY4pTR1ZFw==
X-CSE-MsgGUID: 7FcrCyoRRcmvFeZ9depumA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="70858483"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:32:44 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:32:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:32:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:32:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:32:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:32:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TdTfkF0AYdbPUy4hXuJkjAFAUFJshRcyFD8MNYuLHv9wJeRXGym+GRZAfFNSCyAjA3JBnX4pqwb+m95PCL0GJWrY9faufcApC3YG/qhMC3olmjGcO57iSI8XuwfVB0GMAjkOTxxQZ/vP7BbesztMNLj9+irdwFQ+1jAigorfNnj1ZKmsqiToz4yCFmZTR9rLPHTvXG4Al4GfbqdaGSwluf90s9I/uaLlTlOtxE2Z+Oxmqf+8ORNAhy9OJdIwPQj2VtDnghqF1CB6OwGxkfjjAX+V2avQNZEE4hOR/CfrexiibaWxWjYbsDjKQTMDLpVM2pOMefYUfBbS+T7mK9FjHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sjidRAMCI3y5c/Yhvhb94r702tm/76iMR6edVnGXWfo=;
 b=II80roCXZFZDfK4E+7/cW93es78ucMsqoecZfDiNIvBcl9dam46qMD2qB6OTZZxY27vcL2tvIBWBWs69ij2uwaAN3xUQsYq0K6bJnagAKgbpfxLR30chnoP25hhJJaBACe5GEcsZ7tB4Lv+9NHv/F8mmhIOaCUQBYv+dqb9aUZ5WMGiIzOZfaurt4POK6zXK7hlkE8V/gj0qdLbFc8KZOSmCxg5ccd64KLwIrmA08hnHr59pt9uPHwnK5LE2CwSPA+Cik1yrgCiG3DFJAzW/17xOswGOaxFlQekisyYyMmJmzub9AWSrAOcVkjYGFYqz6EKMC6lCiPPJ5csupAIYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB7917.namprd11.prod.outlook.com (2603:10b6:208:3fe::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 06:32:40 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:32:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>, "Murthy,
 Arun R" <arun.r.murthy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLcqGgbxRpHh0iYwFS0SOqK2rJk91PAgAACrICAAAC4wA==
Date: Mon, 23 Sep 2024 06:32:39 +0000
Message-ID: <SN7PR11MB6750FE261A2A2A66761A35EDE36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com>
 <SN7PR11MB67504B125D9B035F37D79420E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <CH0PR11MB550849D56A0906235C115F27C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB550849D56A0906235C115F27C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB7917:EE_
x-ms-office365-filtering-correlation-id: c4bb99d7-20cb-49bf-145b-08dcdb998593
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FsbEo6JvO1fHVycYveDBN1FWprt+drUi67l4eme0+VtByYjV4dWeUoaO54sL?=
 =?us-ascii?Q?j9vqLFEBgPoezNJMG1AEoyVOjyzqu/5qFkVmzK4efHCwWomAML0yMJ5euibY?=
 =?us-ascii?Q?kJGe/ZnpYdixrbFswIzCvyccD9URgJjCdiaVBj2BG0g9wH8n27Ru9UJrjbB2?=
 =?us-ascii?Q?JvHc5HmMpjWrB2rI+haC6MsgcLBRYmwN8QtBZLLITMypwj6nx6iHnP3hweTQ?=
 =?us-ascii?Q?DgWbMMAfqshPR/oHC9W02MsYE3wntgWe/ZT1tGtPQD5HEAhFwz45xO8/ZVFF?=
 =?us-ascii?Q?SliQDdFEPXStS1n4vu9qvNAu42Ll4gryU9BA+PL2o/lJTIy0GXobAD8CcBmG?=
 =?us-ascii?Q?mTD+li76rIOtl4oOshI/GjS5Ah+txAjXjlyIIGGpdjcz+r38ofy065KzboFV?=
 =?us-ascii?Q?/bfmIgjFoaE3K6lu9U7j6cjJkWbSX3ZGBlzeil9yFRXpuBeqJ7NMBhATAQ6y?=
 =?us-ascii?Q?Z9g3yS1cI7qHD+SR6uOdhgpHFpEBs3qjV2ZSNf9PuZIWVjQFRx2NL/4qu9Ct?=
 =?us-ascii?Q?bEwwZa03uqHGd1BxGmJTCkPyY4vpjTAcWuvK0xZirEjVkeS8KehMrWhLfPgm?=
 =?us-ascii?Q?n6+YGjG5Lwu5bkwt8WYUj64byeuD0gncUhdg+jD17207ZJNFGFc6eqFnZ9WV?=
 =?us-ascii?Q?RZvcl7HalgR2naOwb66hV0hl2Xr9Kqa4QeVC8RNPGgv1AAnJlPtOaSjV88Lt?=
 =?us-ascii?Q?fNjCXKMHgNfjmWmNwm98/8Qq3scLH+yi1Psswx/JRmh79jBMy9V9VP5sdUwX?=
 =?us-ascii?Q?aosm7LAiDap+AXyMxTSn76hsgdv1qeqbZTyBOuV7Vh6EphMZ19PV9mTg28K0?=
 =?us-ascii?Q?KWdqQXqpK/YTSJCp0Qe9wx8rgKDLrQQtxrsmFoaoxG6iWZdU8RtreUFEdc3y?=
 =?us-ascii?Q?Ab2BmpKjvIx2e0jC07d/viky6gsNwZJDiEjWZhem9B/Ppl3aKO9C7xPYoWnN?=
 =?us-ascii?Q?718X5RPEgbc3gGsqeJ07aJdob6Qq5BjkhnxUQeDq6QnSkZMBE9NsQsXZweXA?=
 =?us-ascii?Q?GVQfsAi6ScjNjaq8g4NgpEkPVIZCSc8McgKMz0wquC3evzkMtl5WMKCFpYr6?=
 =?us-ascii?Q?+H/LPhBFssISIfpyiAU3Vrt7NwHzvExM8xBKBRzfmhhd1L9EWSnQSzhq9dcb?=
 =?us-ascii?Q?7D5v9iWQ0OpkjlIi0m29YBHMfIlL46vbHZpM0jyGO0k0xa5Yuyc1ztVXgV8d?=
 =?us-ascii?Q?qLXDTXfPievOTOH+Wo6/BZTy16TY6tjfiw6gkQiIT7PWEi1dFF/+6peP8Y/O?=
 =?us-ascii?Q?BR+mCieNMwJo9J3vdyZsAEaJEHaVw6I01+rB713YgHF4Y56H0MorpPzYsKGh?=
 =?us-ascii?Q?LfqfnSPHf65HLzDOcYecfhad2wTh7yysEBkg8KR3FqzCi00Rk0mJkukqSIjL?=
 =?us-ascii?Q?Cf7YsLViINNRq4W8ICKLdL/tC0ngldBkaKaabPSxtK9cYaYjuA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6hFiYglaORMmFQi2zgj9kt8u46MrKskPu64JAwI10oYlskd0QedoO4LNAgx6?=
 =?us-ascii?Q?9YLZ5UaqNnun9+mvtFah/k4f6pzBLsyiUCeTGwAnNQlJQQvjCUULqLPSSmr1?=
 =?us-ascii?Q?/FzwYAfnQ0rhFjhDQYWMP3NHYRxBVANfC9y8erCKECceTrE0BTF5zRfPbeUd?=
 =?us-ascii?Q?uOV2NLD2YkIifwwSaWU2UO1aDdC4UVdPRhTRknT495zVCMUomHgqli4pdg11?=
 =?us-ascii?Q?iVKs13thNC0R9fYZ0cN19SAZHQ3aC+0eKbeIssxIrCr6mDywOWiwGXLxQ+rV?=
 =?us-ascii?Q?dYobEJTRvH175yysN9wL8hIW/cQZtOePXs4W3Rx7JPEFJici0UqF/PafbCi0?=
 =?us-ascii?Q?yADpByXTZVRUDtBzBcMZ5qLzR0sJ5xY433QtrSYWENwzM3C3i8LhbNajuTN/?=
 =?us-ascii?Q?YbFvMK6LU/gtCU0fJWSA+5AAUL16zy5ZsirC5YxZp4yxuZ1HQYFnVx6A40O3?=
 =?us-ascii?Q?QxsBSSYVqSRBB1gPRBN/8dRydWx51nxHTInGjhaA581Z1Vzv1Ir32nCQ8kRF?=
 =?us-ascii?Q?IAaWibBnAoVkiaXcUvVglUVhOQlyAcWsCyKJLPLxRZZ7yIZNXMoxDCT5GiCE?=
 =?us-ascii?Q?52lZU2JCm2JzCBBr0ZaDv5F8S+iRstaKZebHyy92e3gL6X72sI1OfV1YiEyC?=
 =?us-ascii?Q?+dVFlZ9bh7Rfm3KwW8cU1YV+fXLCEKDb7iL+zj+HCcbN+/feUGZoJ/jdGRNy?=
 =?us-ascii?Q?XaiwTwA+jQf8/qli+UaI2rWoLY14zqKgcVBOeG20hkfnu69AeBy3WUE8fyH/?=
 =?us-ascii?Q?XnsO+yPnz3eU32HqPTxV5KR+0t0CQMbEmiP8BMmDJ+ikkDoaQnHSlEPyfYns?=
 =?us-ascii?Q?nXP8KFy+GRKB/HV6loe37SlahEATeOfzEX23dzlzCjDyuSQYHIf23kdILWfT?=
 =?us-ascii?Q?Zah6cQlSTgA335+ZyRFZg5a93naAYBnaVPJbhbCC7njfHHI26kIKJ6025Ofq?=
 =?us-ascii?Q?AG3ENowPi3cESghfb94tQkf75WbVAxSdTRgo+w5AZRk0qUfjPcREq1hqYTcD?=
 =?us-ascii?Q?O79Sbe5lhvMr1SwJdrVF61sPD1hZa7MmaRaxCMPU17EJjb9AafiOxYT8jwPp?=
 =?us-ascii?Q?gYqRuo2GviqIhm3+/QXgrJRNv9lPsWacPrDjGv0qzPhfVVaBNF/8ty5HeaV+?=
 =?us-ascii?Q?xOFxsCuq7EuA5GLsGMFVcnnvAiIosRhOttUGURIh9kQVH9NZuwe95jdHal3t?=
 =?us-ascii?Q?9TjZ3Ok29Aj7KrbVFKN0cKhhaS/3Ll4nx824N74Gvz+64iqK/aBo4y4uYmhr?=
 =?us-ascii?Q?1oyupQnS5brPuvpPiFBst/UxUC+JPP0e3sBgLx+PsPv5pXCX0XfyLwlSEsxg?=
 =?us-ascii?Q?8FhqVXiR67jZixpcJdhqbhWdoExH/Vvss4gYfYy7oKWDwNdpW0LJV7jACFd0?=
 =?us-ascii?Q?+SxxzBZPnBjTA/OcdUoXMB3+uJAjPlaFFUhuJxVWayB6fv7KjpHwurZ/nw9+?=
 =?us-ascii?Q?pS7Hl8aQUfLi8M2ZpNs2xiYULRr5nMUV1WbXKZ2UWfw8pXfTptnin2Mcz5om?=
 =?us-ascii?Q?rEUkV7wH5dCsdC6w1q6b3JROrg+LNcF1uzC9+e6gng+AEtku15Bl6uFjyLhc?=
 =?us-ascii?Q?AN/BV6e2bUcqCz16dfhTq3XtL9Q+xNweQkTm8Ksl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4bb99d7-20cb-49bf-145b-08dcdb998593
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:32:39.7123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rxs9q69zFMoRPA7F3ZH8IT77prESrNrgd03Ho/LxF/PsSljuStENJW7bhtlu2NQ1pjssd7M/LBr6rtRNkVBMlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7917
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
> From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Sent: Monday, September 23, 2024 11:59 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.org; intel-
> gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading =
the
> FFE preset
>=20
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Arun R Murthy
> > > Sent: Thursday, September 12, 2024 10:36 AM
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V,
> > > NagaVenkata <nagavenkata.srikanth.v@intel.com>
> > > Subject: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading
> > > the FFE preset
> > >
> > > DP Source should be reading AUX_RD interval after we get adjusted
> > > TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting in
> > > DP
> > > Source)
> >
> > I think mentioning the dp spec reference here would be helpful
> >
> Please refer to Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE
> Sequence of DP2.1a spec.

I think you can update your commit message to say DP2.1a spec Fig. 3-52

Regards,
Suraj Kandpal
>=20
> > >
> > > Signed-off-by: Srikanth V NagaVenkata
> > > <nagavenkata.srikanth.v@intel.com>
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++----=
--
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index f41b69840ad9..ca179bed46ad 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > > *intel_dp,
> > >  	for (try =3D 0; try < max_tries; try++) {
> > >  		fsleep(delay_us);
> > >
> > > -		/*
> > > -		 * The delay may get updated. The transmitter shall read the
> > > -		 * delay before link status during link training.
> > > -		 */
> > > -		delay_us =3D
> > > drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > > -
> > >  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux,
> > > link_status) < 0) {
> > >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> > status\n");
> > >  			return false;
> > > @@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > > *intel_dp,
> > >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX
> > FFE
> > > settings\n");
> > >  			return false;
> > >  		}
> > > +
> > > +		/*
> > > +		 * The delay may get updated. The transmitter shall read the
> > > +		 * delay before link status during link training.
> > > +		 */
> >
> > The comment needs to be updated as this is not being done before link
> > status Also a question does this not conflict with the requirement we
> > previously had (reading it before link status) ?
> >
> > Regards,
> > Suraj Kandpal
> >
> > Regards,
> > Suraj Kandpal
> >
> > > +		delay_us =3D
> > > drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > >  	}
> > >
> > >  	if (try =3D=3D max_tries) {
> > > --
> > > 2.25.1

