Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCD1K/R9cGktYAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 08:19:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AED52B85
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 08:19:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF4C10E08B;
	Wed, 21 Jan 2026 07:19:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NiMf8bhL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029A010E08B
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 07:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768979952; x=1800515952;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OHV4yqW//ZzIy3J4f6xDOHNF2k65RiaH45rO3OlKR7g=;
 b=NiMf8bhLmnX4W9FAtAcQ+fubR3HnUwC8DjJjKG/Sfsreh0DfQWSlWfy+
 CuUSSbCn7p7iKglskjc6FopUfnbHcHOWl4mUwutolL1LEtSGDOTgNIomy
 sVEOOkw30yYKgw01NFdRvjY69xJdp9pXHG1rnTIXTJJz6XiLLtXfVJHbO
 mcwIEayAzS4DQEEbzw9S0qP4UZYRLfI/w5tYsJGbeOYQ3gdf1rUclCmny
 kA5QFExFbZVpwA41sPj6gFzUFiu0YswhkdvMq+qKP68DOslyb6ZI38rBy
 WBtCj4wKcs9Jvn/+KnndTvxe4LURVveDZ7CL1YMna367EWjSrA/1McMaQ A==;
X-CSE-ConnectionGUID: dgNpTC/DSKqYzQxg9QQfog==
X-CSE-MsgGUID: 7lmQgtxSR/KXQTB5XiqMFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="87614773"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="87614773"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 23:19:12 -0800
X-CSE-ConnectionGUID: LayATs74QRu/HlccpeLBJA==
X-CSE-MsgGUID: tnux+g12Q5mE5aVvS+INJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="205510068"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 23:19:11 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 23:19:10 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 23:19:10 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 23:19:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hMhhF1XC0OpoAEbRhSV9NM5ta+8vxkKPrW//T8k3gT2woCRpdfjWV6N4uJTKgL5y+6sLhc/uhNj9CxfPKbT8B71Vu+JA7eiJqcTHjOKJwKlMdA/Dh+CtVRPFHwGfgcb3OwvyZpHL9BJ92D01vdDvMuVZKubUGWxq3P6kOlm+s1oeqoSobF4pC97lHHWY+gXNBcWBsW/vmPW06kW4X4fTFY6aigG4KMdcgiUeZRi17tqmo/nNP15bR4XSp/UFH1ey3cGoFMaWSMd4PtH+HkUGbOwmxgTCn2TL0wMvrYkiDGK1eAaeJfLHJ8xECIdW6omMNMp7hErLQdLriO9kDNhY7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OHV4yqW//ZzIy3J4f6xDOHNF2k65RiaH45rO3OlKR7g=;
 b=AN7CTZzG9mDevYLpUzby1D0FRSfHeMn0CuWWpCdcr/EU3nop5By/YB6umiNG94tmS769v3YePYyeMtnQpci3DYgnCu4KIBRr844WNI8QIM4qLPAPg85A8jzW1yDhgOeBJ3hZPBQWCB1nCX5COx9myaUqNEv4TEviwXzMow4g42eJ0y+baNqfI3LAq9It9LWCN3LgyNc+ybh1frU0UqxbXwRRZWC1L9ehSW6pmlFkGhPS0kT02hYOZ3pV++CpJqZYVhk57xjXeckpVi5hh+WGalZmd3+5nkg9cr0NJ2CH/4ljb4Ya9ZtOrGmWRD5KrYVsBIadI+A3bxxSY93KbXObTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by DS7PR11MB7860.namprd11.prod.outlook.com (2603:10b6:8:e9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.9; Wed, 21 Jan 2026 07:19:03 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5%7]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 07:19:03 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar
 Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>, "Chris Wilson"
 <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Thread-Topic: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Thread-Index: AQHciccr+0z7mMoL/06HUZZPCD+/ibVbO08AgAD2+SA=
