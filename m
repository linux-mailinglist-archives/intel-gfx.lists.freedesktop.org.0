Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CD0ABE174
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 19:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BD710E56B;
	Tue, 20 May 2025 17:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCdOoewF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4B710E56B;
 Tue, 20 May 2025 17:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760560; x=1779296560;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8BqVqS8GXiUjl2RyOoScqWnlGriGNEdTm3dTmxpm+uA=;
 b=UCdOoewF3UVmY0JLWuzt8HArTFUwnbs/Xx3OG6oKgh+FYHSmLyLbHPT9
 2LefukUbQc1CQ2aPfd9pwHrop0QIvSNBBhVGd0qKfBfENDrYCwG0olSJ/
 n5UVLU/qYK9WYJEohQIvDUk2xwWtL9/9fKON/mfVEVMfl2GGFBXbpxyQj
 9+Pz9xHNcVVLslMKfeDOUSCLqDNSK5usBcyJXIobJH/BKrj/drSsImbqT
 tgeUguAP9pD3nlyb4HK1404wbocFT6UMkxkl2iPXj6K2mBMNEXIPA0tRZ
 In2jSekNKFj5AveST9tm3BXAfrFkBghqrRRMWVJJo94x64McIditTOgbr w==;
X-CSE-ConnectionGUID: TC5N0ps9Q3G39a246ZlL/w==
X-CSE-MsgGUID: 1xP0NfVGSbqei7lrCtHE8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="59937257"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="59937257"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 10:02:12 -0700
X-CSE-ConnectionGUID: 1xneJNJwQk+6+Kwp4+8UGQ==
X-CSE-MsgGUID: xEryQE4LTdC5X9rZ5KUuJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170629737"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 10:02:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 10:02:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 10:02:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 10:02:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AN2Dn/CpLzf5LKvpvl+/l0ks+FcrVEzhfPwGl1ndWQQzuCe6b9IjED2DEL3AlXbEtXDDAKzI/jnlnJ+SQDPEOINyI0ZdyU2JLms68lUWSmaSQXXD9JRqh89vSrnlYjo0tLIrbY/jvkJ23OzZMo2o5LKKtt1ysH9CAqzRz/pilPljOjXKqubgJma/IcYNmDF4w0ypFDCSmbFQB6ko6/8dyZot2r/MVRoKfUGIAGjwYZArEsLQT+oTLUQf5Bv3p0Fh5fs72dMeQwdp0STmbkLwrLG/W14OjcRXPa2rKvsZoYg9ktscWTxYOCP+VcKKQDqWhFKOMw1LmcMc9i6iZ4Zdkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8BqVqS8GXiUjl2RyOoScqWnlGriGNEdTm3dTmxpm+uA=;
 b=voHl6/U0/U78bsex/NrVdKx+i5N9aVIzzdaa8XqRWjAvhPKQfmzQJiXC/UK7TvI9FW1iHaWEW87l5QfO2KRbp426aLFDImj43AAI1Twm/Z04guShuGN9Y3F7M3iNS5cub9m27mTKhaBR3yE9tqZndE0KGylSDaI3a/wwS21zLJr2G7sWcWI7rUPzajEqHX/D/1GlLliisecGKn8emi3a8CrWR5RCxpfmxlK3Z7j9LOn12w4ECnYDnpw7VcohmXJiTDtnmbIo5d08fKg8MTOMpWXKVjkK7nepgEAPf/AjXxxS9FZwyx7oqOKRM9dkJna5WNEimTN1SrUirNx4dYtNYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB8044.namprd11.prod.outlook.com (2603:10b6:806:2ef::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 17:01:54 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Tue, 20 May 2025
 17:01:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/11] drm/i915/display: Add function to configure LFPS
 sending
Thread-Topic: [PATCH 09/11] drm/i915/display: Add function to configure LFPS
 sending
