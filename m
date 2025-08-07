Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 822D3B1D1A5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 06:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9374310E0D0;
	Thu,  7 Aug 2025 04:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R78s9dh1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CB1C10E066;
 Thu,  7 Aug 2025 04:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754541508; x=1786077508;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9P+79lSQnhRBpz5Pk7J2wpWhgjm4uqptUIM258mog8o=;
 b=R78s9dh1h88XNxTjriWsQKfwme2HdmxxK/ZWNd/fK0/bMO+o51gLBZ9K
 LWmmpDjYef8Y1iAiNRJpl9ZXHOK3jt5TrJiTkHGmxC1n7YeBjB5Ym1frd
 iCEYPa+qJlFaPKzyoj3rwNYDLQ+Q7og+ChTBxoT1PqMkFC5PzLnQm7T1n
 w4PG48P8FqcMIdqeYdMowxINGEabREIhqq/Q1SsGwxIhcQryJ4Q18V5K/
 f95EDS3AtXLctjlyw1evGiWpsdRjbbZCzhZbNk1RH9MZHqcX2fVd44IdK
 g31eCCT60VAuSrNrHlJ4NLweZ6mVEg3LT5nDq4pvvoDk4Sl4CkpyAaRMr Q==;
X-CSE-ConnectionGUID: AEruEEaRRD+t/alre6tsUg==
X-CSE-MsgGUID: LJWdTnG4SXGQiZAjymAd1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="82314217"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="82314217"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 21:38:27 -0700
X-CSE-ConnectionGUID: F3buCrEjQ3aOXrtdfSFUDw==
X-CSE-MsgGUID: +euo4W63Tx6n85skKYUiDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164609024"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 21:38:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 21:38:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 21:38:27 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.87)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 6 Aug 2025 21:38:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s0pSdhzyEhoZeFoP1ojHo3xvnJ6Om1AheBhx53Mx6dEeqQYZBni5G7NE21Fb7WKWYCVc+AyZ++1uqn3owkR/1tP+H14xg6GINPo6qALFlEtNTHp1z1/QR1v4OM8Tx83TZ+xosDIK1RtjTxmQEJKDvCXu5knE/KQKhORudmxyKye+VPj1cu/iR9D5zWgMYEqqTL+c3QkltQQed7SuftC+iCxAt3hc/7dazcp+Ts5bG0z5eGaYhy/mhTYBxav7kqs8tsi6sTqJHKPye/UUbjBopWj1A19vEBvc8OD+NCp17L8RPWbXgGxSFSzkq68LL8G0qbuFro23tSwKyMaRPGD1og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9P+79lSQnhRBpz5Pk7J2wpWhgjm4uqptUIM258mog8o=;
 b=Ka9mChzY6WrWgHLqw6KbuqKkUq2JYrfgKfVYpaf5TVq2mYDxR3xpr9Xk8EOdQwIJelfSwmwHdxTrfO/Ws3mrboIp7/pKyehllxjgMeCInBiEUXWfrVe78JEj/EFWwStJTpbzhQ/fWoLn7j4FnRLWLOREGECWidUsEMmi1F2c0fvfeT9g7wS/01Ve3jjE+PscVBX9zunlKT8sQdWU9y2YYlz+E5EyHcwCPUA0jNrrMugj6mDw2UXA+rQU4rB7InFY4enpeUL6al4DymYSVNqlb5Y88ViVCrjCl3Xm+dsHA2gpFfZPQT1k3I9LlT8Kk3j6p+dRbJxzzAGMuD00FotL3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.21; Thu, 7 Aug
 2025 04:38:16 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 04:38:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, Janna Martl
 <janna.martl109@gmail.com>
