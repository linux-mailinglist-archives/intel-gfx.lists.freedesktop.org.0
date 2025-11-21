Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DC9C799EF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 14:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B81310E012;
	Fri, 21 Nov 2025 13:46:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NmGSmku6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4280D10E012;
 Fri, 21 Nov 2025 13:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763732805; x=1795268805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r5UwTimrTqT9F4IGDC0hbXIH/aMPpqQeE8AQzHWwgfc=;
 b=NmGSmku6xUCESks7qOkCp3SchGhOBid6gHVekVkNa/DGK2ymrBPC4JnF
 FGAiBvusfVrCeeJFdZYoK64lrVTIbQTGxPOJf4gqQvzf1qigoZMFuPSgz
 gLMpaoo5ZPB/yXEkQ3bwtdRSwRkOC3mmvIRV70TlYk0mnXDNq5ba6qs57
 vGorvDsNeZf2cx0304NcFWKqa75A6PdXSSxUu4w+CKPfoVahDPDKLk32Y
 urqckmhbKjfMlpEp5FUs51vsQ1xl9SwuFo+MaqQirwJhJmkooPDDuEF1Q
 M6S5fExbjRstFD3cAO9JHkXW6nLhnihRP7G4h6PQkKvXGJLXdtjBkg8kY Q==;