Thread-Index: AQHbu0CTPItjwb59HE2MS3gmdXyIEbPbVvcAgACESwA=
Date: Tue, 20 May 2025 17:01:54 +0000
Message-ID: <059f98f0486763c8fd66bd94369eafac981e7952.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-10-jouni.hogander@intel.com>
 <2b4e8f1a-b526-407c-8b50-e3fee6bed51b@intel.com>
In-Reply-To: <2b4e8f1a-b526-407c-8b50-e3fee6bed51b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB8044:EE_
x-ms-office365-filtering-correlation-id: 5db49117-a2da-433c-06c4-08dd97c005b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OC9sWG9IWm84eDF5YUdzRThTY2JSNEROVEI2RDVQUC9oUGFnMlRXTUNnRkgv?=
 =?utf-8?B?cm9qZjEwZ01HWFBCVUptbEFGV0hqcm5tR3VLWHl1cjluc0VBdnlnYXE1SWxE?=
 =?utf-8?B?TVZpNWZRYnNJVDBFLzQ5UDIrWkRzQXBicVp6N3ZIMzFsNnBCaVF6VkVvMkxH?=
 =?utf-8?B?cVE5ZzNuN0NxczlhcUpOeExPWXR5Wm40dHZDL3FDMVdBa3VEakU4cFB1elZ1?=
 =?utf-8?B?MmNNdjNZMld1QkNxZnlEazBWWUQ5UFVSUzd1T0F1OWF2akx1MEZ1YlBjaTRx?=
 =?utf-8?B?YXhyZE9EWEpFU2lrbVlBWDYyeWVvMFNSMldCcTJKNW1iblY3S0hMdmNOenlo?=
 =?utf-8?B?dEVBb0F2THprUDJJWlE4Z2czNnk2QkU0Z20wSEJHRDgvK0NRZ05zVktGWkpr?=
 =?utf-8?B?RHNqRXFESUlta0NneXBUUlFMQ2JtZFRqYU5DQUJJcVFrSS9Gc01LWklFd0kx?=
 =?utf-8?B?WWErKzJUdG56Z3JnQS9GeVpoTzBEL0t0eXkwUHdSMW5FZmdnMk5jZWtMalRL?=
 =?utf-8?B?eVRQdkhYRkY0QklnSm1OU29sbjNBamN1NDRtMFEwdlZIeWhZOGNxZDYxT3pO?=
 =?utf-8?B?SjdCQncrVy9Qc205LzFNNEw3elQrOXZnbDN2QWt5SExLVFRPUE1qbTlld2sz?=
 =?utf-8?B?V3gxY2I5aVl3SU9wbTdDdXZaNUpWMnZoR2J4R3Fra0Uwd0pXQmpCR0xudENS?=
 =?utf-8?B?Q3ZIS0ZjZ25FWmtadHJtY0Y1bk1qT24vWTZBWVRoR0cxNFRxNXZXU2F3OWx3?=
 =?utf-8?B?cDZWeC92c3FqSnU1eGZ2UzlEaUMraTl5S0duR1M1S2ZKOVlVWWNjc2xta0JC?=
 =?utf-8?B?YTJKQmU0WEozZnM0UEplYUZTaFB2Q3VsZEpjY1p1WkNCWG1XT0M0S2FKV3lr?=
 =?utf-8?B?eGlDYXdQdFdrNzkwS3Y1RjBXRjhDQlo4ZVFhY0FHcDRnUnlRT3JDWlQ2Sk5G?=
 =?utf-8?B?c3doY1lONVZGU1N1ZXVFN0lYcnFsVVREcnFRcDU3S3dwbjQ2clRWNWpveGJL?=
 =?utf-8?B?b1BHclhRdzBEVDJjZVZ6a2xyRUF0TmwrZGs1dVRKSE9vOHBLR2piNlRJS3ov?=
 =?utf-8?B?VzR2ZHFaUks2MDRpSmIxVG1XckdiTE4zaExOdFJQbU5vSU9PKzlWbG5pZURV?=
 =?utf-8?B?ZDlGNmdlKzF2YmtMQnQ5RW1MOHhiYWQwNVlJb1RPZnMyUm5FaGY0aTVXejNB?=
 =?utf-8?B?a2JqaCtva2QzOUZ6Mnh1enhBcE5INGwyK0F6eHQ0N3U0dGM2cHBrY0E2eUQ4?=
 =?utf-8?B?SEN3OHVuYlYvNEN3Ym04SzQ1eWxLNDF5Z3VGMHdtWmZKSitseFl3R2I5blFs?=
 =?utf-8?B?eC9lTFV4eWVEM1RYREViSU53N3pzbEJyaWc5bk9ZWU4ydzFCUHRUZThGd0Vj?=
 =?utf-8?B?YmRpVU5nWjk3MVNHRzc4ZmdBZkhITU1CZ2hXWVFSZUtiT292cjh1dlpDY0dW?=
 =?utf-8?B?SHpoZTV3YU5nc2V2MHdRRk1naC8yTWdWSHBrc2V0ZUNRWE56QTQ2ZXFmUGtz?=
 =?utf-8?B?MWtjQy9oYlNGR0FhZnYrZ0loZWc5Zm5HcGFIamRGTllKTkxRVkwrand1Skgy?=
 =?utf-8?B?RzZIRTVXaEFyTnlUeW1zQ0I0Y0JUMmVBUktlVnNVT2R0R0RLNmYwU252TEIw?=
 =?utf-8?B?ck1semZ1WjhwQlhKbnNGZlF6TXlacXlXYjdBK05EcGY4ZlRXWHFQNS9WYS9C?=
 =?utf-8?B?Rks2WVhZL1ZFZ2owdmRBM0ZKRVo4ZEMxd2ZBSno2Q2k4TFB6OHZSa21hN0Q1?=
 =?utf-8?B?MElMVVBUR0cxc3UzLzU3SnZYUE9Hc0VEdzBuZjY2QVpZNGticDRVaTJNTkRy?=
 =?utf-8?B?Smd5L2FVZXduSnF5eHViTkhZOWdKL2NjdERTeCthYTNuOHdkQU9CNE9XWEpX?=
 =?utf-8?B?RU5hQ1FmRVhZMEVYZC8yZjk2TTNFRndNNXdpRUpmMUhnWDBsVGpnK1VuSURV?=
 =?utf-8?B?U21mR3V1aUY5bU45K2UrNld6ODJRREJtOG9WNjZ3K01ZT2syQUZYSHNvL2Za?=
 =?utf-8?B?STRBcHpPcWhnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmxkdTl5a0YvVnNLeStFbUxnaW9wNXZQcHlXRHdBMmRybzZXTzlZdzdkeHRU?=
 =?utf-8?B?N3BYQ3RSOW51Z29EV1FaSGxGc0podFNaRGNrajB0dloxMTh0MWwvMC9ZRHFQ?=
 =?utf-8?B?MXkrTjViYjFBWU90OEFicWRFdUhrdWZGY0JEa01xd09wV3B6RWRlYWFDZVh2?=
 =?utf-8?B?K2lwWVBwams3Zk5ReDJ2UGVrdzhyOGJHWVBjZ3gwTlRzeHVqek1wYVFmTE5Q?=
 =?utf-8?B?bjNnTWhBak0rekR4QU1YOHBud2UyUi9sbmtpNE9XUXhqeThPNVhEWW5oekFG?=
 =?utf-8?B?c1dZUUEreXpURjBmaEplenVTZHpKVndkb2tndjZMWEFWajJJd0VpTDQxY1F3?=
 =?utf-8?B?ZXJCaW1KRzZWS25XeW5EdE80ZDB4b2pTbmpqL0NwRzdJYk9wRGxzSlFsR3Zh?=
 =?utf-8?B?L3F6aVpWSmtxbURmdWpKa1k2Q1FwdXIzYnNrc0lNU1RqRkkrUE9sZVZSWWpI?=
 =?utf-8?B?S3VlWnZIb3c3SXBBaFNzbVQ3bUloOHNiMXBtVnZHcE5GTFUzb2FXbkhNNnJh?=
 =?utf-8?B?VnRiNHdmS0xhaTdTcEtOdEd3K1lLU3lRZzRyVlNNVGpseXpTSXpPOHFSUkRy?=
 =?utf-8?B?SE1XUU0yWlhmYW9iaVpNRW03M2tGQnBZZEY2ZEFFMDhUUmQvT0NmR3dBSHVO?=
 =?utf-8?B?c3gxK2tUbjJVNlVFclNVMWtkekJ2cG1oUVRvL0Y3dnlCcWI2L1VQUlZ0QmRh?=
 =?utf-8?B?MDB2V1hGaERXSVlEMWl3TkUvSjRHYUVvNGp4dHRWMTlvRDQzTHpHczVDN1la?=
 =?utf-8?B?UlFEamdZOWppZXQrTWIyNDBUb1NNTXAwbi9zNFJaa2dUT3laNE1zWlJrKzBZ?=
 =?utf-8?B?SXFjNllwNy92ZDQ1b3d6d0pWRHo5VzNielJ5YmNrN2R3N0RaS3ZySGY1TU9M?=
 =?utf-8?B?K0c4M0ZOMG5uOXl3cS85Wk00aE9WSzNZY2dlc3V5dTFHOHNTUUNjY2xEWFFI?=
 =?utf-8?B?STc2SEZ5VHdLU0VvdVVGTUxPRktZS0V5U21laVp1MTAxSXRva2g0TzU2ckZp?=
 =?utf-8?B?UUs1TzBBMG44NHF6N0o4ZnFtSnVjMDJOcm1WVzlPV254WGVEN2VyV3RDVzdQ?=
 =?utf-8?B?SldrVnhaT0xlUlJYeW9YcVlmd2xKa1p5cGgvbTVVd0kwVmlaTHZCWk15clA5?=
 =?utf-8?B?Zm50cU94ditzajdWREFxSkw1dS9LVTgwVzRCUjVyYmNrdGlWQnJBZ0FLVUY5?=
 =?utf-8?B?ejd3WHVDQjZTbm5xRWl5TFhYaFkvOWRjNVlHa3VSVytoME45WVhnTHZ4QW5T?=
 =?utf-8?B?RHcxSWFZTktzWVFWeDVuNE5VWFZ4QVFmYVVwMXlmMEFGMTNKMWFRL3cvZE5M?=
 =?utf-8?B?Um9HbnJTV2tiZWE0QWtJbi91UWxnbkNmSUdmbkkwd1p6MU01L1hjRjc4eTJO?=
 =?utf-8?B?cERkelpKZVk4ZVRQS0FhVUx3dGFiVktGZ3N1U3pESHNpNUJTcWgvRzBVazBO?=
 =?utf-8?B?d3VCSFpYeW5ybVFiL0pzZFBHczRFRVJKcGJ3cDJKYzVYUWE4Wi8xTUI1Zkda?=
 =?utf-8?B?VFlIdnViWE1EQS9LS0RJdE9OSUFPNmZpT3AzUnVQQjBHeURkRUpIUi81dVZH?=
 =?utf-8?B?TTJvZmpMZWFtYnZTRFhKa3E1eWxDL01zd3V2d2dXdnhDclhpMndDNXhycDZa?=
 =?utf-8?B?eGRGYXNERStHMlRvRWNRL1Z1cXg2OG5sWno2aDZmdmg3WGtDOHNLS3FOTGF6?=
 =?utf-8?B?UDlDM21MVnVWT2poYjY1LzluWlJOZE9hb3IyV01vMlByNFRwU2tNVGQ2M3Zn?=
 =?utf-8?B?K2RWY3RSTFpCbDN2eXh5ZWVNODdueERERjJMaHlONnZGeFZuWDl2QkNLMENH?=
 =?utf-8?B?NjVkblR0anQ5U1YxaEZDZHowZ2Z3ek1aMW05aXRNMHRvM1B0bzg4SSttUnA3?=
 =?utf-8?B?OU4rd2JjU2pWQThPZVlPRXRjOFlQeTdiK1FLbHpXWFlrM3J2ZHJlT3M5Y3JR?=
 =?utf-8?B?ZXpGamkxelRqWVdDaU83VmF1UGtoTnFxWnkyenBFVmRZWnRxSkQyWFpYTi9o?=
 =?utf-8?B?aG1ETjBDb3h0cFovc1RuWFJoSXd3by81TTNmMUQ3RjJncC9OOWMrcTJEczVR?=
 =?utf-8?B?NC8vWE84cFg1SXVJZnhRY2poclJabjB5THdsT05ORWRORlRlcFhGcXlVT29P?=
 =?utf-8?B?TERYcWg2TDduMGNFMWZtY0tkcGplV3JuWVdrNHZTYTUwYkxwcTlaWjVIYU1T?=
 =?utf-8?B?WnppL0piYmpiUkQvczI2M2F5dWZ3aUo1RTNKSVJBNDhjK2xXYStQL0Fla1Ri?=
 =?utf-8?B?UzRmNUU0UlZVdWE0V3Q4ZGJ2blFnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B685E0B3E15CBB40B6A36C4344C01D59@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5db49117-a2da-433c-06c4-08dd97c005b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 17:01:54.1492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EqmH4LUzEfZ7+0p1bsXp5aHyIxkFdDEBvK/U0PbwfuO6jicxdk3zsaevH5b5g3S46WR/1acCtfIqW3hvOAUSDDNVc99WHN+irjJ4/t/Jg7w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8044
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE0OjM4ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDUvMi8yMDI1IDI6MjkgUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBBZGQgZnVuY3Rpb24gdG8gY29uZmlncmUgTEZQUyBzZW5kaW5nIGZvciBQYW5lbCBSZXBsYXkg
YWNjb3JkaW5nIHRvDQo+ID4gbGluaw0KPiA+IHRyYWluaW5nIHNlcXVlbmNlIGluIEhBUyBkb2N1
bWVudC4NCj4gPiANCj4gPiBUaGlzIGFzc3VtZXMgd2UgYXJlIHVzaW5nIEFVWCBMZXNzIGFsd2F5
cyBpZiBpdCdzIHN1cHBvcnRlZCBieSB0aGUNCj4gPiBzaW5rIGFuZA0KPiA+IHRoZSBzb3VyY2Uu
DQo+ID4gDQo+ID4gSEFTOiAxNDAxMjc1ODc5NQ0KPiANCj4gTGV0cyBkcm9wIHJlZmVyZW5jZSB0
byBIQVMgYW5kIGp1c3QgdXNlIEJzcGVjOiA2ODg0OQ0KPiANCj4gDQo+ID4gU2lnbmVkLW9mZi1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+
ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAyOQ0K
PiA+ICsrKysrKysrKysrKysrKysrKysrDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmggfMKgIDIgKysNCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jwqDCoMKgwqAgfMKgIDggKysrKystDQo+ID4gwqAgMyBmaWxl
cyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGlu
ZGV4IDEzMTg4ODZlMzRkZDcuLmQ4YzFkMzcyMzM5YzYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IEBAIC0zMjMyLDYgKzMy
MzIsMzUgQEAgdm9pZCBpbnRlbF9tdGxfcGxsX2VuYWJsZShzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiA+IMKgwqAJCWludGVsX2N4MHBsbF9lbmFibGUoZW5jb2RlciwgY3J0
Y19zdGF0ZSk7DQo+ID4gwqAgfQ0KPiA+IMKgIA0KPiA+ICsvKioNCj4gPiArICogaW50ZWxfbG5s
X21hY190cmFuc21pdF9sZnBzIC0gRW5hYmxlIE1BQyB0cmFuc21pdHRpbmcgTEZQUw0KPiA+ICsg
KiBAZW5jb2RlcjogSW50ZWwgZW5jb2Rlcg0KPiA+ICsgKiBAY3J0Y19zdGF0ZTogSW50ZWwgQ1JU
QyBTdGF0ZQ0KPiA+ICsgKg0KPiA+ICsgKiBFbmFibGUgTUFDIHRyYW5zbWl0dGluZyBMRlBTIGlu
IGNhc2Ugb2YgQVVYIExlc3MgQUxQTS4NCj4gPiArICovDQo+ID4gK3ZvaWQgaW50ZWxfbG5sX21h
Y190cmFuc21pdF9sZnBzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICsJCQkJ
IGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpDQo+ID4gK3sN
Cj4gPiArCXU4IG93bmVkX2xhbmVfbWFzayA9DQo+ID4gaW50ZWxfY3gwX2dldF9vd25lZF9sYW5l
X21hc2soZW5jb2Rlcik7DQo+ID4gKwlib29sIGVuYWJsZSA9DQo+ID4gaW50ZWxfYWxwbV9pc19h
bHBtX2F1eF9sZXNzKGVuY190b19pbnRlbF9kcChlbmNvZGVyKSwNCj4gPiArCQkJCQkJwqAgY3J0
Y19zdGF0ZSk7DQo+ID4gKwlpbnQgaTsNCj4gPiArDQo+ID4gKwlmb3IgKGkgPSAwOyBpIDwgNDsg
aSsrKSB7DQo+ID4gKwkJaW50IHR4ID0gaSAlIDIgKyAxOw0KPiA+ICsJCXU4IGxhbmVfbWFzayA9
IGkgPCAyID8gSU5URUxfQ1gwX0xBTkUwIDoNCj4gPiBJTlRFTF9DWDBfTEFORTE7DQo+ID4gKw0K
PiA+ICsJCWlmICghKG93bmVkX2xhbmVfbWFzayAmIGxhbmVfbWFzaykpDQo+ID4gKwkJCWNvbnRp
bnVlOw0KPiANCj4gU2ltaWxhciBsb29wIGlzIHVzZWQgaW4gb3RoZXIgcGxhY2Ugd2hpbGUgd3Jp
dGluZyBvdGhlciBzaW1pbGFyIA0KPiByZWdpc3Rlci4gV291bGQgaXQgbWFrZSBzZW5zZSB0byB1
c2UgYSBtYWNybz8NCj4gDQo+IA0KPiA+ICsNCj4gPiArCQlpbnRlbF9jeDBfcm13KGVuY29kZXIs
IGxhbmVfbWFzaywNCj4gPiBQSFlfQ01OMV9DT05UUk9MKHR4LCAwKSwNCj4gPiArCQkJwqDCoMKg
wqDCoCBDT05UUk9MMF9NQUNfVFJBTlNNSVRfTEZQUywNCj4gPiArCQkJwqDCoMKgwqDCoCBlbmFi
bGUgPyBDT05UUk9MMF9NQUNfVFJBTlNNSVRfTEZQUw0KPiA+IDogMCwNCj4gPiArCQkJwqDCoMKg
wqDCoCBNQl9XUklURV9DT01NSVRURUQpOw0KPiA+ICsJfQ0KPiA+ICt9DQo+ID4gKw0KPiA+IMKg
IHN0YXRpYyB1OCBjeDBfcG93ZXJfY29udHJvbF9kaXNhYmxlX3ZhbChzdHJ1Y3QgaW50ZWxfZW5j
b2Rlcg0KPiA+ICplbmNvZGVyKQ0KPiA+IMKgIHsNCj4gPiDCoMKgCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmgNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4gaW5kZXggYThm
ODExY2E1ZTdiYy4uYzVhN2I1Mjk5NTViMCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4gQEAgLTQzLDUgKzQzLDcgQEAgdm9p
ZCBpbnRlbF9jeDBfcGh5X3NldF9zaWduYWxfbGV2ZWxzKHN0cnVjdA0KPiA+IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ID4gwqDCoAkJCQnCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiDCoCBpbnQgaW50ZWxfbXRsX3RidF9jYWxj
X3BvcnRfY2xvY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOw0KPiA+IMKgIHZvaWQg
aW50ZWxfY3gwX3BsbF9wb3dlcl9zYXZlX3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
KTsNCj4gPiArdm9pZCBpbnRlbF9sbmxfbWFjX3RyYW5zbWl0X2xmcHMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ID4gKwkJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gwqAgDQo+ID4gwqAgI2VuZGlmIC8qIF9fSU5URUxfQ1gw
X1BIWV9IX18gKi8NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiA+IGluZGV4IGNlN2E0NzY1YjEwZWEuLmY4Y2RhYWU1MmNjZmUgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBAQCAtMzc0NSwx
MCArMzc0NSwxNiBAQCBzdGF0aWMgdm9pZA0KPiA+IG10bF9kZGlfcHJlcGFyZV9saW5rX3JldHJh
aW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoMKgCWludGVsX2RwLT5EUCB8PSBE
RElfQlVGX0NUTF9FTkFCTEU7DQo+ID4gwqAgDQo+ID4gwqDCoAkvKg0KPiA+IC0JICogNi5rIElm
IEFVWC1MZXNzIEFMUE0gaXMgZ29pbmcgdG8gYmUgZW5hYmxlZA0KPiA+ICsJICogNi5rIElmIEFV
WC1MZXNzIEFMUE0gaXMgZ29pbmcgdG8gYmUgZW5hYmxlZDoNCj4gPiDCoMKgCSAqwqDCoMKgwqAg
aS4gQ29uZmlndXJlIFBPUlRfQUxQTV9DVEwgYW5kIFBPUlRfQUxQTV9MRlBTX0NUTA0KPiA+IGhl
cmUNCj4gPiDCoMKgCSAqLw0KPiA+IMKgwqAJaW50ZWxfYWxwbV9wb3J0X2NvbmZpZ3VyZShpbnRl
bF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqwqDCoMKgwqAgaWku
IEVuYWJsZSBNQUMgVHJhbnNtaXRzIExGUFMgaW4gdGhlICJQSFkgQ29tbW9uDQo+ID4gQ29udHJv
bCAwIiBQSVBFDQo+ID4gKwkgKsKgwqDCoMKgwqDCoMKgwqAgcmVnaXN0ZXINCj4gPiArCSAqLw0K
PiA+ICsJaW50ZWxfbG5sX21hY190cmFuc21pdF9sZnBzKGVuY29kZXIsIGNydGNfc3RhdGUpOw0K
PiANCj4gSGVyZSB0b28gYSBwbGF0Zm9ybSBjaGVjayBzaG91bGQgYmUgdGhlcmUgdG8gYXZvaWQg
d3JpdGluZyByZWdpc3RlcnMNCj4gZm9yIA0KPiBvbGRlciBwbGF0Zm9ybXMuDQoNCkkgaGF2ZSBh
ZGRlZCBwbGF0Zm9ybSBjaGVjay4gUGxlYXNlIGNoZWNrIGxhdGVzdCB2ZXJzaW9uLg0KDQpCUiwN
Cg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4g
DQo+ID4gwqAgfQ0KPiA+IMKgIA0KPiA+IMKgIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVwYXJl
X2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQoNCg==
