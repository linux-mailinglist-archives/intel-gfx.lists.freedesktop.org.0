Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9E68D145F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 08:28:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1544F10E055;
	Tue, 28 May 2024 06:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z/3fY63+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF8410F357
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 06:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716877682; x=1748413682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ljvO+P1zm29rzDprDrliS1ZktPuSxQS8v6zWCyMUP34=;
 b=Z/3fY63+I7oiAprYw3JLKN13G7MCA5l+fNlMLj8D1nk3F7HYO75OFPrm
 4gDKC2t7FfBrwNqf2AIioiAtuZRTmxMJSKIgsWKxx/9vnb2SGAefAJjSv
 /ASJcjhAwpwwsENJ1BJDChFX6oX1Ue65rSZp74ZNFa5EEpTkMVitjjic1
 n/FENRAAn3nOasv5LN1xwInAR2r0FHD0rxISn6+O/z15KVqqP+ytRaVxW
 oQies5vQ+6OpuGlonutFCOSt8/OI0A+jbtarslZtwcB51ziNTX7mTLlEe
 D1AX4fwTXD5EPepKcBh7QWqOnGMmmU93X896Mh9N5y8y2t9zfbrz+dSn/ g==;
X-CSE-ConnectionGUID: 7t5+RdqnQDOdRzfRyWGcvQ==
X-CSE-MsgGUID: 1S5l4r9rS2e0HH7VB4TW/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30710935"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="30710935"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 23:28:01 -0700
X-CSE-ConnectionGUID: QZXtH8KnS2ChSzqsZIuToQ==
X-CSE-MsgGUID: b4PZHU5lT6iNisRkX1lZTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="35449048"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 23:28:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:27:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:27:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 23:27:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 23:27:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d47fKc0tcxbTpn70Frfaxg3zplULzDM5iZJpagoarHDj+79Nwm8FEEg1f+iOo90FSDI6esp5Zp/VpWFyu7cAcRH8sJ6mcbIS+KHVXWvKdfrA+gf8dax31lDAOX9dgnfTzG/7Bua6zIzuYZiNyzUvZVFP0/er70sJ4QWecPSKgYQVeo6PZvfE9H1dKOAm/aPwK33BGZRbnfTu7ujjvxWXLvyCPaRSr+5aCgIjb02aZCUGCGZ+5bO7EvsakKACfa8kV7TLUFUHaHK3ZRP4EK+nobMqeM42guLXX9DEcOJQoqDdYHwJLcaSz0nNk7cnEsz8ltvcs5wuCTfub447hTU3gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ljvO+P1zm29rzDprDrliS1ZktPuSxQS8v6zWCyMUP34=;
 b=bCTnsxP1raFsNIrHjr2QsDNq0KCQRyLfApi56HrWvtGAM/GxerAjyzfe14ZUU9mq1TBBQpYiWi+9bQSG4kJzZ1m3kSKjlaTq5I0a2FnpRSC3QGqAWtHwF5l0ab7K3SDzMZL1JgpO3pXjNThf2r4tGPqu1ZQFlBBWVKdPAZx+ZpekvHu4br4nzG5ZiDPdSwYQXER/T4NQjp+aNtQIMQBYyZue7QykvFf/Rc1FWPhcTHShIcl+Qy3Ae38oOQcIToAM4XU1XoCjIdIrcrpknTfL8CR7g1FtoHA/oPNeJWZNDzmgmD0/O3KNhpsnmQLaVTKLSRlRFrL9WC9yDgNEQ5xlWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4974.namprd11.prod.outlook.com (2603:10b6:a03:2d6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 06:27:57 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 06:27:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 01/20] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Topic: [PATCH v3 01/20] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Index: AQHasAasSAKLNwHi9UujLcHCJSpGDLGsMBmg
