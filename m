Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C169001A9
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 13:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED81C10E182;
	Fri,  7 Jun 2024 11:10:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzEtOrXA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12FF810E182
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 11:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717758608; x=1749294608;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h6pJVmv8McBMbXII+v83omZ0G863Na/AVvQcj5RhTHY=;
 b=dzEtOrXAC/VHHDSfiI0ihytnPTM9CjD8tmta+EcKVS3KfwUUuDDs9VqJ
 1S2bHWzOIPVoUyGnR6B0kz80fIsBmb47NXiJPzYD9+ceDLWL8JMIEPmCm
 Hub94tcptAW3cUnZcMcgAagRcrLhj2nokcsscXG8DxkCtrWhsxHUe4N9D
 oTALPafCLMYbFaMzznMF7Cmhk3zzHpwLQe0dyEMM+IeVfK9H4Xbmd0zpD
 jVRRENv1MfVj98r/O0AluaJ42rFRwKJ05iLVTexJkvBoCaZroOb4P4Vgf
 fREJKhCs+jkWDOgtmewD879iA1bGgBs0MdQo57bMz9lF9j1Ic1LBu0LFl w==;
X-CSE-ConnectionGUID: aq1KQAfkTm+8z89IMBtksA==
X-CSE-MsgGUID: 0mnHzIeRQnWlPJK8o0F0hQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18265480"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="18265480"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 04:10:07 -0700
X-CSE-ConnectionGUID: xQyMGelZTdeoXzBsnmja9w==
X-CSE-MsgGUID: fzzNiLG+RVSKK3I91X5lXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="38867012"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 04:10:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 04:10:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 04:10:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 04:10:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 04:10:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O7NZQeqbF80PDiBaQ6MUAx94s43YbWLFTlkV2U4oy1ZWsO9V2ILxLwVMJZuHpTHmbiO49gr3j/8nDZZnmGwTJsdiQdKizqHEkrwgA2ddoDCv7fX7mxHWTAPTercjWKCkcqNw+AQqLukzLCWtzABqJN9cvhQfP4MGX4+XEKuFpuBFXMji6RYtojFKbrZ408LLAZKoAl2nFmSElJNdoNlNMOq6n+9rWQiQJhUmGukng6ZLEyoLnRkuj9Zy45Q90IAwBQuOtJMQ1McUPqCQVt54tga+nQtUOt5QztgF00iQibI08IGX32md6GaZrQVd3/GQagimVdKaOy8s6kQhZMkFnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h6pJVmv8McBMbXII+v83omZ0G863Na/AVvQcj5RhTHY=;
 b=LVGR8jFGzeyMcfFWPVOdj8SL58EPkPmgbhpSSj8smbzW9L0W2XzerhneDfXTiZ5PV2vlFISBruGr7tsvKqNOWsUvCU6LempQRijulgEYsYSC2u1CHLckMcbjn3dMV1OpTzBvAam11FuiXQt1u0FSDexQkYEh5SF+AR52Rw/iZ+p1W4h4RjfPyancp2iKc92FjvCCBt2m+Y2cStU/A7T3wQ6JFOzybBzDuL1rUKpFOM7x/w1HKtJK8jGySN1VkU1IX7MvgJLoHK1h67ARmPiYRy11R3D6/ZJtPfqHnatHm71E5JdGv1NNbkaER2sN9Kw9nbAjTAiVymPjCIgcdEHN+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Fri, 7 Jun
 2024 11:09:57 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Fri, 7 Jun 2024
 11:09:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Topic: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Index: AQHatzLfjZnqCTCJKUGBbT5kOPeAmLG6xY2AgAAcHgCAAUTmIA==
Date: Fri, 7 Jun 2024 11:09:57 +0000
Message-ID: <PH7PR11MB598151A142A3A56CC06D03D1F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-12-jouni.hogander@intel.com>
 <PH7PR11MB59814F6E88C3E874C2BC89EDF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <dca159f3bc64a46aa16c47d2a058effd341b9560.camel@intel.com>