Date: Wed, 21 Jan 2026 07:19:03 +0000
Message-ID: <PH8PR11MB8040B7F61FD55DB8D16EBBCBF496A@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20260120044203.2436044-1-jia.yao@intel.com> <aW-pMDuVDR_uIAQx@intel.com>
In-Reply-To: <aW-pMDuVDR_uIAQx@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|DS7PR11MB7860:EE_
x-ms-office365-filtering-correlation-id: 54bdfb65-0308-40b1-b705-08de58bd5b2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|42112799006|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OFRXcE16ZGlOOWl3YzhPQXNhTmdkYkhCRk0rTzBnR3cvWDJjbkNGNVIxMjV2?=
 =?utf-8?B?TlIvRnFHRlZ6L3c0Tno5TVdpUzkxVFVJR0VQRjN1ZmEvd0w2MVkxNlBzNk9H?=
 =?utf-8?B?dTBwYXU3Z2d6aTg3Zkk3MHlaVG9SNDZQZjN3Y1FlcHFMSW04SGtxQlFudVFm?=
 =?utf-8?B?QkNZcXdmejVPYUhyUTNrYlM0T0IxRkZmTVRZK2FsUmU4azFEcmg5MXJjZUdr?=
 =?utf-8?B?ZldRaEs0dzJiOEd0blJGK1E1aUhxbDcwZEovRDV5S1pKR3pRV0pwS04xdjZS?=
 =?utf-8?B?UHVvNlNZdE0wYkNmYmtIY043dkY4TGtWdlprVTcrelo5aFlud29JTkI4Q0Jn?=
 =?utf-8?B?SHdtWk1LU2lrbUM2cDNpcG5sdDNjY1lqRU5Xb3NmNmluWmQ0ajVrNVQ2d2hT?=
 =?utf-8?B?aUExVVhxNnZvRjYwZUZKcTc3dHp2blhnTWZsdm9kYjM3VGNYWU5vU3BJU3g4?=
 =?utf-8?B?ZUNoSlVmMHFnRjBpelR5NTJMYlhBVzNzc1dQNUlzeVlTeWQ1QjhURUtZdGxa?=
 =?utf-8?B?WlF0NDVuc1NOdWZrSVExUGtsTEVScXRydW9LOGpNd05rR3A5UFVUV1dLM3lv?=
 =?utf-8?B?bkFjS1RXbE9iZENOOVkrL1ozQ2Jjd2hlNHVJeDRnWmlzRG5OdURTR3c4WlNS?=
 =?utf-8?B?UlhFZGovNExwT0JwQ0E0TjJQcTJVK1E3biswOU9kZ0JkVVNROG9DRjRmVnlH?=
 =?utf-8?B?RlFNZmpjK2c3c1JQNTNEYjNtT1lXOG5PQjFhNG44QTM5RTRzTXRDemVqb0tE?=
 =?utf-8?B?R0NHZHpZaHJ5WnRHYko5KzdnV2ZYT3pJd3Nwa1dSNzI2d0M4L2duMkZKMFdM?=
 =?utf-8?B?YjJ2U0NrZXRtUmwrWjdJMk1qcGt6M1VDaGllVUpGWjNPY0JSTWx3bUhhOE53?=
 =?utf-8?B?REVyZGd3Ly9ITmtlNEJUR253YUUvcTdKdFVWU051SE50akJXalBCSUJybFcx?=
 =?utf-8?B?NEs4cFhiSS9LMUE4YnNteThwMXZZbUVBb3ZvdzNRamc3M2wrS3YvY2l4WlEz?=
 =?utf-8?B?R2Q5SnZST05IZjFPSkRPaG0vdWM3YzlPd2dtN0wxY2xGT29qUVhuQitkLzF3?=
 =?utf-8?B?SjZtcDBQalBZYzBjVFp3em83Q3MzWFJwWjJNZHpVZmdjRDJKMGU5K2RmbFJ4?=
 =?utf-8?B?L2ZtcjZPTGZ2YmJkNlBXRmdILzduMDRiWFFWWlhpTFBTdWppZVNMMnVwSkVE?=
 =?utf-8?B?ZWR2N1FFdzNBV1B0NnFEeEdpQ2FST0hVTTZYRWd4TW5LdkdRRVJjNzdvR1Bn?=
 =?utf-8?B?YTlTSWlNeUJGd3NKTEVoWEdLbkE4ZDM5dHVCek80a2wrb215aHZjeEtFQ2Zk?=
 =?utf-8?B?cVFjbi8vVHExUkltY2lsZjVUUFBEZ1EyTGticlZlM3lZVEpCMEZBanVCNWg5?=
 =?utf-8?B?OG4rYldMVTJKOXNCUHZCdFM2OHJuSkJNRFM4M3NQajlrSHlXU2NHYVV0UWhW?=
 =?utf-8?B?Qk9INGpRVFN2aTBxSXAxbGRIMkFBTWFYYTVETHdJVWtBSmZxdVowd1pWbjZR?=
 =?utf-8?B?Szd6emNDRnlQazRoZ0hmRS9odXZzS2VuMzI4SnprdXhtQ0liU29NdEovRnJV?=
 =?utf-8?B?VkpPVEF4Qmk0REI0eGljMTV4MXZrSGpTVGtRRDMzMXpQeU5TZ1p1ZlNWRFVK?=
 =?utf-8?B?N1M2UXUzTWUrT0VOd05NSGJkV2dyMG1rMUlta2ZsYk90U3BvUEdDdkJObnRz?=
 =?utf-8?B?NXRBaHptRVVQUS8rWmNpdGV3MFF1L3JJaEk1bmMvWVB2R2N6YkFsVkU4MUFZ?=
 =?utf-8?B?K09hNW96RkFVOUQwYjhQRzczU0ZCdGpjZGRIcDROSnptb05BUnBjK013aUp2?=
 =?utf-8?B?bHdNMmRvVytnTWF3Ly84UHZSTTdaenIzU0o4YlRqZFplanRWS1NHa25MYkgr?=
 =?utf-8?B?RHJQbnNJY0lhcEIzbnVVZW5kNUVpUkd4blc3SW5EWEJaT0JZeHlKVXBlZXZK?=
 =?utf-8?B?VWtyUUVaQWZzVEEwckxseDlqTUd0VThDS3M0dS9SYmc1cE1vK1k1OFRhTjNp?=
 =?utf-8?B?bnhXQ3M4YjB1cDk5MWIzSnBjcUp4Y0x6OVVyUWdYSE9DL2czVEtvcU1XYzE1?=
 =?utf-8?B?T08vWFdLVmxoZXpROHlYd0UwRGZPR0QwQzF4MUphSDU2RmtZb0dLdjh0eVdQ?=
 =?utf-8?Q?gtfZ9Ozx7CdP3/diIFH283wHk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(42112799006)(366016)(376014)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cS9haEhOVFJSMzkxc1lSdTJ6RDdMTmdLSzN2dFdhVEUyRVZvNlQvRWNHUUVW?=
 =?utf-8?B?cHdCZ0lwanAzbWpOM21EVnVBMXg3ZUxMQ3prMWY5d1dsTHNxNmdaYytyaUJG?=
 =?utf-8?B?Qm44K0licldBVUlYbzVXVmgxVjFRRzYxc1MzYWpsMGl4OVMySnpRYVdvSy9i?=
 =?utf-8?B?TnpublZhS0FLVUVwRW95SFJ2ZnNIYnovRnpJblB3bjd2dTZoMUlwLzNKeDBt?=
 =?utf-8?B?ckNXOXVIdW1iVGd4Y1RCcUxWQWJ0czRuVUEwc1FKVGs1MS9sMUowVzJOM3NH?=
 =?utf-8?B?ZysyVkgyZXE3OW5lQkZTeGtGZHhyNlVpOFJCUlFOQTFNUldyKzFNKzRIV0Ru?=
 =?utf-8?B?VUo2Tnd1NzFNL0JyMWxvQU9qQVg1a2Vhcld5TGxaa1pQWFFXQzNFeXpCZGVu?=
 =?utf-8?B?Q0tCYjZ3aEVySnVkd0dtMUMrbkRpTjA0Tjd3STgzTFQrOEZValRzNnVaNHRV?=
 =?utf-8?B?T1M5QUl4TE55N3Y5L0Q0a3VmWjVJZ1ZNLy9CRE5zRU5Mc25BcnpPMk1lWHpN?=
 =?utf-8?B?RjJwcG5idHMzbkROdFNiYW9udGE1S0pMSWxiejk0REdzeTlXcW12OXZGU2dn?=
 =?utf-8?B?QzJVT0Rmc2pnTEFPQmQrUXNSUkcyVlJlaHVpTGRCWU94bnVYdmE2czNBRmdE?=
 =?utf-8?B?cVBna3BobElPWnhGUnNrcGpmdzMyNnlPVnFtNHprL0dpMXcvNzEzSmh5eU5a?=
 =?utf-8?B?RlAzbHAyQ05kN0F3eG14TXo1SFdFTjRXQmZjY2lLb3V6YkFQMUZwV04vUFBE?=
 =?utf-8?B?WHRsVXNSUzdqL2JKeVA0UEt3clVFZjVNWW4zRHp0MkZhZlYwVWNTaWhBNmJZ?=
 =?utf-8?B?SzlNNm5aaXFaa2thMENLUlFVQzE0WkhmbFlPcHk1dmtoTW5ReXBMcHh3R05X?=
 =?utf-8?B?cmJzQXVVckdEeExWWUxMSjJIM05BcW1CdXA2aWpZc2tMYTd4WjdHVlJJVGtD?=
 =?utf-8?B?NUM0bEZpWG5zTHI4ZmRSYjN0MncrZXp4ck40K3NQOTVQR0lGWlZ1YTJnTkJx?=
 =?utf-8?B?R1Nrck5iSkhtb0twSFlkaGR6TFg3Z3ZYY3RqUTg4WUUvWmExYyt1M3V4Z2Vp?=
 =?utf-8?B?b3I5NUJLZ1pPUEVkSzlEcmhmaFQ5d0xTRGdpM2RiaTlhUHJJOTk0MVQ2UmhD?=
 =?utf-8?B?QWthM1pXdjgvaGpNTno1azNXNjdsWENTQkdvdHE3czNYUG0zTENRS1R3TlZt?=
 =?utf-8?B?MnduLzBOcytvdFBSeWNlaHNaWmpKNjB5NUVXNDNEMjRLTWd3TXZOakRJMVV3?=
 =?utf-8?B?R24rMW1Qc1NBK0t0ZkxPbzdQK3dVMDBrL1p3ZGg1QTE0d2xnZWpqR2J0L3VH?=
 =?utf-8?B?Snk2dkd2bnpRdC9ZY1QzOFloQWRKaGhxejBrSjJhWDR2cFdRVVByQ0M4L0lm?=
 =?utf-8?B?QkIrZWJ5UWVXQlpYMjU4TWxCMUJnQ0dnY0hvNjhNV3ZYR2pZbEtuMXNCMmg3?=
 =?utf-8?B?RGlDZ1k0QVpyZEowU2ZjQUtoK3pvQm1nNnpoVlVqcFF4RHpBTTg5a09ieGV4?=
 =?utf-8?B?ZmdmVERqaGphcnFIOVNUVWZiejI1L0ZJb3QxcnVLTng3ckJMY0pwOEs2aFFz?=
 =?utf-8?B?djZsZU15QXlhZStiTlU5MW1YaXBkRmhlQU83clFJdzBPbDJMbHdRWG9YeWpz?=
 =?utf-8?B?eWpSeDdhdkhkcHNrWHFBc3VqQllKbEIvd245aUZobklmL2ZQanNILzgrcnFL?=
 =?utf-8?B?QjJ5L3puc21HWCtKNWVPNGxaL1l2T090OHRmekJsWXJ4cGlyaUx4S2ZyMmZs?=
 =?utf-8?B?OGR0WjVOcjMvOXhmVkJwamdRYjYrYUtDSWpnMG54TDNhcUU0cWtPWFRFNGFr?=
 =?utf-8?B?LzFWaGFvdWFBcHUzeEJkUXpjbkRmb05SNzNqamJxQ0xiaGNYYmIyUm9hNUs5?=
 =?utf-8?B?aGl6d1Y5Tm5naHUycXUySzB6WFJkSmdROVJxaG1oRklienFtZktJYUlYUjQy?=
 =?utf-8?B?cHNNL0s3c08xMjBtMEZUd1BpbTcxZGYwcXBoay9TYTNxYk82YXVkRHQwaUR5?=
 =?utf-8?B?MGt3cEI0U2svZWhmQ1VwaU9MOXhmNUg4N01CcjdUS0tERFdmLzFLR052VWJk?=
 =?utf-8?B?bTJ1blBlQWVPNkZTTDZyYjhhRXVsSWUybDNBVVVuemMvaW9QanJMSFRXL2Nu?=
 =?utf-8?B?QnlucTNPbGhDZGxTMHlrV2F6SFV2blVZaVFnTUdTZlI5aXNDbjdSaFY1Q0cz?=
 =?utf-8?B?L29mTFoyL2VxRkFMa3h6R1dyZUVNeC9qTVppS3kvTXA4M01CK0pBbmtWcVJ5?=
 =?utf-8?B?OTlYYzJkUFU0UllBQ3pDSG5WSEtLbnBEbUNxbG5peUNTTk55ckZZOHlvekhv?=
 =?utf-8?B?bXBhcjUvczFRcUdRYmtPWGdDd1ByMjFwZ0diMGJESVJ6M0VLcEtpbTVVY1J4?=
 =?utf-8?Q?azXs8Ykw9uAffJCWUjiLDQcQryZEMAbIyVc2P?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54bdfb65-0308-40b1-b705-08de58bd5b2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 07:19:03.4884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oiDx8xhAu8+5fuo5pIDJ9EsjowKo7sOp4Be4s1EJBa1ARBKgByJhLkiiW9qDNzhYJ2vzL61RMsw8xA/a1I8PMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7860
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:alex.zuo@intel.com,m:shuicheng.lin@intel.com,m:safinaskar@gmail.com,m:piliu@redhat.com,m:chris.p.wilson@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,gmail.com,redhat.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,PH8PR11MB8040.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 14AED52B85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgZmIgZHJpdmVyIGlzc3VlcyBpcyBkb2luZyB2YWxpZCBh
Y2Nlc3MsIGJ1dCBiZWNhdXNlIG9mIGFuIGluY29ycmVjdCBHR1RUIHRyYW5zbGF0aW9uICAoT25j
ZSBHR1RUIGhhcyBiZWVuIGluaXRpYWxpemVkIGJ5IGk5MTUsICBpdCBjYW4ndCBiZSByZXN0b3Jl
ZCB0byBoYXJkd2FyZSBpbml0aWFsIHN0YXR1cyB3aXRob3V0IHJlYm9vdCksIHRoZXNlIGFjY2Vz
c2VzIGFyZSBtYXBwZWQgdG8gaW5jb3JyZWN0IGFkZHJlc3Nlcy4NCkFzIGZvciBibG9ja2luZyBm
YiBkcml2ZXIsICBTb21lIExpbnV4IGRpc3RyaWJ1dGlvbnMgY29tcGlsZSBDT05GSUdfRFJNX1NJ
TVBMRURSTT15IGludG8gdGhlIGtlcm5lbCBhcyBhIGJ1aWx04oCRaW4gb3B0aW9uIHJhdGhlciB0
aGFuIGEgbG9hZGFibGUgbW9kdWxlLg0KQ29uc2lkZXJpbmcgdGhlc2UgZmFjdG9ycywgdGhpcyBy
ZW1haW5zIHRoZSBvbmx5IGZlYXNpYmxlIGFwcHJvYWNoLg0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4gDQpTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDIwLCAyMDI2IDg6MTEgQU0NClRvOiBZYW8s
IEppYSA8amlhLnlhb0BpbnRlbC5jb20+DQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgWnVvLCBBbGV4IDxhbGV4Lnp1b0BpbnRlbC5jb20+OyBMaW4sIFNodWljaGVuZyA8c2h1
aWNoZW5nLmxpbkBpbnRlbC5jb20+OyBBc2thciBTYWZpbiA8c2FmaW5hc2thckBnbWFpbC5jb20+
OyBQaW5nZmFuIExpdSA8cGlsaXVAcmVkaGF0LmNvbT47IENocmlzIFdpbHNvbiA8Y2hyaXMucC53
aWxzb25AbGludXguaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtQQVRDSCB2M10gZHJtL2k5MTU6
IENsZWFyaW5nIHRoZSBNZW1vcnkgU3BhY2UgRW5hYmxlIGJpdCB3aGVuIGRpc2FibGluZyBpOTE1
DQoNCk9uIFR1ZSwgSmFuIDIwLCAyMDI2IGF0IDA0OjQyOjAzQU0gKzAwMDAsIEppYSBZYW8gd3Jv
dGU6DQo+IEluIGEga2V4ZWMgcmVib290IHNjZW5hcmlvLCB0aGUgR1BVJ3MgR2xvYmFsIEdyYXBo
aWNzIFRyYW5zbGF0aW9uIA0KPiBUYWJsZQ0KPiAoR0dUVCkgcmV0YWlucyBpdHMgcHJldmlvdXMg
c3RhdGUgYWZ0ZXIgdGhlIGtlcm5lbCBpcyByZWxvYWRlZCwgdW50aWwgDQo+IGk5MTUgcmVpbml0
aWFsaXplcyB0aGUgR0dUVC4NCj4gDQo+IFRoZSBzaW1wbGUtZnJhbWVidWZmZXIgZHJpdmVyIGlz
IGluaXRpYWxpemVkIGJlZm9yZSBpOTE1IGFuZCBhY2Nlc3NlcyANCj4gdGhlIFBDSWUgbWVtb3J5
IHNwYWNlIChHUFUgYXBlcnR1cmUpIHRocm91Z2ggb3V0ZGF0ZWQgR0dUVCBlbnRyaWVzLiANCj4g
VGhpcyBsZWFkcyB0byBpbnZhbGlkIHBoeXNpY2FsIG1lbW9yeSBhY2Nlc3NlcywgY2F1c2luZyBH
UEYgb3IgZGF0YSBjb3JydXB0aW9uLg0KPiANCj4gVG8gcHJldmVudCBzdWNoIGlzc3VlcywgdGhl
IE1lbW9yeSBTcGFjZSBFbmFibGUgKE1TRSkgYml0IGluIHRoZSBQQ0kgDQo+IENvbW1hbmQgUmVn
aXN0ZXIgaXMgY2xlYXJlZCBkdXJpbmcgaTkxNV9kcml2ZXJfc2h1dGRvd24uIFRoaXMgZGlzYWJs
ZXMgDQo+IGFsbCBQQ0llIG1lbW9yeSBzcGFjZSBhY2Nlc3MgKGluY2x1ZGluZyBNTUlPIGFuZCBh
cGVydHVyZSkgYXQgdGhlIGhhcmR3YXJlIGxldmVsLg0KPiBBZnRlciB0aGUga2VybmVsIGlzIHJl
bG9hZGVkLCBhY2Nlc3MgdG8gdGhlIFBDSWUgbWVtb3J5IHNwYWNlIHdpbGwgYmUgDQo+IGZvcmJp
ZGRlbiB1bnRpbCBpOTE1IGlzIHJlLWluaXRpYWxpemVkLg0KDQpTdGlsbCBsb29rcyBsaWtlIGEg
aGFjay4gSSB0aGluayB0aGUgY29ycmVjdCBmaXggd291bGQgaW52b2x2ZSBwcmV2ZW50aW5nIHRo
ZSBrZXhlYydkIGtlcm5lbCBmcm9tIGluaXRpYWxpemluZyB0aGUgZmIgZHJpdmVyIHRoYXQgaXMg
ZG9pbmcgdGhlIGludmFsaWQgbWVtb3J5IGFjY2Vzc2VzLg0KDQo+IA0KPiBTaW5jZSBkaXNhYmxp
bmcgUENJZSBtZW1vcnkgc3BhY2UgYWZmZWN0cyBhbGwgTU1JTyBvcGVyYXRpb25zLCBQWFAgDQo+
IHNodXRkb3duIG5lZWRzIHRvIGJlIGNvbXBsZXRlZCBiZWZvcmUgdGhpcyBwb2ludC4gQ2FsbHMg
DQo+IGludGVsX3B4cF9maW5pKCkgYmVmb3JlIGRpc2FibGluZyBtZW1vcnkgc3BhY2UgdG8gZW5z
dXJlIFBYUCBjbGVhbnVwIGNhbiBzdGlsbCBhY2Nlc3MgTU1JTyByZWdpc3RlcnMuDQo+IA0KPiB2
MjoNCj4gICAtIGZvbGxvdyBicmFjZSBzdHlsZQ0KPiANCj4gdjM6DQo+ICAgLSByZXZpc2UgZGVz
Y3JpcHRpb24NCj4gDQo+IExpbms6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQ1OTgNCj4gQ2M6IEFsZXggWnVvIDxhbGV4Lnp1b0BpbnRl
bC5jb20+DQo+IENjOiBTaHVpY2hlbmcgTGluIDxzaHVpY2hlbmcubGluQGludGVsLmNvbT4NCj4g
Q2M6IEFza2FyIFNhZmluIDxzYWZpbmFza2FyQGdtYWlsLmNvbT4NCj4gQ2M6IFBpbmdmYW4gTGl1
IDxwaWxpdUByZWRoYXQuY29tPg0KPiBTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXMu
cC53aWxzb25AbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKaWEgWWFvIDxqaWEu
eWFvQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZl
ci5jIHwgMzUgDQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyANCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+IGluZGV4IGI0NmNiNTRlZjVkYy4uNzY2Zjg1NzI2YjY3
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTExOCw2ICsxMTgs
MzMgQEANCj4gIA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyIGk5MTVfZHJtX2Ry
aXZlcjsNCj4gIA0KPiArc3RhdGljIGludCBpOTE1X2VuYWJsZV9kZXZpY2Uoc3RydWN0IHBjaV9k
ZXYgKnBkZXYpIHsNCj4gKwl1MzIgY21kOw0KPiArCWludCByZXQ7DQo+ICsNCj4gKwlyZXQgPSBw
Y2lfZW5hYmxlX2RldmljZShwZGV2KTsNCj4gKwlpZiAocmV0KQ0KPiArCQlyZXR1cm4gcmV0Ow0K
PiArDQo+ICsJcGNpX3JlYWRfY29uZmlnX2R3b3JkKHBkZXYsIFBDSV9DT01NQU5ELCAmY21kKTsN
Cj4gKwlpZiAoIShjbWQgJiBQQ0lfQ09NTUFORF9NRU1PUlkpKQ0KPiArCQlwY2lfd3JpdGVfY29u
ZmlnX2R3b3JkKHBkZXYsIFBDSV9DT01NQU5ELCBjbWQgfCANCj4gK1BDSV9DT01NQU5EX01FTU9S
WSk7DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgaTkxNV9k
aXNhYmxlX2RldmljZShzdHJ1Y3QgcGNpX2RldiAqcGRldikgew0KPiArCXUzMiBjbWQ7DQo+ICsN
Cj4gKwlwY2lfcmVhZF9jb25maWdfZHdvcmQocGRldiwgUENJX0NPTU1BTkQsICZjbWQpOw0KPiAr
CWlmIChjbWQgJiBQQ0lfQ09NTUFORF9NRU1PUlkpDQo+ICsJCXBjaV93cml0ZV9jb25maWdfZHdv
cmQocGRldiwgUENJX0NPTU1BTkQsIGNtZCAmIA0KPiArflBDSV9DT01NQU5EX01FTU9SWSk7DQo+
ICsNCj4gKwlwY2lfZGlzYWJsZV9kZXZpY2UocGRldik7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBp
bnQgaTkxNV93b3JrcXVldWVzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KSAgew0KPiAgCS8qDQo+IEBAIC03ODgsNyArODE1LDcgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2Jl
KHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQ0K
PiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5Ow0KPiAgCWludCByZXQ7DQo+ICANCj4g
LQlyZXQgPSBwY2lfZW5hYmxlX2RldmljZShwZGV2KTsNCj4gKwlyZXQgPSBpOTE1X2VuYWJsZV9k
ZXZpY2UocGRldik7DQo+ICAJaWYgKHJldCkgew0KPiAgCQlwcl9lcnIoIkZhaWxlZCB0byBlbmFi
bGUgZ3JhcGhpY3MgZGV2aWNlOiAlcGVcbiIsIEVSUl9QVFIocmV0KSk7DQo+ICAJCXJldHVybiBy
ZXQ7DQo+IEBAIC03OTYsNyArODIzLDcgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBw
Y2lfZGV2ICpwZGV2LCBjb25zdCANCj4gc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkNCj4gIA0K
PiAgCWk5MTUgPSBpOTE1X2RyaXZlcl9jcmVhdGUocGRldiwgZW50KTsNCj4gIAlpZiAoSVNfRVJS
KGk5MTUpKSB7DQo+IC0JCXBjaV9kaXNhYmxlX2RldmljZShwZGV2KTsNCj4gKwkJaTkxNV9kaXNh
YmxlX2RldmljZShwZGV2KTsNCj4gIAkJcmV0dXJuIFBUUl9FUlIoaTkxNSk7DQo+ICAJfQ0KPiAg
DQo+IEBAIC04ODUsNyArOTEyLDcgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQ0KPiAgCWVuYWJsZV9y
cG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsNCj4gIAlpOTE1X2RyaXZlcl9s
YXRlX3JlbGVhc2UoaTkxNSk7DQo+ICBvdXRfcGNpX2Rpc2FibGU6DQo+IC0JcGNpX2Rpc2FibGVf
ZGV2aWNlKHBkZXYpOw0KPiArCWk5MTVfZGlzYWJsZV9kZXZpY2UocGRldik7DQo+ICAJaTkxNV9w
cm9iZV9lcnJvcihpOTE1LCAiRGV2aWNlIGluaXRpYWxpemF0aW9uIGZhaWxlZCAoJWQpXG4iLCBy
ZXQpOw0KPiAgCXJldHVybiByZXQ7DQo+ICB9DQo+IEBAIC0xMDAzLDYgKzEwMzAsNyBAQCB2b2lk
IGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCANCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkN
Cj4gIA0KPiAgCWludGVsX2RtY19zdXNwZW5kKGRpc3BsYXkpOw0KPiAgDQo+ICsJaW50ZWxfcHhw
X2ZpbmkoaTkxNSk7DQo+ICAJaTkxNV9nZW1fc3VzcGVuZChpOTE1KTsNCj4gIA0KPiAgCS8qDQo+
IEBAIC0xMDIwLDYgKzEwNDgsNyBAQCB2b2lkIGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiAgCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZp
OTE1LT5ydW50aW1lX3BtKTsNCj4gIA0KPiAgCWludGVsX3J1bnRpbWVfcG1fZHJpdmVyX2xhc3Rf
cmVsZWFzZSgmaTkxNS0+cnVudGltZV9wbSk7DQo+ICsJaTkxNV9kaXNhYmxlX2RldmljZSh0b19w
Y2lfZGV2KGk5MTUtPmRybS5kZXYpKTsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIGJvb2wgc3VzcGVu
ZF90b19pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gLS0NCj4gMi4z
NC4xDQoNCi0tDQpWaWxsZSBTeXJqw6Rsw6QNCkludGVsDQo=