Subject: RE: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Topic: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Index: AQHcAq2qKfum7TIz2UGOMLqsBUzZ07RWpJCg
Date: Thu, 7 Aug 2025 04:38:16 +0000
Message-ID: <DM3PPF208195D8D507DE9636CA0CD3C0C21E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250801062905.564453-1-jouni.hogander@intel.com>
In-Reply-To: <20250801062905.564453-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6738:EE_
x-ms-office365-filtering-correlation-id: 07cd65f7-d259-4a47-a154-08ddd56c3a20
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RlR1L1NqMHltbHBEMmFtZmNCRHl6NWFzOGJnRkxzd1ZtNHh0V0VKalF5Mkk2?=
 =?utf-8?B?dVJyU0haanQrbTF0eXJLWkplREt3TkVmMC9RTWZyaWFyVURtc2FsM1dEY1BT?=
 =?utf-8?B?U0lqNGIraTNEQU1SRHFqUGNSTEZNNGFrYVN2bTRBYkU1NnlDSExlajVGRXRq?=
 =?utf-8?B?RzF4c3E3dUIvZDlTODRGcVlNR0VhK0doNUZTNzgzTS9OeVhRRG9lejAvd3Rv?=
 =?utf-8?B?S1JYRVVIOXFWN1NwQXNFZ1FLSFAzckU0SGIrN3JScHFpaUd0M1FBSDZCLzQr?=
 =?utf-8?B?eGFpcDhESTZBQWNDV1lKOUl5QldvTy91a2dEUGtNSmhwZ2JpV1RJaUZNZEdj?=
 =?utf-8?B?SXpKYWh1Y1EvN2hDR2pNSndUVE13dW9RM3lZZFRPV3RpdFJJZTZPMTlhMXB5?=
 =?utf-8?B?eXUxTXl0QWU3SGpqWHJaTFVJaitodnNieVkzeTh5R1paamFmTDhyT1FMOTUr?=
 =?utf-8?B?RzZta3BCTXdZT0hBc1RJREgwR2h0ZmM2RUxqUVdOTU9XYm4zK2lhZ2dhbjgz?=
 =?utf-8?B?a2tLRVdzeFhlRjkxcG9RSlZ5TUhUMXhsM2VMY2FoTmlxTStxaDhabForUnJE?=
 =?utf-8?B?dCt5MERTMVRVaHpoNUdTVmhoVXdXREJ4RjZCNDNzOVJBKzlTYkxtV2NML3pK?=
 =?utf-8?B?c2Vqc3EvY05JdEdPTE95L3Z6a3phdTJkRmx3YjZncS9MblYzaU9pVWQrS2Vv?=
 =?utf-8?B?Z0d2dFFVejBQK2VFQUY4MjMvQy9sMjZ3OUhycVdIRWVka1RpSHFOYU51SHlK?=
 =?utf-8?B?UW8zbGhybi9iZDM3RlM1TkdXbU1GbnUwayszdVgzaEZ4WVZYbHN5WHR3ZXV6?=
 =?utf-8?B?Y1lnREgrY3hRUjZLblBPTzYwS0lQRlVTSlMzYjY4WUVSdFBIM3N1MDhyeFVj?=
 =?utf-8?B?NnEvVzdFWXdpY2NPWWxUNnU3dmNYTDg2RFV4Ni8rL0FQOFo4M0dPaEFjSkhq?=
 =?utf-8?B?ZXdnM1BwWnkvcWRqdEsyK3IyLzQ3Um1vangyRWVacXM2c1pWc044dTJJMUVW?=
 =?utf-8?B?TG45NlNSWGtYcEhFZ2dmaUNBWjNDVHFpbVU3eitSckh1NEdPZngzZmFiTzNo?=
 =?utf-8?B?bno5MHRvNUpxQkt5amE0TkJ1akFkdjJUZ2RjN1ZsdzlZZkhBWDJ4aEhncUFo?=
 =?utf-8?B?VkpCNUxNdGNYZUpBMVFpN2U0T05EWmdsQURmQWxvcWZCUUI5WjdsVDJyQUE5?=
 =?utf-8?B?cW1nOEtSUGVSV0JXM0U2MnVGalM0K0IvVWxGem0yd1cydE02TEZxa1phSVc4?=
 =?utf-8?B?SXZaRm1KbVZPZmxIUjN1Nzg0TksvSGNDWm5lMUxuZERPQk5BTnhLenY0ZGJQ?=
 =?utf-8?B?L3NjanM5RjRKRXZ2VHRMOFNacENxZ2JCbzhFa0pFemRsUHh4MWxoYk41RitI?=
 =?utf-8?B?L282V2w1Q2FVLzJBQ2FYc3liMHNVZ29oK3I2Z1VPS3lBbkFkVHpLU3pUR0RC?=
 =?utf-8?B?aWp5cHhMRk9kZ3VBcXRFeHBVMkVFbzNQUGxTVStXQ2pNY2h6Z3NFMWw2U1I1?=
 =?utf-8?B?S1pDNFp3YlYwampXS3RDSmtrYmt5cnBQZlUrbzVKVVpDSGp0UUNkdHJMUllx?=
 =?utf-8?B?VWRRK21ScEpaV0hpc0dxaTNQN3dHZU1sR1JhVmxsWEpqUWtIbUpUZE5kTFNw?=
 =?utf-8?B?NkJNb1dvcUZCbVRvMCtjL1VJcEtmdStmSUhKYlpmVnFoUzRjOXU0OXYrTTlS?=
 =?utf-8?B?LzF4WGdVTElqYWxaM2R0cFIxVk1Od3VCRkhxN3hUZDVmMG13OWhoamZhZ1dj?=
 =?utf-8?B?T3dHZ1NrUWowV1FKd2VsaGpRQUNkd1RKQnBrT3ZXTThQdVRsMDhVeTAyQS9v?=
 =?utf-8?B?TWxpNlBQOXhUbVdHV2NiaElEeUorY2dlaDV6UHpHVjlkS3o0K3ppVTNBYzBx?=
 =?utf-8?B?Rmg1SHltS09pdVJoemg2Y2NBdzYvb3BXd3A3M1lTYjI5YTBwdGFTRWExb1Iv?=
 =?utf-8?Q?mkQcGP4Dmig=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SEVrZHROWFVlRUZlSExBSzhrM2tERXRiOENVYndYbGh5djBZRGxBZlJGbmx5?=
 =?utf-8?B?V1J6UW9FL1FoLzR1OStYejZ2ZE5VMksxd3FKazliY1hoSFpIb0x5Mm1lZCt1?=
 =?utf-8?B?emJvdmF5N2VrL0haZjZWTE5BNXg2Uk9qa05LMGdnRDVMMWMrbWtnak9vV3g3?=
 =?utf-8?B?MHdmdG5mQzBTUi9KWTFUcDBlUWUzUFpCY09HZUJHblBEWGJWL2w1bTMwaHda?=
 =?utf-8?B?REFOeW50cC8xQWp4QnRKcis5ak5CWm9WY2NTNWZxSjJYS005MjdRV1R3YUFW?=
 =?utf-8?B?LzFvWXIzSUpQOSt2VkF2MURicGdzY1cxSW1pYjlpSkpqQzBteEREWE80QUs0?=
 =?utf-8?B?NGNQYVRiMXVzZ1dCK2ZoN0VGSVlRbTZlTkEwdjgzL0RGaUNELzhOc1J3eUlO?=
 =?utf-8?B?K0RFSmNhQnpHWllaUUJKcUplcXc0YjZicUhWNmN5NzJScWpLWEd2UStzL0RO?=
 =?utf-8?B?WWF3T1FjdExXMVFyQXhDTmxHQkt4UFBKTWQ2ZmF5c3lmRUVodVlLeEdabElw?=
 =?utf-8?B?Z3RHMzU4OThoSHlxeVBNV0RZczZDUmhGanhIbzM3TFJ2Y3dESTQwdTEzWTY2?=
 =?utf-8?B?c0hJeG9NbUFRRUlqYlQxNXhHTHgxNHFxWFFhNFZKWVN2RHlHeVVZcDRjM3Zr?=
 =?utf-8?B?bXUzVGV4UmNBOGdnck1LZktxdlFtRHBJbHQ5VU10MGQ5REdZWUZzOVFrZyt2?=
 =?utf-8?B?OG1ES05hbFJuZGVTNDI5R05DM2s4L29YZW1kNXJHZjRyeXk2TTZOMjh0YnBC?=
 =?utf-8?B?WmN3ZGtNY1R4N3VlcjNJWnpaRGhScDJpcDJIMG5QdXVRUjZzOHljdjVkYTFE?=
 =?utf-8?B?MmZpanZ0dHJWQzMyTmRZbnhSMVI0SDU1OEM5eG9uamhEOHl2R1JYMGR6UWZi?=
 =?utf-8?B?ZiszUVpHRmlVZW5USGhwMFk3dUpVK0xkWE96dmYvS3kvemp0T3VQNnFOQ1JD?=
 =?utf-8?B?RmFvR1hMNEJoRlRObjFkakFRNFQwQWNveEVXVzdDZlRNZWxyOWFPbDlVeUFD?=
 =?utf-8?B?YisrNDNuNUt1cUxGRTF2djd1bzdXKzczVi94MzZyNERYYkVxVWhnSnRURFA4?=
 =?utf-8?B?RnRNWlNFZlduWmNJb2xrN0dEOTZVdHpCelN4dHp2cStFc2VmTWhOamI1b3V4?=
 =?utf-8?B?a2RPZytkR2ZsU21ZOFRXelgzcHlyR1FPc2tMWklnVUNBQm84QkJ2UC9TU3o0?=
 =?utf-8?B?aTkvY1JWQnoyL042bUN1b0lueEZmTUkrUllYY0l2SjZTTG51eDI4WHVWTmVN?=
 =?utf-8?B?QzdVTktmY3F2cjdNYjZieTExbDFkTkdFeVJZdjFSK0FiMzJVS2ZQTWx0aE9S?=
 =?utf-8?B?dDdBMWRoT0lmQ2d6Myt5VmZNTmdVVkMxOUFlS1BUWVc2SHFxMktvSXc0cUQw?=
 =?utf-8?B?L2Z2VS9qTDNKSjU5NjFpTm5JYmgvSms5SGdxRGYyWFN0RkxONGFwczQ2YldY?=
 =?utf-8?B?WGcyWjhIWmFPUTU1Vm1DOFhoOG1FeHVqTlJ6S0d6SjNWM2FmVzZqV28zRzZY?=
 =?utf-8?B?RTJsU1p0VVJYQkMrU1R2SjVVNlJxRWYrT0dMbVZUWlhXN0puRzdzSjA0NnRt?=
 =?utf-8?B?bXM2T0wvTC9XZFRDaDVmc3QzSU1QNG14VVR3Lzc0bFNCNGtJM2tKZDBiT3d0?=
 =?utf-8?B?bGNGVkJybHM3Y2ovZTIvRjIvb0ZnRHdWVjZlcEZObUl6ZGwxNjdzRmdRZzEv?=
 =?utf-8?B?QjNSWXpLOFVvWkpxTmR2VDdIaTRGNjhMdm9JSFVzNWI0T3cyRldraW15YXFM?=
 =?utf-8?B?VklpOXVUb29NZHppS0ZwWDhDak1ZcnZ6c0JhenhYWDV1eDNJek5aRW5heG9C?=
 =?utf-8?B?WjVIaUNKemJZU0RzbjFkODhLMUtrK0twLy9rYlFOWVBtalBrRk5La3dTdWU2?=
 =?utf-8?B?dmVOTno0Y3RMcXVvcmpXV1FNQjAwRDNFeDhxRW9uRFZ2QUM0ejV1cGZQeHZU?=
 =?utf-8?B?UkFtWFF2MDFTdmsvcy9QM3pSN3RreVJqZjZ4cUkyQmJ0amxpQnpuaElSbGd3?=
 =?utf-8?B?V2lPS1pYak9UQTZJNks2ZDlQRzA3ZTVLdS9YMDhQVmhQYmZXYU1DU2JWUm1i?=
 =?utf-8?B?alNqRFVJMG9pWlJ2aVFWeDJYVmFMc3BYay9zOTB4OFpwK2dTanR4Wjc3QUht?=
 =?utf-8?Q?sbYamaFZszvlMLlLanPgKx/Ju?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07cd65f7-d259-4a47-a154-08ddd56c3a20
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 04:38:16.4676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gBcUQ8vMUJVOST2PFi3dTVZIfQEFMdosunqiPxfUc46yfSsOoQuPvZTCxK9TT9ZZZgFeW/8MzXRoKLQgzOEBxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6738
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

PiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRG8gbm90IHRyaWdnZXIgRnJhbWUgQ2hh
bmdlIGV2ZW50cyBmcm9tDQo+IGZyb250YnVmZmVyIGZsdXNoDQo+IA0KPiBXZSB3YW50IHRvIGdl
dCByaWQgb2YgdHJpZ2dlcmluZyAiRnJhbWUgQ2hhbmdlIiBldmVudHMgZnJvbSBmcm9udGJ1ZmZl
ciBmbHVzaA0KPiBjYWxscy4gV2UgYXJlIGFib3V0IHRvIG1vdmUgdXNpbmcgVFJBTlNfUFVTSCBy
ZWdpc3RlciBmb3IgdGhpcyBvbiBMdW5hckxha2UNCj4gYW5kIG9ud2FyZHMuIFRvdWNoaW5nIFRS
QU5TX1BVU0ggcmVnaXN0ZXIgZnJvbSBmcm9uYnVmZmVyIGZsdXNoIHdvdWxkIGJlDQo+IHByb2Js
ZW1hdGljIGFzIGl0J3Mgd3JpdHRlbiBieSBEU0IgYXMgd2VsbC4NCj4gDQo+IEZpeCB0aGlzIGJ5
IHVzaW5nIGludGVsX3Bzcl9leGl0IHdoZW4gZmx1c2ggb3IgaW52YWxpZGF0ZSBpcyBkb25lIG9u
IEx1bmFyTGFrZQ0KPiBhbmQgb253YXJkcy4gVGhpcyBpcyBub3QgcG9zc2libGUgb24gQWxkZXJM
YWtlIGFuZCBNZXRlb3JMYWtlIGR1ZSB0byBIVyBidWcNCj4gaW4gUFNSMiBkaXNhYmxlLg0KPiAN
Cj4gVGhpcyBwYXRjaCBpcyBhbHNvIGZpeGluZyBwcm9ibGVtcyB3aXRoIGN1cnNvciBwbGFuZSB3
aGVyZSBjdXJzb3IgaXMNCj4gZGlzYXBwZWFyaW5nIG9yIGR1cGxpY2F0ZSBjdXJzb3IgaXMgc2Vl
biBvbiB0aGUgc2NyZWVuLg0KPiANCg0KQW55IEJzcGVjIGxpbmsgdGhhdCBkb2N1bWVudHMgdGhp
cyB0cmllZCB0byBsb29rIHRocm91Z2ggdGhlIHBhdGNoIHNlcmllcyB0aGlzIHdhcyBwbHVja2Vk
IG9mIGZyb20NCkRpZG7igJl0IGZpbmQgYW55IHRoZXJlIGVpdGhlci4NCg0KUmVnYXJkcywNClN1
cmFqIEthbmRwYWwNCg0KPiB2MjogQ29tbWl0IG1lc3NhZ2UgdXBkYXRlZA0KPiANCj4gUmVwb3J0
ZWQtYnk6IEphbm5hIE1hcnRsIDxqYW5uYS5tYXJ0bDEwOUBnbWFpbC5jb20+DQo+IENsb3Nlczog
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvNTUy
Mg0KPiBGaXhlczogNDExYWQ2Mzg3N2JiICgiZHJtL2k5MTUvcHNyOiBVc2UgU0ZGX0NUTCBvbiBp
bnZhbGlkYXRlL2ZsdXNoIGZvcg0KPiBMdW5hckxha2Ugb253YXJkcyIpDQo+IFRlc3RlZC1ieTog
SmFubmEgTWFydGwgPGphbm5hLm1hcnRsMTA5QGdtYWlsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE0ICsrKysrKysrKy0tLS0t
DQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDZi
ZDM0NTRiYjAwZS4uNDI3OWMyOGFlMjdjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTMyNTQsNyArMzI1NCw5IEBAIHN0YXRpYyB2b2lkDQo+
IGludGVsX3Bzcl9jb25maWd1cmVfZnVsbF9mcmFtZV91cGRhdGUoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gDQo+ICBzdGF0aWMgdm9pZCBfcHNyX2ludmFsaWRhdGVfaGFuZGxlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+IC0JaWYgKGludGVsX2RwLT5wc3IucHNyMl9zZWxf
ZmV0Y2hfZW5hYmxlZCkgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxh
eSkgPCAyMCAmJiBpbnRlbF9kcC0NCj4gPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0KPiAr
ew0KPiAgCQlpZiAoIWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQpIHsN
Cj4gIAkJCWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgPSB0cnVlOw0K
PiAgCQkJaW50ZWxfcHNyX2NvbmZpZ3VyZV9mdWxsX2ZyYW1lX3VwZGF0ZShpbnRlbF9kcCk7DQo+
IEBAIC0zMzQwLDcgKzMzNDIsNyBAQCBzdGF0aWMgdm9pZCBfcHNyX2ZsdXNoX2hhbmRsZShzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IA0KPiAtCWlmIChpbnRlbF9k
cC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpIHsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPCAyMCAmJiBpbnRlbF9kcC0NCj4gPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0K
PiArew0KPiAgCQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5hYmxlZCkg
ew0KPiAgCQkJLyogY2FuIHdlIHR1cm4gQ0ZGIG9mZj8gKi8NCj4gIAkJCWlmIChpbnRlbF9kcC0+
cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9PSAwKSBAQCAtDQo+IDMzNTcsMTEgKzMzNTksMTMg
QEAgc3RhdGljIHZvaWQgX3Bzcl9mbHVzaF9oYW5kbGUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gIAkJICogZXhpc3RpbmcgU1UgY29uZmlndXJhdGlvbg0KPiAgCQkgKi8NCj4gIAkJaW50
ZWxfcHNyX2NvbmZpZ3VyZV9mdWxsX2ZyYW1lX3VwZGF0ZShpbnRlbF9kcCk7DQo+IC0JfQ0KPiAN
Cj4gLQlpbnRlbF9wc3JfZm9yY2VfdXBkYXRlKGludGVsX2RwKTsNCj4gKwkJaW50ZWxfcHNyX2Zv
cmNlX3VwZGF0ZShpbnRlbF9kcCk7DQo+ICsJfSBlbHNlIHsNCj4gKwkJaW50ZWxfcHNyX2V4aXQo
aW50ZWxfZHApOw0KPiArCX0NCj4gDQo+IC0JaWYgKCFpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2Zl
dGNoX2VuYWJsZWQgJiYgIWludGVsX2RwLT5wc3IuYWN0aXZlICYmDQo+ICsJaWYgKCghaW50ZWxf
ZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkIHx8IERJU1BMQVlfVkVSKGRpc3BsYXkpID49
DQo+ICsyMCkgJiYNCj4gIAkgICAgIWludGVsX2RwLT5wc3IuYnVzeV9mcm9udGJ1ZmZlcl9iaXRz
KQ0KPiAgCQlxdWV1ZV93b3JrKGRpc3BsYXktPndxLnVub3JkZXJlZCwgJmludGVsX2RwLT5wc3Iu
d29yayk7ICB9DQo+IC0tDQo+IDIuNDMuMA0KDQo=
