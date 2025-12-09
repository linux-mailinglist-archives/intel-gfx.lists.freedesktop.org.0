Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D7ECB0AF2
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 18:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A6010E630;
	Tue,  9 Dec 2025 17:14:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jyyyy/CY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA9E10E206;
 Tue,  9 Dec 2025 17:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765300486; x=1796836486;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=NaKh2aQtpjvpXyZcattsLHenDrUFUIvtrdCQ0P1iM78=;
 b=Jyyyy/CYDrmF3yKi64EWEYDJcPrW8UnQ3h8U6xoLeztXJHfiRoZMfCf1
 iC3hHQA39MqljRdGnBfZigZsPB3hmJQjY+lUuweQvWaHFh/gWZG4Bpdx+
 pbgPczOgTMaXlY5KICdtz6SChS9WMgp1kI5YiotUZdxWt6FtU3lGI3sj0
 fFaakfvGYFhg7RTpkCRD9vVhsdqU6WKU1jDT8fCCNwiJ9gbzI/bUJFbSz
 B3StbuFk17FSiD2gdNGlaT9P9p0vbF4gmfShmeVH2Gk9JiI9vSvvjBM/h
 y0Kkt5JrMUpFGDg5ZTniPtA3x2ZIxFteqF0OSYYWMhkzkOBv1Z6cv2JuW w==;
X-CSE-ConnectionGUID: STR79P6ORgec4nqBgTIXdQ==
X-CSE-MsgGUID: +/akTnvTTwu1AuJAkC8S+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="71111843"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="71111843"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:14:45 -0800
X-CSE-ConnectionGUID: rz/o/LPeR4q0tHFkGAhgsg==
X-CSE-MsgGUID: qP4JfVIESBm8AIExF7V0Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="201383011"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 09:14:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:14:45 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 09:14:45 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.30)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 09:14:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wKndwqKMeKtQmPa11PratlHs6k3AvB/RyqU5jSNWD3gXhnFq/3DQuvZOe01KytvNsltLBt4tDsc6QM4D4Xi0wzCYT1E+bFwRiDKr9FuF8V2OH51K6b3TXaJGLl++Yv9HsiQvWf+W0yPMcfVhWCSRjx5RIgZLfImYAK7YlZPHjQlNfPhiTC5HLb1JQxITGWoy4huUC4UyMIcSIbjOfi+SQOb1uVBSKPf3PwhlR+CcwUaiqHCF2y+656j86kdookKSgM4co9soNkQVvoPB2aQSEN1j2yLRBKp4g08JWNfh36SM/Y55ac+MTMr8htEbNo19MLWMOt8Upo6aur5yVL0Lwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NaKh2aQtpjvpXyZcattsLHenDrUFUIvtrdCQ0P1iM78=;
 b=ggLXbjzkzMwy+/2eyLpOoawm7e9lSRt48JXWcqNA4WPMhmlpVXJ1bzTlwuwl1Kl9ryuJ5c8xVdV+YOdoW6k7gq55RACidco6xcWHXZ1a8ktECe6KX+VYrIHMTilLuOK2To8U+Fx5zGdJ427QbCRvqkTcuUDeUiWtj7UqllLqsNy91UuwoUj2i8keZ8Dnqdqs4F+Yx7bxs3CJDgrAYm2fHQZ0eZMCy3tUdB7qp46qr4bBPVonurUJRS7lRCR7D0n2IW6rmspAGOHMeu1sq/522QJmoXM8SvTJKpVNsKY9xpGLvTbnlQlXNQkAuMCIM96ZkqW/jGxqQ094D79Ptt07mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 17:14:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 17:14:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 41/50] drm/i915/dsc: Switch to using
 intel_dsc_line_slice_count()
Thread-Topic: [PATCH 41/50] drm/i915/dsc: Switch to using
 intel_dsc_line_slice_count()