Date: Tue, 28 May 2024 06:27:57 +0000
Message-ID: <PH7PR11MB598137C14154A7672471452EF9F12@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-2-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4974:EE_
x-ms-office365-filtering-correlation-id: ae50bb83-0d7b-48d8-3d90-08dc7edf50a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?R2RsdDQzWWVpV3l1VTZrTmZKenJtVlRMcDROWUpVcG5xQkpYU21zcUxIbTBZ?=
 =?utf-8?B?dVhCdFJHaVMrZlhXdEhrRlpOR1h2ZjI3TlRoY0p5UCtWSG1qNjNuVkFhYWNE?=
 =?utf-8?B?eVZtbmRIM0dSUE01WnUxd2VlY1Mra2V5UEpQMmZITkpVV0c4WE9sNC9Vbis4?=
 =?utf-8?B?dXBQbUxCR0U4R2ZpVERDcmZoU0RLTkxjWWRBa0FMZmE5RXhmYU5RWHpGckc4?=
 =?utf-8?B?Q25KRHEvNFpzTkhTQ1lCVVNDWFJSTDVVWUloaXZQZitXaENuQmYvMXZ0bVg1?=
 =?utf-8?B?QTJEZHc0REdGRUJ1Si9zcFEwVGVaY0VMbzZjTnUvWlpFVll0czQyM0Q1Z3pX?=
 =?utf-8?B?MDJIbU1SYksxdFArRjdFRHR1WDNSbTBPTlNTTWdXWFdNcWVFOGRKbFJxNTlz?=
 =?utf-8?B?em1lNDR2bHN3Q3VxaVNTZ3JVYzJkQ3JsTnIwa2JQeXpzZU04ZFRGWUk0eFR5?=
 =?utf-8?B?L1hWTjhnanNUU1M5R1JTQSt1SllSNXFJMHZnbGpsZ05ET0lHYXc4ZGxhRFB3?=
 =?utf-8?B?elEzVVQ2d2VJZlNSTlJOQ0R5UUtORjlGblBadmFQSnN3Tlp2b0J6a1lrVDlu?=
 =?utf-8?B?Q0htQk5HOXFaZGV6cFdicU5LcHFLR3lwODJxU2JMbG9Ic1Vlc044aHU2RlFF?=
 =?utf-8?B?eW0rYVM4aE8xcWd3Z0w2MUtYQm0wYjF4V1ZSUlk3MHpmN3pTOXdRYlV6dWow?=
 =?utf-8?B?bXZmZ1lkY0pCMkduNGdYeVBPNW9NUVUyY3Y0dGVFUzlJT0h2dEFSdVJYSDZZ?=
 =?utf-8?B?dmVFdHpuT0hWZmM2c29kbUhEODc3SThlZEZiVlZCRkN2NjczUWZocEU0V1Q0?=
 =?utf-8?B?bFJHR2RIei9DUEFWMUp0a256MXduNi9TYTVrTnEzQzJLMXp5RjBBd1hMMGI1?=
 =?utf-8?B?WmdqYmtuY0UvU1hMdE4vbUd6WEFYVE1zc1diSFMvL1NEa3FQcHhURUJTWHRL?=
 =?utf-8?B?L214aWRyZnhPOWtQajBsbExoU1VSUUV2N1lDODY1NkFnbVdUaVd2dnZLemlT?=
 =?utf-8?B?UnF4OGJnUmtFY2E1eVl4MHNUdXFIOER2ejBlTStMTGVuT3FSMlMyN09XZ2JK?=
 =?utf-8?B?QTkyM2IxajFOMWZteXNQWjUwRENMbkFEaWs4NDd1bWFwSG1aeUtMQTFVTG8y?=
 =?utf-8?B?c2JoUWtQUVY1ODNVYXhaNXVhdEU4Y1AwZW5pd3c2b2dnS2FVclh4UXZtNDc2?=
 =?utf-8?B?SjAxK0o5ZGcxcER1VkhNMW5hQ0FjbllWMkIvWVFCdWF5K2VVSmU3aDRZbHFH?=
 =?utf-8?B?SGlRQmxBUkpZdU5tdytEelFmdmZ6emU3U2RQU2E1aGlMbWpTQzhRZ3FpWFlK?=
 =?utf-8?B?YlBWT1ZSUlV4SUVRT2pTNG1GU0k0MXBmMTFEc0k3TUx4ZmJVbmpvNkNQNDZv?=
 =?utf-8?B?Y0lvNGtFNndvWVYvUjI0ckpzc3ZaZXpSd01HdUVIWTNNdmJ2SEZjL3JDVmtm?=
 =?utf-8?B?STNubnVKK2dlZ255cXVPR2FNb0lOU3I3U3B1cUFEMzkxWUdFbnZOSU5Mc3Zk?=
 =?utf-8?B?S3JWUTFCVFN0SG9MQTh4K25RamRndXVXaEhGeEdMc2M3clphUjhqOXdyWHFj?=
 =?utf-8?B?ODg1S2hMK0YyVWQzem5pVnl5aTVvcDNvNW5pL0RPaUJGVVl3WWdPVU1JMUhq?=
 =?utf-8?B?S29LNTFpNkpjRU5jMDRLdmFtOWhuc3ZrV3ZYb3IyNEVwdi8yZU5VUWtETXQ4?=
 =?utf-8?B?UFFQeUhDZnlMaGJQd1NXeFYwMGpQS2ZNSUxCK3luOUZYU0lMM3RqQllmdTA3?=
 =?utf-8?B?dDVWOVJ4Z3VHaTEwb2hDU2dTRzZOSjdKWnZ3bDZLQ2w4YnVIM2F3a3R6OTht?=
 =?utf-8?B?b0lRU0ZkSmJ1eEdVRFYxUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnJxdXVPRzFleGVsZi83cEdtOVhrZGdYeVlSeHFDSis3dUZpcDIyQzFXM01O?=
 =?utf-8?B?amZsU3R5QnVIb2FVSnVUOThvejJvamZQZG10VDJKWTh5anRjMnBGMU0xUHU1?=
 =?utf-8?B?RXZ0S1J6MTVxeGF3OUJFYTczajZLOUZmZXVhQmdRN2J5S05EcXlDdG9pMVY4?=
 =?utf-8?B?dFdTcnUrcmtIaC9heExXbHNOeDR5eHZnc3l1cnBUZzZoOWc0cUdIQm9LUnhv?=
 =?utf-8?B?OG1FQ3ZGK0UwWmtYRXV6YUVaNDhyMXZJTGFnd0V1cS9rSEkxQkNGV3pWd3hR?=
 =?utf-8?B?bE5ENzdlNTJsSFpqSTRRVElxQ3huNm00QVYxNFFHMGNWY3JUMkhOMzJ6Um1J?=
 =?utf-8?B?ZnpmT2tRTzhjZWpCYU9sZjJDSEo1Q3plKzV1QnlGU3ZqODRRa0pHU1EvVmpy?=
 =?utf-8?B?SVEzWlU0amdWWTh1UFNYcUZ5YnhSZzRzU1UreWN3RnRBTVJ3ampnWUQrQ2Q0?=
 =?utf-8?B?OGFiVmV2THFpSnErZERPKzdadzB3RC9TQzQvOUZPY0NRSXJ0L2d4V0c4eVUz?=
 =?utf-8?B?elNTOVVualNiTlFXdFlzS3JEdVVseXdYZzVhU3FiVUhQS1N5cjhtN0xIdk5a?=
 =?utf-8?B?YTZjUGdlSU4xK0p4MWN4dnk5R3NGYzBZZ1Q5ZzZxcitLR1hBWEFCMXBkK2l3?=
 =?utf-8?B?d2d5NHN1VGtleDRMam1JWGtTTmF4S1ljdm80WHVKaFNTL3cyczlQWHd6UXAw?=
 =?utf-8?B?Q1p6SzdXeDJBT3pldkJTZzhDby80QzJ5Mmk5OUU2SzVTUy9wYk12RDUwUUNY?=
 =?utf-8?B?b21EaGhsQU5TT1IxenJDNUJQTUErUTVvL09vc29kdjR5ckd0REtjR1lRN1pv?=
 =?utf-8?B?VzJ2WkZWalpFTE1aYUo0UzVPTkl4VkhQUGgybDNCU2FlMGtEcmRlMzdvQUov?=
 =?utf-8?B?VlBvWG9wcTJaUExXbHlXMDdQQzgvUk1neW84TFd4RU1NUGdDTTlXUzlmSEdM?=
 =?utf-8?B?bmNFbkxvbTg1NlYzcDZOenZyczBPUmdWcnAvVXVkTHA0LzlKU1hnNkFvLzhv?=
 =?utf-8?B?NEt1NDNOQ1YxMyt4emo5ZDJMbXpPVFFmTlYyTUZDdm1Lekh6cXBJU2xxR3RC?=
 =?utf-8?B?MEdyUThFM2phMyttR1JDZy9CeVFxejZBa052dCtGSjNjdnRWamU2b1pZNkpY?=
 =?utf-8?B?aG5BbmhCOXNBZVZZaWREbENGUkV0ZkUyMmN4bDZUaGpmK2M1ZjArU3hsQ0l1?=
 =?utf-8?B?RERXejc3ZnFIMTNNeDN1bVNIbGNPWkxsQS81Y1pxQmNaL3d3M2U3R1BBM3Ay?=
 =?utf-8?B?eVVJaGhqd1NjQ3pnakhXOWhUQlFFRUY5YzlxV0FaTmdGWDh1S1dFbU5XczIx?=
 =?utf-8?B?Wm5nckhDaWd4cnl3Zm8rT1VGU21lKzlSK21CNFBTUE00T0paMWtkNitVdUlE?=
 =?utf-8?B?N3ozNk5BdzdHc1A1R1ZHQ0YwM2ZibjEwV2svU1FkVDllRC81RmMxaStNU3pO?=
 =?utf-8?B?UTFzWmw4V0xzdDYvU3ZsK1QyWUQ2QUZDM3A2bUM1SVF4Z2syb2JreWFhcnpE?=
 =?utf-8?B?bFlQeS9YVTZjY253Rk5Da0lVMUFyd3MzS2xEdi96YThNT1k4a3gwci81ZFox?=
 =?utf-8?B?VkNpbG5KUURTQldqa1oxT2t5RC9uOHkwYld0ZjdLamdudXA3SThWSzlCcC9F?=
 =?utf-8?B?SkpGdG5RellrRlhJN25FNG5rWmw0UE5oRUIyc1MxRFJtaDFSZm4rbnJRUGc5?=
 =?utf-8?B?SzdZT0t6eGRsaEFCYnNLUy9ZalhjTWwvTFNWVkRYbzM5QmRDdUZIclFvYmlJ?=
 =?utf-8?B?TnRWMjl5cWJsRXRiNFVEUTNReDNDNTRIejdUTWJWWnA3cnowYnMzQnV6bWZr?=
 =?utf-8?B?S3pWbSt4cUtGZzhPWkpBcWwyZ1NIRiswcklTaXNPRG9heElZOWVUKzVEM29W?=
 =?utf-8?B?L3BRTmFhaTFoMzhjckp5YlMrZGV3cHF1QkNjV2lqbUVPbFlaRHd1NmRubDJ4?=
 =?utf-8?B?aTgwb3lFdTRvRGxWWFpVc2tTa0pyTUlQcHZjZzg4QXNGUnAzTnBwVGRMSU1U?=
 =?utf-8?B?bUlwV2tqUzlIcmtGREQ0UngvOC9zZTExQTZBMmZNTWtHcGhTTldBV1VSdlVt?=
 =?utf-8?B?MXIrMjdOY0Zpdlg3Sytvd3hNb3lxK1RJUlMrWjFkUkhWRnlGTEFGS0NHam9a?=
 =?utf-8?Q?avaVX7uoMktPKbgoD0PGToS5l?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae50bb83-0d7b-48d8-3d90-08dc7edf50a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 06:27:57.5621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jo3j37fzG1jUfnGA2+JNN+nQPlyD5pVM6sZ9SnK6VzadLIXHQXTPptw387Wcs7eWMORmtjons19oIew71wbG4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0
IDEyOjUyIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDEvMjBdIGRybS9pOTE1L3BzcjogU3Rv
cmUgcHJfZHBjZCBpbiBpbnRlbF9kcA0KPiANCj4gV2UgbmVlZCBwcl9kcGNkIGNvbnRlbnRzIGZv
ciBlYXJseSB0cmFuc3BvcnQgdmFsaWRpdHkgY2hlY2sgb24gZURQIFBhbmVsDQo+IFJlcGxheSBh
bmQgaW4gZGVidWdmcyBpbnRlcmZhY2UgdG8gZHVtcCBvdXQgcGFuZWwgZWFybHkgdHJhbnNwb3J0
IGNhcGFiaWxpdHkuDQo+IEFsc28gcmVtb3ZlIHVubmVjZXNzYXJpbHkgcHJpbnRpbmcgb3V0ICJQ
YW5lbCByZXBsYXkgaXMgbm90IHN1cHBvcnRlZCBieQ0KPiBwYW5lbCINCj4gDQo+IHYyOiBjb21t
aXQgbWVzc2FnZSBtb2RpZmllZA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQogDQo+IC0tLQ0KPiAgLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDEgKw0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMTkgKysrKysrLS0tLS0tLS0t
LS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggOTY3OGMyYjE1N2Y2Li42ZmJmZThhMThmNDUgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+IEBAIC0xNzQzLDYgKzE3NDMsNyBAQCBzdHJ1Y3QgaW50ZWxfZHAgew0KPiAgCWJv
b2wgdXNlX21heF9wYXJhbXM7DQo+ICAJdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV07DQo+
ICAJdTggcHNyX2RwY2RbRURQX1BTUl9SRUNFSVZFUl9DQVBfU0laRV07DQo+ICsJdTggcHJfZHBj
ZDsNCj4gIAl1OCBkb3duc3RyZWFtX3BvcnRzW0RQX01BWF9ET1dOU1RSRUFNX1BPUlRTXTsNCj4g
IAl1OCBlZHBfZHBjZFtFRFBfRElTUExBWV9DVExfQ0FQX1NJWkVdOw0KPiAgCXU4IGx0dHByX2Nv
bW1vbl9jYXBzW0RQX0xUVFBSX0NPTU1PTl9DQVBfU0laRV07DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBmNTkyMzhkM2Q0ODQuLjA4ZDNjOGM4
MTU4NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IEBAIC01NTksMjAgKzU1OSwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVs
YXJpdHkoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkgIHN0YXRpYyB2b2lkIF9wYW5lbF9y
ZXBsYXlfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApICB7DQo+ICAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gLQl1
OCBwcl9kcGNkID0gMDsNCj4gLQ0KPiAtCWludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlf
c3VwcG9ydCA9IGZhbHNlOw0KPiAtCWRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LCBE
UF9QQU5FTF9SRVBMQVlfQ0FQLA0KPiAmcHJfZHBjZCk7DQo+IC0NCj4gLQlpZiAoIShwcl9kcGNk
ICYgRFBfUEFORUxfUkVQTEFZX1NVUFBPUlQpKSB7DQo+IC0JCWRybV9kYmdfa21zKCZpOTE1LT5k
cm0sDQo+IC0JCQkgICAgIlBhbmVsIHJlcGxheSBpcyBub3Qgc3VwcG9ydGVkIGJ5IHBhbmVsXG4i
KTsNCj4gLQkJcmV0dXJuOw0KPiAtCX0NCj4gDQo+ICAJaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVs
X3JlcGxheV9zdXBwb3J0ID0gdHJ1ZTsNCj4gDQo+IC0JaWYgKHByX2RwY2QgJiBEUF9QQU5FTF9S
RVBMQVlfU1VfU1VQUE9SVCkNCj4gKwlpZiAoaW50ZWxfZHAtPnByX2RwY2QgJiBEUF9QQU5FTF9S
RVBMQVlfU1VfU1VQUE9SVCkNCj4gIAkJaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9z
dV9zdXBwb3J0ID0gdHJ1ZTsNCj4gDQo+ICAJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gQEAg
LTYzMCwxMCArNjIwLDEzIEBAIHN0YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRl
bF9kcA0KPiAqaW50ZWxfZHApDQo+IA0KPiAgdm9pZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+IC0JX3BhbmVsX3JlcGxheV9pbml0X2RwY2QoaW50
ZWxfZHApOw0KPiAtDQo+ICAJZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1eCwgRFBfUFNS
X1NVUFBPUlQsIGludGVsX2RwLQ0KPiA+cHNyX2RwY2QsDQo+ICAJCQkgc2l6ZW9mKGludGVsX2Rw
LT5wc3JfZHBjZCkpOw0KPiArCWRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LCBEUF9Q
QU5FTF9SRVBMQVlfQ0FQLA0KPiArCQkJICAmaW50ZWxfZHAtPnByX2RwY2QpOw0KPiArDQo+ICsJ
aWYgKGludGVsX2RwLT5wcl9kcGNkICYgRFBfUEFORUxfUkVQTEFZX1NVUFBPUlQpDQo+ICsJCV9w
YW5lbF9yZXBsYXlfaW5pdF9kcGNkKGludGVsX2RwKTsNCj4gDQo+ICAJaWYgKGludGVsX2RwLT5w
c3JfZHBjZFswXSkNCj4gIAkJX3Bzcl9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiAtLQ0KPiAyLjM0
LjENCg0K