X-CSE-ConnectionGUID: MCiACi6ITteWfhGv/kdTbw==
X-CSE-MsgGUID: HIEnJqt8Sz2tx4tEQgicSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="77186747"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="77186747"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 05:46:45 -0800
X-CSE-ConnectionGUID: WgLKeGodR7GR1Pbmub16Fg==
X-CSE-MsgGUID: +t18FJWpTsakWIiPAoLo4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="191807772"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 05:46:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 05:46:44 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 05:46:44 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 05:46:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=syHNZubRA0I9PUwacsGia5vUHQwy5HOTIb3OkUYu33IV9oIz2sw1OEITSOtWCeP/5aKTzD3AkeBIBLFXIcCe7QDq5NTaWVZm24nhjlVqQejEQRPMATzcB2gJ0SQTQCQYx3sPI5YL9zZ5cgNsvgU/uTdaIVIgHlHp7pNfqORxVan/YU+/PWAVGxtv4r797QcbzoK6WwdNcGt7Vu5XPMQQaW8FMh8R0zmjbAkmI2z/u0ovXLWRzjC9Ehv/C0dtaSEJ/eFhAxgB2v1SEO6QIRwTq1omyg0sHlJN6NkJ4PlQ/+X6PBltZb2hTp5JNRYI/teCu8NyEzF/mLGPdYxIx1HxGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r5UwTimrTqT9F4IGDC0hbXIH/aMPpqQeE8AQzHWwgfc=;
 b=wp/fsrog3B67MK69mrfMinuDPoLlhHxmW7Tf3XRu1u3+wMduwq6LMLYBkNlJMR8buK3Lz3FWOvFbkCYv6bjMvmyaOquOOpWH3m6+EWmbIQADB/xNdRetDkdr+HHZSn+Uec9gW5Go9UzVPlU+zFqUZ+q87v1EIB9cLFMAUMQyqYg8D9yaH2v4cB4xk14lS8aPcxhNgdM/5dNQ/Hwu55j0AHQXDLcOpbRl0GyNnFPckZl7WyjWj5y7UUfJ76Vu6oP4hCwgT5Jp5vz6CQSc7Wm55EehOcsfm6H8GZoVQ9LCA+yWHIkUJiZuyzZcs13l6375y9qTstoxcLL8sZ9r1pqP+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA4PR11MB9012.namprd11.prod.outlook.com
 (2603:10b6:208:56d::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 13:46:42 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 13:46:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/cdclk: drop i915_drv.h include
Thread-Topic: [PATCH 1/2] drm/i915/cdclk: drop i915_drv.h include
Thread-Index: AQHcWtokqu51gXRYXkmleb5PIcxGabT9HmwA
Date: Fri, 21 Nov 2025 13:46:41 +0000
Message-ID: <DS4PPF69154114F605C32298C3BA3899E0BEFD5A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251121112200.3435099-1-jani.nikula@intel.com>
In-Reply-To: <20251121112200.3435099-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA4PR11MB9012:EE_
x-ms-office365-filtering-correlation-id: d5add0fe-f44f-4f0c-9d7c-08de290466f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?OVRuQlRRbEVsL1BZdkkwOVNBaXZ2NjJQeVdSbENJSk9pMTYzSlh0dHV2Z3lZ?=
 =?utf-8?B?dC85ZlFMVzVZSUhOK3k0Z09XS2kvM1hmdTNPV3d6MzUzNTdHTUw3L0dPL1dI?=
 =?utf-8?B?WXZwMXUyQ1Z0ajhIWUo5Z0hORTdUUFBlRUpDWlVwTTQzQVRQYVRvUHk4ZmR3?=
 =?utf-8?B?Nm80c1h1NS8rMVRaU01abGlBTDd4WlhNK3JWY2tYYzQ2MlRyaTkzVmdwbUlu?=
 =?utf-8?B?Szl3VW1XRWU5UUg0UlZMT05yUW9oVFNnYkxIL3BNSEtPZ1FhaWpDTVFVSFht?=
 =?utf-8?B?b3UzU2xueE84K3BGZ3V4UEVvamg2d0hHVDRKd0ozbEhMaEJPanlpVThNWHJF?=
 =?utf-8?B?ZW1CcmkvZFhCRjN4MkRFZ21rSmw3WWczNEY0YXFCUUl3TmRJemZQTzFoOGl5?=
 =?utf-8?B?ZFNqZitQczVOU1NrZGxjRldNUXJabk5EVFMwSHdqTkRoaE9yUE1BQzRSejRG?=
 =?utf-8?B?QWlpVXFBZXFSWW0wVXNBVXJvYU1pdThWd0xqQlprdlZGK0dFM2pwVE91cHlr?=
 =?utf-8?B?T0JTdVpPaEE3VUthdjFiMGVCNEFNN2p6Wno0WkRVYjRVOEVuRzBwd0RNc2o1?=
 =?utf-8?B?SWR0MXliMWNlQ0lIQ2d2M09oNVUzSFNoQTNwZGtuaEpJUlZEeldmOVBEYnBW?=
 =?utf-8?B?Yk42bVMraXg5cDdKaW93UEtNRitXS0dpSmZaWmN0Z3RUVjZvcS9mQ2VxN3Yr?=
 =?utf-8?B?RytPNjdLR29VK2l1TGdnNVAyZ1V0MnZMaSs0Ulo5ZEwrSVU2S2FpQ2lHMGNS?=
 =?utf-8?B?NWg5VWlBeTlxdHM3dWd3ejVpYkNIRXpRbm9qNjBuSEQwZTBwNlJ3ZXBVL01R?=
 =?utf-8?B?RDF1REhSTk9YN0tieW43SjhMdnEvR0p5REE5SlZYWnJheHQvUHV3TEhnYjN2?=
 =?utf-8?B?RnZVajNjdDh1OXphQ0RvZEloMmN1WVlPaG9SdDhRWG4zRGtJUnhIVlc2cDM5?=
 =?utf-8?B?S0JKRG5QL2tWUHpkRk1NcmhaS3JzdXU4SlFIdGtSTEtIbnZUWVZkczAyeUk5?=
 =?utf-8?B?bzBHYkZ5Wng0UjRDblQra21nQUdUUGdjSTJYZlpoNDR1Wkh6Q3FHMEF3UC9J?=
 =?utf-8?B?dFdyK2hORjZvY1Q0WGtBZW8wblcwZEVFT2pmcjN3T3Fxbm5kZXBQOC9rblNV?=
 =?utf-8?B?b3MrL2MreXJVcjVqMHdpL2Y4V2FrYjlQSExZYzZLc0hwRWFqakVBWVQzYWU4?=
 =?utf-8?B?Vi9FcHJtZk9UTXJaOGZGM1o5b1laVVh3VDczRDhnSkNNSytXYmkrUEdqZzQv?=
 =?utf-8?B?QXFVZi9wcC9xVWE0OEJKbUN5UDFaem1Xd0p1UWRncXorYTE2cURPb0xSZkpj?=
 =?utf-8?B?WWNzYzZ6bUoyMVU3c0RQZDlRWUpvUGZjSGpPUktFVEVPTXI0MGpCVWpRWXNI?=
 =?utf-8?B?WUE4SmI0eGpNN1FsMW9RbXNZQUNTd2JhWjM0R1B3ZG1DTHNCdUQyTE0yZHhh?=
 =?utf-8?B?TVp1dFRJNjB5KzlGc0cyaGJFcnNKQ0VkOUVKNHIvVVJtQy9UTURFeWNSV3Vv?=
 =?utf-8?B?c3ZMbmlQc00xMDVZVm96RHRKcGRhbzNETWUyRVNCK2RXWU5TU3VDNnpwMFIy?=
 =?utf-8?B?UEtOZUFHVFdIT1V4NktTVTloMnFaTE9ON1hTck1oN2l4azJrZnUxMDVKY1I4?=
 =?utf-8?B?STQ0V3BFK1VJTENSSitFNHFya1BYVDc4MlQrUkVPM251OUR4Y000Z3FXbGxt?=
 =?utf-8?B?Y2F0WkZXeTFnMVc0YS8va293aGxBckZPYXY0bmMwRm52UkRsUlE1bGY4ck51?=
 =?utf-8?B?OGJLWWNoNnFXUythR1RkaG9ROGRTK0JIamVsSG1oZHJ2dndLS0J5a1BIS0JO?=
 =?utf-8?B?Wk5RMVRtSDI0NHd3U0RZazJpVVMwVlhUQXZPWWhnSzM0ZXFUbjQ3WnBLT2I5?=
 =?utf-8?B?aVFwRUN1QU9ISVY4VHFnRmhSVHE4NDJiZ0FaUnpLbjFuYlRnV1BTMkhIREpD?=
 =?utf-8?B?dDQzTEpwbHNzRW43NlYzc3lWSXBMTENaUGZnQklQKzI0Y2M3UkdHN3dpZFZs?=
 =?utf-8?B?R0IrOHRYUTFEeDRibkVsa3JPcXhyMnFQRGE3eGhKVWVqOW9MYmxNWGZVVTBj?=
 =?utf-8?Q?GguLFA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dmpCYkZ0bTRJSGZOQlhMc3pxWHFsR1ZCQ05YZEs2U2pJOFh4M0RmLzdXeFlp?=
 =?utf-8?B?dkxrc3RESlUyc0dKQWNFVTA1OHhaWlkxYjZlYzZCaGhZVmVGZi9OUGdFdkVQ?=
 =?utf-8?B?VXZqNzZ4Y0xJNFZZMU1rY24rRFROR2RNN1B2MnpwZFR1NU91OTRiWGYyR2VQ?=
 =?utf-8?B?UU1oYUV4Zm4vTjNKWkREWVlhK1c3d2FXaUkrUFp1RllaOTdNSFdkWlBUZnky?=
 =?utf-8?B?WVRWUlozUS9pWHFMaml3NDEyMFlwMUFCa3BiU01qeWhpR0hsRzZWeTZkR1NI?=
 =?utf-8?B?Y2hvMTFzdE1SMmZDRi8xTzh2SmVhcUxjUFpTaWlFY1BCVnhTK2JxQk1UeDFs?=
 =?utf-8?B?R1FYdVpxOXFnVGVSM2ljL1ZiNTBEZTFNWGJvOHhUVDZlQ0tDUFg2TDh1WVk0?=
 =?utf-8?B?VFJZMDd0VnIwc0p5RDJXeXdjMSswYmJkNG5kTUI1UlQ1VytDekhJdmkrdDc5?=
 =?utf-8?B?cmJZdTRZMzlEb2ZFbUFYZlhmbnhJb0Q2NmxIeThpTmNXU094NTlrb0pnYXRq?=
 =?utf-8?B?Rjc3c3hyV0cwb0RkdWY1Z2F4MVdQamxhUHBjbHAyVzIwMmVGbXk3Y0F5ejNX?=
 =?utf-8?B?M2tjazRqMzI3RjgyT1JpUjN2ZVBJaGcrRi9tY1hxZFhPT3VDNHlYMHZVUldL?=
 =?utf-8?B?ZjVTWnZIUWNjUWErYjZJMC9pOU5vMmNRZzIyNldRR3NQekdYaHJOVGRVcnlu?=
 =?utf-8?B?TzBheDdSR0tvbjZBc1FtUlNyOXpJMHBVQ3A3MGdFOGFyejFiT29LVCtnSWta?=
 =?utf-8?B?T2tpSHVkb2RiUkd0WHE0ZDAxZ2VGMzJ6SzhFTUpQVThDTUkxYXhEcGg1VVBY?=
 =?utf-8?B?U0d4eERhUGRjSFFqeHJjS1p0V2I4VnJYTWx0dGRpTTFreC9WRDVxL08xazJ5?=
 =?utf-8?B?Z25SVkc2SUJPeG5BUmJYQklWOGtSd1RhdHhoaHdxTm9rZGhTcTNZd3BkLzFF?=
 =?utf-8?B?OVlzQm1UOWw5cUVmdWVyWElocTljSC8xS3BaUU5NN0FwOCt4SjVhTGhzUExK?=
 =?utf-8?B?UjRRbkpSSnpYQUVpNXdZVFUyblV3cnFLL1cwckM3cHVkREJxNDFlZmxzeDkr?=
 =?utf-8?B?d0NQUUM1V2ZnZkFYdmJrODhMSnJscXpPVWVQY0N2WDBMWDN6Y2gyN1FtVFBt?=
 =?utf-8?B?KytFdmRCeUY2RGY3WGVvYUFybGQ1R0Q2SWJlUDhDL0QxMU9YVkNuUDF5NHln?=
 =?utf-8?B?UzZzMnZpMm80M2dJdVF1SWdjdW1nM1NjWFl0N25LNHBETmVVbHFJdG50RnlN?=
 =?utf-8?B?ejNPVFZLT3lUdXJvaUxxVm1UYlh6bzRtTE5IT2tmSXNudTBONFhScFg5dlRa?=
 =?utf-8?B?RVowM0lwSWpOTUJPOHA0aHdyRHZpdzNYRU52ZlRkcFpNY2g5SWdQKzRHaDdo?=
 =?utf-8?B?WFNqckJDSlppNzl0RllWOU9LVXIyMk04RE0yWm5hdHZmclNFYkx6L2NhMnJ4?=
 =?utf-8?B?UDJQdnJDbnJSVDRmbTBxVkw4b2wvRHZrVGNaNWY5dytFZE1yekw0ODlhU1dp?=
 =?utf-8?B?SHVLano5YmlRdExGNnFZM2oyRDY3VXRQUXVsOS8vSFBLZGJnelpodGFzcUxy?=
 =?utf-8?B?enI4Q1lTUktCZVQrek5GQ2RTakt0bi9ZakdkNlYxbUxIKzNEZFJWQXdxdDl1?=
 =?utf-8?B?eHY4Tmd3bTFWRUNvRndVN0tvWXFIYVRwbUs0bkpEZzVERW16VG5JQUdDbEZ4?=
 =?utf-8?B?UU9KU2pMaHp4eER0bHFEd2JhRFpid1c1djBKWTEwcTBEYTluRkJDQUUvaEM0?=
 =?utf-8?B?MnFmVEVzWmp5Tm1WSzVIeXNwSE9vMUVZRjJrSk5YT3VMY2xFd09nWU1GQ2xX?=
 =?utf-8?B?OW5rTDcxOFprUTR1c1lBeUxJaDVXR2FQOVZzT09mSzR4eUhUUkNvd0UwMVNw?=
 =?utf-8?B?UGU4VjNOUTR4eWhibzIyM1ltT0xCUlVsWmlldUxMaWN0TjkyUXlVbTMwWEs5?=
 =?utf-8?B?dkptRk9IeDRlOWY0Y2hwWUp2TjQ0TVF6OC85dTlUWW9jVVp3cVYyK0lnb3Fu?=
 =?utf-8?B?RG1nWkU0T095Ym1lbk1xaDdyNGtON3RVQWFtYnRkSlRMRmZLWXQra3A4SUVL?=
 =?utf-8?B?YkVKcHVOQktYbkJkUG9IUUhMeXpjTXFlUGFSczB6WHRFclY5VksrUVA2ME5L?=
 =?utf-8?Q?y5inM7RT4JIYCqF9N6bJRER9n?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5add0fe-f44f-4f0c-9d7c-08de290466f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2025 13:46:41.7119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iSog9oREkpnsZZwuXYZMG7yx9mbfG2121625LUEl5D4KZ+AMP4l00CdF7vlWfnD0v1xRd4kI7XOr+FvsmGZD2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9012
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkgTmlrdWxh
DQo+IFNlbnQ6IEZyaWRheSwgMjEgTm92ZW1iZXIgMjAyNSAxMy4yMg0KPiBUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+
IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BB
VENIIDEvMl0gZHJtL2k5MTUvY2RjbGs6IGRyb3AgaTkxNV9kcnYuaCBpbmNsdWRlDQo+IA0KPiBp
bnRlbF9jZGNsay5jIG5vIGxvbmdlciBuZWVkcyBpOTE1X2Rydi5oLiBEcm9wIGl0Lg0KPiANCg0K
UmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyICstDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNWM5MGU1M2I0
ZTQ2Li42OWE3OWNjZGQxYmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMNCj4gQEAgLTI5LDcgKzI5LDYgQEANCj4gICNpbmNsdWRlIDxkcm0vZHJt
X3ByaW50Lmg+DQo+IA0KPiAgI2luY2x1ZGUgImhzd19pcHMuaCINCj4gLSNpbmNsdWRlICJpOTE1
X2Rydi5oIg0KPiAgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfYXRv
bWljLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfYXVkaW8uaCINCj4gQEAgLTQ2LDYgKzQ1LDcgQEAN
Cj4gICNpbmNsdWRlICJpbnRlbF9wY29kZS5oIg0KPiAgI2luY2x1ZGUgImludGVsX3BsYW5lLmgi
DQo+ICAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfc3RlcC5oIg0K
PiAgI2luY2x1ZGUgImludGVsX3Zkc2MuaCINCj4gICNpbmNsdWRlICJza2xfd2F0ZXJtYXJrLmgi
DQo+ICAjaW5jbHVkZSAic2tsX3dhdGVybWFya19yZWdzLmgiDQo+IC0tDQo+IDIuNDcuMw0KDQo=