Thread-Index: AQHcX8vTrKoOHsdZ/E+KV5+kljrSYbUZnwKA
Date: Tue, 9 Dec 2025 17:14:41 +0000
Message-ID: <5ec14863d267703953ea1473c64e7412352a1b35.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-42-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-42-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB7054:EE_
x-ms-office365-filtering-correlation-id: 44c51e0a-5874-42d0-b8d9-08de374670c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dXdqTVZheUVPSWY3TFNUN0I2WXNiUEk4cTkyalpOZ1NUVm5Xb1VQOVhod2kz?=
 =?utf-8?B?VitzSzNENnh6WXB0dEZjSngxY3NEU0V5dWJ1RUlGbE5SWU1IL3FJemdOK1BY?=
 =?utf-8?B?RW9VUkJGeXFPY28vQ0lubzVYeHBONStWcE1Ba0FsdS91SHFlN0pKM0lFSTVL?=
 =?utf-8?B?eGJKdFZjUWZVN3RLdFhnSWlIT2ZpZUNFVXBUT0pXRG1UZGIxay9MUVYvd0tB?=
 =?utf-8?B?M3p5REkxam5CdkdBeW0wMmo3Y05kR0x6UURwMi9ETGlpaXcyYklpU0gxQmZI?=
 =?utf-8?B?MnZ5YnFCVXI0MHhIRDhsZmNXWjNyNXRNTWU1RFhBT3NzMXg5VVdUeW5tSk05?=
 =?utf-8?B?c3BQeVBxUzBEcjJCT2hSNWdCakFCWWtudmR0WWtlU1FiZ0tKajcrVUpOYUsv?=
 =?utf-8?B?VW5rU3p2b2lleXBOdWtYdjdiRWNjVFpJK0Z0TzIxZzNsczhYM3V5WUhRV1Zu?=
 =?utf-8?B?TWlaRUlpSFMzczBnVDJTOE5XeE8xY25yMlE0bXpsR0hEQVYzMEN5UHpCTjkv?=
 =?utf-8?B?TXNrZ0tobkVrTmY0bkVQSXFycTNKQlJCVkhlYytQdGZBNzN3dlNCMlBwUlF5?=
 =?utf-8?B?UGxtczZIRFRjM2Zsd3lqRzFzQW1tSFpWdlVDdEk4NjF6blZSdmJPU1BuQ3Jz?=
 =?utf-8?B?VDA5QnJYMVlScDVCcTNnMUpWaUtCQXNSUTQreDV0VXdSVDdveFJFS1M4QVdI?=
 =?utf-8?B?RVZ1eDEwakpWVEg3NEEzV2pPaXZVck9jMUtud0hNcVNOY0NWeWprYVRJa1NQ?=
 =?utf-8?B?L05ESnZVU3pMVUlWTit2WkVybzErbStoaCtVOENpeEFudkpWYlVreTVManQ3?=
 =?utf-8?B?WlRmbDZHS0g5RzNSNUFNaUFMTnp6QTR2RU9iUWRPRCtKQkV3Wk0xc2NOcW5O?=
 =?utf-8?B?WjZjcGRjenhPWGgwSE00ejJpWlVBWEp3dTZsOENaOXV1cWRhcHU4cytzdk9Z?=
 =?utf-8?B?VTluWVZpRStLamx1MHA0NWhLbkdFWlZkeTZDb1JHZnpNYjBSYjNzU0N3MkRr?=
 =?utf-8?B?SnphVFhoSmdGUk16aHRPQTgrOVVwUlBZdThYQkdmZ3doU1czU0dVaTFRTDhz?=
 =?utf-8?B?bEpZd0trSUxGVGQvT0N3ME13RGpIY1c0K0QyNW1qMnd5cDV0UXNyKzd1bVNJ?=
 =?utf-8?B?TUJGd1kvY21RVnB6NS92ZDVWWTIwVkN6ZHBEOW1MN2VOUXpteGEwTjMwM2JJ?=
 =?utf-8?B?UWFLSDlNTE1YVlFjZWREU2trWG44akpiM2UzRlo2ZG10cFF3R2hJZWpHQ1Y1?=
 =?utf-8?B?MnJRN0lEaUFWZHg0cUF3bWdreFcxalBsUC9rUDQ2cGZzb2paeXpBakoxY01H?=
 =?utf-8?B?VEM2YjNQNk9teG9ldFpiRkN2Q1VTck01YllKUGZkTng5enJzaHpod2pkQ3dz?=
 =?utf-8?B?THRGRURkY3Zrc2JtMVdySkpDWFRwSjVYNXFBK09Oam9JWU9UcTdjRElEcU1k?=
 =?utf-8?B?RTJadkhTTEU0T3BqeGRNYWU0YTdiM1BDaWx6TVRZVnFPMEJ5cUVuejB2SS9C?=
 =?utf-8?B?aEdXbGxWT0VET3hnUlloN0VlUVMwQXRGa1ZLTkI2RVFxZXNSSWpQck1EZ1M1?=
 =?utf-8?B?RElpYUNoY1VrYUpVWTNKOHplekMwdlN3d0N5SnpMcGM3VGdmSWhVNmZFNTVR?=
 =?utf-8?B?T05kazA3eFZwVFlGNGtBR25oakxDcStCMDZTek51bm51WHUyRlQ3c3dKZVZR?=
 =?utf-8?B?dVdQekNZaU80QURtREZBcFM0K3FyTXhxTkw4enBRNjM3ZWxGaDlxTCs1YjhK?=
 =?utf-8?B?TUFicktDUTMzM2dqNlhoUExUY2FOTjRmakZLWG1ZVm5GTTJoVnFneXZsN1Bk?=
 =?utf-8?B?MSt0MmZEcUFjSjA5cG12eGhyVEloOUxlQ3c0QkhLakoyaWdtOEViK0x0a2I4?=
 =?utf-8?B?T2lkeUNQcEJRY0VDZURUTnRmMFJMdGw1OHpualBTSEVkanZTYXJ1Uk1pVWx5?=
 =?utf-8?B?Mml0Rkc4MHZlYnBVVUVIYnV6WDNDSklkcTl3OWRUOXZNcXF3RktOK1lPUnpj?=
 =?utf-8?B?SkdTWmV5bFc0OUxuQWhWRHQ4MUxpT203MVY2ZTkzcjh6aG5BOWhTaWszTHdS?=
 =?utf-8?Q?CRV7IG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlpLUk9kWllLbWI4M2xZc2sySU1jZ0x6aFpsOXR4QzJKd0xDem9FREo2bDJ4?=
 =?utf-8?B?VkpJc0NFWjdVTUFSbDBFdHQwY0h0VmYyeTR0WGVUbUtTTzRZL3ltdlQyOGZz?=
 =?utf-8?B?SWVkZVhybHNLNjgvdHFqcmNLbjJnRmdUQTRGR25zSjNwN3VmQTNtck1zbnFV?=
 =?utf-8?B?eDFLTWlGbTlMRWdxM01JYk9hOG1KL3FZOHJrRVdJZVN3MW45L21TRC9Ya1Yy?=
 =?utf-8?B?NW1JUit5ekhpUVVnMUJZNXI3bnZweGdhc3VWRHJmMEI1YzhqME9iWjBXeTNl?=
 =?utf-8?B?YU9GajJoRG9mZTBnSjBmNDdPU3RoWWJwNzc3R1RadnJEZk9QQnNZc0hrY2tp?=
 =?utf-8?B?b1VNVThZUUZ4QWlGYW9YR2o0cGoxaVJZU1drODF4ODFsbkxDaEFCSUZtcG1K?=
 =?utf-8?B?a3A2SnpFc0hPbk8xeW50RU5ZdEgzOWJrTFo5WkY0ZnkrZ05UMHF2QWo3bzUz?=
 =?utf-8?B?ZVVZZjRuTmRUS29PZ3E2VGwzRE9PbUp3M3h4eUd2alV6R3JpN00yWEUzSU1y?=
 =?utf-8?B?MnFtR0ovaU5id3JRcGFvR3lrUmNDTTlhQVNzSDJxM0NINVVsc29jWStjSkZ2?=
 =?utf-8?B?U0pLeTBySDRHRDFraitOQjhTNjc0NG1xYzdUVk0zZjR0c3FQajBLUk54OWFq?=
 =?utf-8?B?aVoxb2JhS0ZWdWRMbUdtSzRlREhuMG9rcUZYSWNBdEo3bzFld1ZoZC9qZmg4?=
 =?utf-8?B?eHhvSk53THoyNk02Y0RZbHBobVEzRUYrbU5Pd1M0cFk4QVpiUmFxbGlydW10?=
 =?utf-8?B?NXlUWGE4V2VwSTJ0VUVtUjFUcmdwRHFHZCs0bDJuaWNKbmtoRDVVSllhU09w?=
 =?utf-8?B?My9LZElPcEwwazMwbFhlSUUrVUlOZFJwL3g4Z2tOOWRMaWpGeThsYko3d3NF?=
 =?utf-8?B?alFreS9RVEpTODVhZVdhTXppZHV2QWZQK0x2dUh0WnErNCtuempzRjdJTW5J?=
 =?utf-8?B?Tld2R3JhYkdvUyt2K09Uek1TRE9tYk5weVdSRVZMRkpyUVlWTzh4MjBTeHJt?=
 =?utf-8?B?ZEtqTlc3dkROQXByNFhRZkU3ay84aTlMTkZVU2JXc1Z6aXFmQ2hSa1ZINWMr?=
 =?utf-8?B?amt4YkpTdVE0MWRQY1BMZC9ab2lCOTFIbEx1SHVGNTN3aUxMUWV3VUF5ek1j?=
 =?utf-8?B?dWR5cVZYVTJJQkJpOGxrU0pqdGNkRC85MG1iQ3Y5dU94M1JLREVDaVlKdDBB?=
 =?utf-8?B?WUdGZXN3WHZ6U0Zpam5kSk9WbEFnNFhiNXBGNWREZWpPZ1dmUk9qZTBETzZU?=
 =?utf-8?B?VUlJVjA1OGMvSE1ZNW9Nc2Q1eG9hMnI4MHAyaW5PY3VEN2VSNFh2aDJVS3NN?=
 =?utf-8?B?TXNZY2pObWZRVlo1Wi9WT1FQZkk3c3ExSHpXWmp4cGpmS1luZi9DK08zY3F1?=
 =?utf-8?B?L3dMOGR3UU9BZWFOQ25obVNNV3VRYzRROFRHTmg2aXl4d1hLQUZYODRoQ2lV?=
 =?utf-8?B?NXkvbWF1TCtMUkVTRlpDeFRtSmM5dkJtdWVRYnlBeFZOZkpZNTJEeVpOK2JL?=
 =?utf-8?B?WUUxUm14QUNwQjVEb3o2VmlpTnlncVgrNXF5UGRybFp0b1lTeEYwR2FxekhF?=
 =?utf-8?B?UFpzVDJIaGJ0WVJKbkFkVXFSUzYvYkx3UFI3bHJsMThwZUlMKzJLQm9iMSto?=
 =?utf-8?B?Q204a2hsTFpueE04Ym8rN0hYak5oVHNWVGtINXlUOTlLM0gxZ25wcy9QZUsw?=
 =?utf-8?B?MEpVNGgybUFXeEo5cytiZlp6RHZKckkwSGpSYml1cjhlZTR1c1BwajV4c1p1?=
 =?utf-8?B?S1drUWFLbE5HOEkwS2NZOWFjT2F0ZHFjdDJhVmdyL3dicnZlQWx5RHViNHBB?=
 =?utf-8?B?QjBLS3pGUWl2bkZQNWhGQnpPaFFqVWdnbkhER1dNWVJYS3B3cUpFYVNaQUIv?=
 =?utf-8?B?Wnk1NEwxZGtHVlVaalFlcnNFSWtaU1p2NGZ2WUpiUHVHeXNybU1Eb3p6Y1FM?=
 =?utf-8?B?N25pUFdWSjNXV1B6U3llU29IQjRHa3ozdDVjemJTTXgvdU1YYmFUcnZOU0Ex?=
 =?utf-8?B?T20rYW9GQWxWdDRKV3VIS0F6UzZ5TWFJOVR0bGtLVU5lRVpDQW5XKzRvcEdT?=
 =?utf-8?B?YUcwRVlHQU5hb05wd1VTZ1Vpdi9GMEVsc2VjM0IvTENyaDhNWUkyVGthbllK?=
 =?utf-8?B?ZGVuTTlCaTZHM1NBWEpKaUIycWw2NysrN3I4WmhoRE14YzhCL3hna256WkVi?=
 =?utf-8?B?WjZlNEtta3o0V0R6VW5LSjc1eTFUWHVCUHMzdVF3WDJXMXM3RGVpYys5VFFL?=
 =?utf-8?B?UG9BSEc1VnlNQ3dFbGlHZTFKMVR3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B90A458342020B4389513B38AC647AB3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44c51e0a-5874-42d0-b8d9-08de374670c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 17:14:41.2667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SYoVP8FTeOxrv0gkvtvDDg0X3NtFL2BtaFBX0yT+aYj74AaLNrzIUf0qYZFxl5ahYjr0YdeB/BeaXdUP+5btFfp0dPM5IUIhLWLjb2g6RfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7054
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEJ5
IG5vdyBhbGwgdGhlIHBsYWNlcyBhcmUgdXBkYXRlZCB0byB0cmFjayB0aGUgRFNDIHNsaWNlDQo+
IGNvbmZpZ3VyYXRpb24NCj4gaW4gaW50ZWxfY3J0Y19zdGF0ZTo6ZHNjLnNsaWNlX2NvbmZpZywg
c28gY2FsY3VsYXRlIHRoZSBzbGljZXMtcGVyLQ0KPiBsaW5lDQo+IHZhbHVlIHVzaW5nIHRoYXQg
Y29uZmlnLCBpbnN0ZWFkIG9mIHVzaW5nDQo+IGludGVsX2NydGNfc3RhdGU6OmRzYy5zbGljZV9j
b3VudCBjYWNoaW5nIHRoZSBzYW1lIHZhbHVlIGFuZCByZW1vdmUNCj4gdGhlIGNhY2hlZCBzbGlj
ZV9jb3VudC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVs
LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuY8KgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNiArKy0tLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8wqAgMSAtDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEx
ICsrKysrLS0tLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNj
LmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDcgKysrKy0tLQ0KPiDCoDQgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCA0NzljNWYwMTU4ODAwLi42OThl
NTY5YTQ4ZTYxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYw0KPiBAQCAtMzUzOCwxNCArMzUzOCwxMiBAQCBzdGF0aWMgdm9pZCBmaWxsX2RzYyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gwqAJCWNydGNfc3RhdGUtPmRz
Yy5zbGljZV9jb25maWcuc2xpY2VzX3Blcl9zdHJlYW0gPSAxOw0KPiDCoAl9DQo+IMKgDQo+IC0J
Y3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvdW50ID0NCj4gaW50ZWxfZHNjX2xpbmVfc2xpY2VfY291
bnQoJmNydGNfc3RhdGUtPmRzYy5zbGljZV9jb25maWcpOw0KPiAtDQo+IMKgCWlmIChjcnRjX3N0
YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaGRpc3BsYXkgJQ0KPiAtCcKgwqDCoCBjcnRjX3N0
YXRlLT5kc2Muc2xpY2VfY291bnQgIT0gMCkNCj4gKwnCoMKgwqAgaW50ZWxfZHNjX2xpbmVfc2xp
Y2VfY291bnQoJmNydGNfc3RhdGUtDQo+ID5kc2Muc2xpY2VfY29uZmlnKSAhPSAwKQ0KPiDCoAkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDCoCAiVkJUOiBEU0MgaGRpc3Bs
YXkgJWQgbm90IGRpdmlzaWJsZSBieQ0KPiBzbGljZSBjb3VudCAlZFxuIiwNCj4gwqAJCQnCoMKg
wqAgY3J0Y19zdGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGUuY3J0Y19oZGlzcGxheSwNCj4gLQkJ
CcKgwqDCoCBjcnRjX3N0YXRlLT5kc2Muc2xpY2VfY291bnQpOw0KPiArCQkJwqDCoMKgIGludGVs
X2RzY19saW5lX3NsaWNlX2NvdW50KCZjcnRjX3N0YXRlLQ0KPiA+ZHNjLnNsaWNlX2NvbmZpZykp
Ow0KPiDCoA0KPiDCoAkvKg0KPiDCoAkgKiBUaGUgVkJUIHJjX2J1ZmZlcl9ibG9ja19zaXplIGFu
ZCByY19idWZmZXJfc2l6ZQ0KPiBkZWZpbml0aW9ucw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCA1NzRmYzdm
ZjMzYzk3Li4wZjU2YmU2MWYwODFiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtMTMxMiw3ICsxMzEyLDYg
QEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgew0KPiDCoAkJfSBzbGljZV9jb25maWc7DQo+IMKg
CQkvKiBDb21wcmVzc2VkIEJwcCBpbiBVNi40IGZvcm1hdCAoZmlyc3QgNCBiaXRzIGZvcg0KPiBm
cmFjdGlvbmFsIHBhcnQpICovDQo+IMKgCQl1MTYgY29tcHJlc3NlZF9icHBfeDE2Ow0KPiAtCQl1
OCBzbGljZV9jb3VudDsNCj4gwqAJCXN0cnVjdCBkcm1fZHNjX2NvbmZpZyBjb25maWc7DQo+IMKg
CX0gZHNjOw0KPiDCoA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+IGluZGV4IGQxN2FmYzE4ZmNmYTcuLjEyNjA0OGM1MjMzYzQgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIwMzEsMTIgKzIwMzEsMTQgQEAg
c3RhdGljIGludCBkc2NfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiDCoAkJCX0gZWxzZSB7DQo+IMKgCQkJCXVuc2lnbmVkIGxvbmcgYndfb3Zlcmhl
YWRfZmxhZ3MgPQ0KPiDCoAkJCQkJcGlwZV9jb25maWctPmZlY19lbmFibGUgPw0KPiBEUk1fRFBf
QldfT1ZFUkhFQURfRkVDIDogMDsNCj4gKwkJCQlpbnQgbGluZV9zbGljZV9jb3VudCA9DQo+ICsJ
CQkJCWludGVsX2RzY19saW5lX3NsaWNlX2NvdW50KCYNCj4gcGlwZV9jb25maWctPmRzYy5zbGlj
ZV9jb25maWcpOw0KPiDCoA0KPiDCoAkJCQlpZg0KPiAoIWlzX2J3X3N1ZmZpY2llbnRfZm9yX2Rz
Y19jb25maWcoaW50ZWxfZHAsDQo+IMKgCQkJCQkJCQnCoMKgwqDCoA0KPiBsaW5rX3JhdGUsIGxh
bmVfY291bnQsDQo+IMKgCQkJCQkJCQnCoMKgwqDCoA0KPiBhZGp1c3RlZF9tb2RlLT5jcnRjX2Ns
b2NrLA0KPiDCoAkJCQkJCQkJwqDCoMKgwqANCj4gYWRqdXN0ZWRfbW9kZS0+aGRpc3BsYXksDQo+
IC0JCQkJCQkJCcKgwqDCoMKgDQo+IHBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY291bnQsDQo+ICsJ
CQkJCQkJCcKgwqDCoMKgDQo+IGxpbmVfc2xpY2VfY291bnQsDQo+IMKgCQkJCQkJCQnCoMKgwqDC
oA0KPiBkc2NfYnBwX3gxNiwNCj4gwqAJCQkJCQkJCcKgwqDCoMKgDQo+IGJ3X292ZXJoZWFkX2Zs
YWdzKSkNCj4gwqAJCQkJCWNvbnRpbnVlOw0KPiBAQCAtMjQyNywxMSArMjQyOSw4IEBAIGludCBp
bnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gwqAJCXBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY29uZmlnLnBpcGVzX3Blcl9saW5lIC8NCj4g
wqAJCXBpcGVfY29uZmlnLT5kc2Muc2xpY2VfY29uZmlnLnN0cmVhbXNfcGVyX3BpcGU7DQo+IMKg
DQo+IC0JcGlwZV9jb25maWctPmRzYy5zbGljZV9jb3VudCA9DQo+IC0JCWludGVsX2RzY19saW5l
X3NsaWNlX2NvdW50KCZwaXBlX2NvbmZpZy0NCj4gPmRzYy5zbGljZV9jb25maWcpOw0KPiAtDQo+
IMKgCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwNCj4gLQkJwqDCoMKgIHBpcGVfY29uZmlnLT5k
c2Muc2xpY2VfY291bnQgIT0NCj4gc2xpY2VzX3Blcl9saW5lKTsNCj4gKwkJwqDCoMKgIGludGVs
X2RzY19saW5lX3NsaWNlX2NvdW50KCZwaXBlX2NvbmZpZy0NCj4gPmRzYy5zbGljZV9jb25maWcp
ICE9IHNsaWNlc19wZXJfbGluZSk7DQo+IMKgDQo+IMKgCXJldCA9IGludGVsX2RwX2RzY19jb21w
dXRlX3BhcmFtcyhjb25uZWN0b3IsIHBpcGVfY29uZmlnKTsNCj4gwqAJaWYgKHJldCA8IDApIHsN
Cj4gQEAgLTI0NDksNyArMjQ0OCw3IEBAIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJCcKgwqDCoCAiQ29tcHJlc3NlZCBC
cHAgPSAiIEZYUF9RNF9GTVQgIiBTbGljZSBDb3VudCA9DQo+ICVkXG4iLA0KPiDCoAkJwqDCoMKg
IHBpcGVfY29uZmlnLT5waXBlX2JwcCwNCj4gwqAJCcKgwqDCoCBGWFBfUTRfQVJHUyhwaXBlX2Nv
bmZpZy0NCj4gPmRzYy5jb21wcmVzc2VkX2JwcF94MTYpLA0KPiAtCQnCoMKgwqAgcGlwZV9jb25m
aWctPmRzYy5zbGljZV9jb3VudCk7DQo+ICsJCcKgwqDCoCBpbnRlbF9kc2NfbGluZV9zbGljZV9j
b3VudCgmcGlwZV9jb25maWctDQo+ID5kc2Muc2xpY2VfY29uZmlnKSk7DQo+IMKgDQo+IMKgCXJl
dHVybiAwOw0KPiDCoH0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMNCj4gaW5kZXggMmIyNzY3MWY5N2IzMi4uMTkwY2U1NjdiYzdmYSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gQEAgLTI4Myw4ICsyODMs
OSBAQCBpbnQgaW50ZWxfZHNjX2NvbXB1dGVfcGFyYW1zKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NvbmZpZykNCj4gwqAJaW50IHJldDsNCj4gwqANCj4gwqAJdmRzY19jZmctPnBp
Y193aWR0aCA9IHBpcGVfY29uZmlnLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hkaXNwbGF5
Ow0KPiAtCXZkc2NfY2ZnLT5zbGljZV93aWR0aCA9IERJVl9ST1VORF9VUCh2ZHNjX2NmZy0+cGlj
X3dpZHRoLA0KPiAtCQkJCQnCoMKgwqDCoCBwaXBlX2NvbmZpZy0NCj4gPmRzYy5zbGljZV9jb3Vu
dCk7DQo+ICsJdmRzY19jZmctPnNsaWNlX3dpZHRoID0NCj4gKwkJRElWX1JPVU5EX1VQKHZkc2Nf
Y2ZnLT5waWNfd2lkdGgsDQo+ICsJCQnCoMKgwqDCoA0KPiBpbnRlbF9kc2NfbGluZV9zbGljZV9j
b3VudCgmcGlwZV9jb25maWctPmRzYy5zbGljZV9jb25maWcpKTsNCj4gwqANCj4gwqAJZXJyID0g
aW50ZWxfZHNjX3NsaWNlX2RpbWVuc2lvbnNfdmFsaWQocGlwZV9jb25maWcsDQo+IHZkc2NfY2Zn
KTsNCj4gwqANCj4gQEAgLTEwNDIsNyArMTA0Myw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Zkc2Nf
ZHVtcF9zdGF0ZShzdHJ1Y3QNCj4gZHJtX3ByaW50ZXIgKnAsIGludCBpbmRlbnQsDQo+IMKgCWRy
bV9wcmludGZfaW5kZW50KHAsIGluZGVudCwNCj4gwqAJCQnCoCAiZHNjLWRzczogY29tcHJlc3Nl
ZC1icHA6IiBGWFBfUTRfRk1UICIsDQo+IHNsaWNlLWNvdW50OiAlZCwgbnVtX3N0cmVhbXM6ICVk
XG4iLA0KPiDCoAkJCcKgIEZYUF9RNF9BUkdTKGNydGNfc3RhdGUtDQo+ID5kc2MuY29tcHJlc3Nl
ZF9icHBfeDE2KSwNCj4gLQkJCcKgIGNydGNfc3RhdGUtPmRzYy5zbGljZV9jb3VudCwNCj4gKwkJ
CcKgIGludGVsX2RzY19saW5lX3NsaWNlX2NvdW50KCZjcnRjX3N0YXRlLQ0KPiA+ZHNjLnNsaWNl
X2NvbmZpZyksDQo+IMKgCQkJwqAgY3J0Y19zdGF0ZS0NCj4gPmRzYy5zbGljZV9jb25maWcuc3Ry
ZWFtc19wZXJfcGlwZSk7DQo+IMKgfQ0KPiDCoA0KDQo=