In-Reply-To: <dca159f3bc64a46aa16c47d2a058effd341b9560.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB6723:EE_
x-ms-office365-filtering-correlation-id: 354d2113-f70c-4bda-d7aa-08dc86e25de7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?WlBjNnBEMm41a1VpeG9RWE9hQi9UN2xRY3hocitZbTZNTFZHZ01jTXFmZzdM?=
 =?utf-8?B?UHpNRHJrUGhhbmZSRW5yRkwyaDQrQ2lKR3JzZFhraWFUbXJlZ0NDbWNybnNv?=
 =?utf-8?B?U0lzbjFRMEw3c0Y0aE9HdG9wNmtZVzh0R1VERzl5cnFNUkRqempPTDh5S2s5?=
 =?utf-8?B?cktkVGVXbmM4OEUvNkh5SkgxaVhPbjJGOHRhY25vNG44V0E4Q2srN2xMVE9E?=
 =?utf-8?B?MVViSnNBRk1EYndPM3F1QXJzSDlNZlVqVU5BckdndXhoell2MWdKNlBHWTdO?=
 =?utf-8?B?cHR1bVRWWGx2dnowS3hEbExBT2dPRE80S3BGcVhlb3hobndlWEl4eWpaZVdt?=
 =?utf-8?B?eEVFOCtMMHhhTEN1TTlrM3BoVEMyakFuWDdEZi9CR3FYN1NVQnFhYlRRbkgw?=
 =?utf-8?B?OU5WTThXQjBFc0hzcGxhRERMOG8vNXZLRXNQZzJuWHJmYXlER0JIcm1vYVBp?=
 =?utf-8?B?V3lBekx0THJPblVERnlpQmtqYzkzZlgvSnQwU0EvTGpITm5VaE92eHBuTGh1?=
 =?utf-8?B?bEF4T1dmbUg4UTc5cHgwVFk2OThtU1A4MVphZ1E4YkNWRDhyd09oV3ZkUzZR?=
 =?utf-8?B?RmVqL0lkSWM2cmhkdXdJZzUrNklpQ0tOM3hSTXNQQ09INHlId0FOWFlXOGVN?=
 =?utf-8?B?Wm93VHBtVjVjY200TEhhb1ZKY0QzakxJSHY5NjBCYjh3SUh3LzlETnA4MjhT?=
 =?utf-8?B?RE1ucDZrNmQrRDNnQ2JldFRHRUY4RUVFNGdwL0RKcW1oV0NOSEUxUDZmTUEr?=
 =?utf-8?B?bzE2clJoKzJJOXgwYkNpSk9oNFJ2RzIxNitBMERXYW9pOS9jZEF0NjljbDJO?=
 =?utf-8?B?M21Pc01aQ3lTUWI3akxqOFVEN05hU2JDdm1lY1BKOE9JeXVyOGpxK0YxZGph?=
 =?utf-8?B?YklYb1FydW44a3BKYTVkME5seFExU0NMMUFRLy9rcGp1eTNFMmxrWnVoMHpJ?=
 =?utf-8?B?Qmc4NENGWWtVRWNEVEt3Rk9XYS9Ta0JTZ2VwaldjY1ljenZSKzhMc0VNbWU4?=
 =?utf-8?B?YnRUKzc3ZkxHN0lhajdhYjNGTDVhdEVUOU41SnEycys2akdhZWMzd1N4eTVr?=
 =?utf-8?B?NlE1elhBNnc4WHEvZ29sWlNteDJPUmdPTG43VFRmMmQ2WVE1Z20yY2lFSDFL?=
 =?utf-8?B?R2laL2U3WmFnZlhrelA3NWZqWjRRZFNXS0xBZWJ5cUkzU2h6VTVrZTRzZE56?=
 =?utf-8?B?aFRWdi9kdHpQb3RhS3dzV2NWalVEZ1ZOeHRiOEplRXcvOGRlNDlXd01iTnBO?=
 =?utf-8?B?N2NTbkxSUDA0cnZIYytGM3R6S0dPVDAzOTRVUFYxS09JdjJYZ0dxWlNqSUNK?=
 =?utf-8?B?SHFGQWFSdHhJbjVWNDdQNmtpcTMzOUVhd3IwQ0dKeVQ2SEpBb0N4SUVFbG5J?=
 =?utf-8?B?VU53UFQ2UFJJVTlhdkZrS2hvTkVEZEhtVWpyRXdhWW5wbXcyMXF6N29tYlEv?=
 =?utf-8?B?WHQ2azZZcWwxMEpHcmZYQkFqelg3TTRNb29meWVseENEb25FMGNid3d0Q05C?=
 =?utf-8?B?NkE3cjhzaFZMT3FQQVgwR09DaUlUanVIOXZSZWp2dEdvTHRaV01sdDlrSFl5?=
 =?utf-8?B?cU0wMEVRMUQwVVZOcjdoTTZ2WEdsdm5CWlFRaXY4TGE5MVF2ZnY2Y0wxMXJP?=
 =?utf-8?B?dVVWMVgraWdoN3lQTUlsWmRhNTEydkMxVXNRNDd5RGdrYXdrY1NJWDhnRld0?=
 =?utf-8?B?SzNhRDY2MWZnUlpvaERUc05hbWNjdllDSURZbHVQbXF0Tm1HeVloYXUycEpT?=
 =?utf-8?B?OWR1QWtYcldJaGI5bHlVQkUvVWRwd0xNd2s2Z1FMdjJnSHV1UnpSWmp0elFw?=
 =?utf-8?Q?EWF1kOJ+RBng/5jhwkqBLXzuJPh+sU8qBXl04=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTBSamZzM05DYmtpODNSVEpXb1FxdzBzNXRlK0pQSkh6UEJvc0tHME5ZWXhM?=
 =?utf-8?B?c3dxRURKRmVlWmtaTEhmUTFBRXNHb0VUaWMvc2hsR3FwV3NJS2RmaklSRTNs?=
 =?utf-8?B?K2drcDJlQTVVWHpHOXQrZkdXTEJRSlorRE14WC9oLy9XdnZEcTM5ZXdUZkNq?=
 =?utf-8?B?V3RreHZ6S2k2cUhodC9UOUZ1L29TUXo2bmlGSXo3UDNvY1pKbTFoSFhGaFp4?=
 =?utf-8?B?MnVBZCtwZHIvR3h4V0dxZWRvdXZDM25VbWlIc0R2b25wejY2QUZ3WkFWWG03?=
 =?utf-8?B?N0NFbVBUNHF3UGZiQjlwZ2hBT2o0V05SYTg4ZmljVVBJSy91MUZEaWpRejd0?=
 =?utf-8?B?ZkxpV0VEanNzcHpNT3dwSUVqZEhCcmtEcmJhNDlBYnZYWUdSNFFVQmNYVUNO?=
 =?utf-8?B?NWRYaVB3QnJheFpDUUVtUlBDbVYxL3ZFY1lBTGtONU5zc2hiYURjUWh0WTUw?=
 =?utf-8?B?UmIraHVQSUlDVVoxODRFSWM3WHNJaFN5T0hXWDRORjdvNmxDMGlNa1lwa21l?=
 =?utf-8?B?OEFlSEJCc1dLeHo2M3ZhN3QxSXVZdUtDMmJOQ21uL1huaXMzZGxIZUNKSmRV?=
 =?utf-8?B?MGx1NDhibnpESVZxaWJmQWJLRlVPTVhuelZOSk1MYXlMdWF5clFzcGcxcVQ5?=
 =?utf-8?B?L0VMa0R6QmRxeEpVaDBmMm5YemlDUGRndUdpVXVnbzhiaStQUkhnU2V6SjhD?=
 =?utf-8?B?c1dYazZHNlhTdTZwdlluQnZXTXVxeXpQOTAxaXBpMnBIVTJIMy9xU0VERFgv?=
 =?utf-8?B?RXFTL0V0K0I5bER5VERWNDJaOUE4RWY4SjlwWE8xM1lGSWlDZjdqM3F0cCt4?=
 =?utf-8?B?bkFRemx5UVdJUGtMSWpLNkwrc20rQWRrQUNHNUpzSkpIRmVTcXllaGd3K3M0?=
 =?utf-8?B?aDlHcFFLTlVncmk5dkQwSEo5d09BNzlDb3lnaXYyUi9nbUdhcHZLNkdLeGdB?=
 =?utf-8?B?VXFSNWJWVE0rUkRIbzFMbnVjb2s0Y3g5WWljSVVDd3hlR3JwdThCUENRTDZE?=
 =?utf-8?B?bkpXa0ZSV0t3WUFqK214MUx2Sk5seEcyS1I4enhvNFN1bFlWMHZnK1JYelZ0?=
 =?utf-8?B?bUgyeTFOcVZ6bXdCUSs5TlNIcTcrSTdiTUl2K3ZHK0h2aVNseXBXWkh1MUY1?=
 =?utf-8?B?NEx1ODFGd1EvU3pwQXFrR3Y5T0tQN1pabjZvZzI1d21DanQwaEZkWUZHanhq?=
 =?utf-8?B?TmovZEpFaEM4UE5ZcWVwK21WZElIK3RuUEhVWS93eWtiVkVJYnBWbjVseGYw?=
 =?utf-8?B?Tjc2dTJVSVlVdHBZT010dFp4QXhZNzQ1VU9rcWJPdUhZelQyZ2RkZ05yYWto?=
 =?utf-8?B?RUhucGxmeEhSNHNKSE15WjF5WmtzN0xBNkdpNVRBUEdIY01SRE11Wks1V1Z2?=
 =?utf-8?B?bmh1ZGFhRElaNitvRzA2ZkJKZlNQMmsrRjZ3dmZuWUoxMm9vTW96N3VvaWYw?=
 =?utf-8?B?MlVFLzNEVzMrUGJncVZUaHp1cTQ1MTdCQjFvNFR2cFpEYVlNeHB2cEsvbUhz?=
 =?utf-8?B?NVlxbEpod2lIL3p2TDl1VktXTTZiL2dSYzFpN2NMYjlwNHZ5b2pZQ1doQktZ?=
 =?utf-8?B?YWdkWUptYVVUb2J2WmlvMzh1aUJ0eUdUM1BGS09JWXJOVjg2WDNRbjVQL0Qv?=
 =?utf-8?B?eEs2VEUrS1BFUGZTbUx0N1h4Nmh6UU1mbEMzcUtPRS9iZ2VnQmxiK3l0V0NF?=
 =?utf-8?B?SnpaVWNqQmV1NjFhR1ZGMUtpU1l1V0VxaHZxUlZLeUs2UEtOcWNJdG5rZCs3?=
 =?utf-8?B?bjY5VGNqdmtLQmZwZ28wN3RCTi94S1FES2MrcjlGc0hkMGdLcnROMVBYQzRx?=
 =?utf-8?B?dmJSUVN6NE56YjRsMXpSWjZzR1NzVU5Gemx0dnlLNnB1RXZza0VBblpJQytG?=
 =?utf-8?B?djl2S1BjVGZ6Nk95OFRXQm1qblRmNDNPcTBRK2laWEhHMkM4Z0t0ZjBwTGU4?=
 =?utf-8?B?U21uRURQOWJSUGRJWW1IOTlLcjhZWXVOa0gwUk5yYXc0b2x5TGs5Z3d6SCtk?=
 =?utf-8?B?QUJXUGJvUTRTeDRrNkVpZHhWUFBDS096ZUdFYVoxY2RFdUxDbmhpb3ZCV0Ni?=
 =?utf-8?B?NHl1M09DNWtNSEtMTFI5MGJsSnQ5TVdUVngrRk1EVXF0dnRBcjYyVUxYS0li?=
 =?utf-8?Q?Psu5sDXxwZedK16n31OQqAYyY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 354d2113-f70c-4bda-d7aa-08dc86e25de7
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 11:09:57.5803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aOfaPSXIHaMTWmpmVKiBGj6HGRBYpp7pYMUXWIhePwn0AmT6C5MAY0kZRJX8E9PWYqYVT5kKU9WJKDnFx8S8jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDYsIDIw
MjQgOToxMiBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlr
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2IDExLzI2
XSBkcm0vaTkxNS9wc3I6IE1vdmUgdmJsYW5rIGxlbmd0aCBjaGVjayB0bw0KPiBzZXBhcmF0ZSBm
dW5jdGlvbg0KPiANCj4gT24gVGh1LCAyMDI0LTA2LTA2IGF0IDE0OjU4ICswMDAwLCBNYW5uYSwg
QW5pbWVzaCB3cm90ZToNCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+ID4gRnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgNSwgMjAyNCAzOjU2IFBNDQo+ID4gPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IE1hbm5hLCBBbmltZXNo
IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0KPiA+ID4gPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiA+ID4gU3ViamVjdDogW1BBVENIIHY2IDExLzI2XSBkcm0vaTkxNS9wc3I6IE1vdmUgdmJs
YW5rIGxlbmd0aCBjaGVjayB0bw0KPiA+ID4gc2VwYXJhdGUgZnVuY3Rpb24NCj4gPiA+DQo+ID4g
PiBXZSBhcmUgYWJvdXQgdG8gYWRkIG1vcmUgY29tcGxleGl0eSB0byB2YmxhbmsgbGVuZ3RoIGNo
ZWNrLiBJdCBtYWtlcw0KPiA+ID4gc2Vuc2UgdG8gbW92ZSBpdCB0byBzZXBhcmF0ZSBmdW5jdGlv
biBmb3Igc2FrZSBvZiBjbGFyaXR5Lg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxOCArKysrKysrKysr
KysrKystLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggMzUzMGU1ZjQ0MDk2Li4yM2MzZmVkMWY5ODMgMTAw
NjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gPiBAQCAtMTI0Myw2ICsxMjQzLDIwIEBAIHN0YXRpYyBpbnQNCj4gPiA+IGludGVsX3Bzcl9l
bnRyeV9zZXR1cF9mcmFtZXMoc3RydWN0DQo+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGVudHJ5X3NldHVwX2ZyYW1lczsNCj4gPiA+IMKgfQ0K
PiA+ID4NCj4gPiA+ICtzdGF0aWMgYm9vbCB2YmxhbmtfbGVuZ3RoX3ZhbGlkKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiA+ID4gKmNydGNfc3RhdGUpIHsNCj4gPg0KPiA+IEFzIHRoaXMgZnVuY3Rpb24gc3BlY2lm
aWMgdG8gcHNyMiwgbWF5YmUgZ29vZCB0byBoYXZlIG5hbWUgYXMNCj4gPiBwc3IyX3ZibGFua19s
ZW5ndGhfdmFsaWQoKS4gT3RoZXJ3aXNlIHRoZSBjaGFuZ2VzIGxvb2tzIG9rIHRvIG1lLg0KPiAN
Cj4gUGxlYXNlIGNoZWNrIHBhdGNoIDE5LiBUaGF0IGlzIGFjdHVhbGx5IG1vdmluZyB0aGlzIHRv
IGJlIGNvbW1vbiBmb3IgUGFuZWwNCj4gUmVwbGF5IGFuZCBQU1IuDQoNCkhvdyBhYm91dCBzdV92
YmxhbmtfbGVuZ3RoX3ZhbGlkKCkgPyB0aGlzIGZ1bmN0aW9uIGlzIHNwZWNpZmljIHRvIHBzcjIv
cHIgYW5kIHRoZSBuYW1lIHNvdW5kcyBnZW5lcmljIHRvIG1lLg0KDQpSZWdhcmRzLA0KQW5pbWVz
aA0KDQo+IA0KPiBCUiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPg0KPiA+IFJlZ2Fy
ZHMsDQo+ID4gQW5pbWVzaA0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHZibGFuayA9IGNydGNf
c3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192YmxhbmtfZW5kIC0NCj4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
dmJsYW5rX3N0YXJ0Ow0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHdha2VfbGluZXMgPSBwc3Iy
X2Jsb2NrX2NvdW50X2xpbmVzKGludGVsX2RwKTsNCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoC8qIFZibGFuayA+PSBQU1IyX0NUTCBCbG9jayBDb3VudCBOdW1iZXIgbWF4aW11bSBsaW5l
IGNvdW50DQo+ID4gPiAqLw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHZibGFuayA8IHdha2Vf
bGluZXMpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNl
Ow0KPiA+ID4gKw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+ID4gPiArfQ0K
PiA+ID4gKw0KPiA+ID4gwqBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiA+ID4gKmNydGNfc3RhdGUpwqAgeyBAQCAtDQo+ID4gPiAxMzMzLDkgKzEz
NDcsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gPiA+
IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4gPg0KPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoC8qIFZibGFuayA+PSBQU1IyX0NUTCBCbG9jayBDb3VudCBOdW1i
ZXIgbWF4aW11bSBsaW5lIGNvdW50DQo+ID4gPiAqLw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYg
KGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192YmxhbmtfZW5kIC0NCj4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJs
YW5rX3N0YXJ0IDwNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCBwc3IyX2Jsb2NrX2NvdW50
X2xpbmVzKGludGVsX2RwKSkgew0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCF2YmxhbmtfbGVu
Z3RoX3ZhbGlkKGludGVsX2RwLCBjcnRjX3N0YXRlKSkgew0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNSMiBu
b3QgZW5hYmxlZCwgdG9vIHNob3J0IHZibGFuaw0KPiA+ID4gdGltZVxuIik7DQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiA+IC0tDQo+ID4g
PiAyLjM0LjENCj4gPg0KDQo=
