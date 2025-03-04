Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF2EA4E233
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D0710E61D;
	Tue,  4 Mar 2025 15:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Td3fi3jH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F07510E622
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 15:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741100654; x=1772636654;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=s2CQnEzoXL5kPBJgRdItoBLd0fiOlOJwK7sODlFyZps=;
 b=Td3fi3jHMqIYTo1wwBWgHt/LmIsOgstTvs7oOvtEX7sBhnERrXaCU84a
 e0h3o/hkQo8pMmzC4W3B+9I/0Ab+Mi7zA1R7JDS0aG0bkiuJsV25mp1+b
 lqvro6NHi42N8/Bu+ug/23JFUQBSmCzasKGM9ZeU8QhCwn7eOVMtz7x50
 2pb+s5t8QoYTHyqL4RelKRjLRsxKjNc/AqJzZrjjGz7syIeaqjHQkGsvF
 H0H5jmOZinyOB4hJiNEquAvZZs4gyM9m0xDeKEUBSnF5lYL+ISlVjilP0
 UGPM6sw9eNO0zwS5KYdPEmV5SH5bVrhjnAyeJ5/iT+0R7IyUsmokcTZVS Q==;
X-CSE-ConnectionGUID: iSPmPwQRSxiDm+eHd2i1wQ==
X-CSE-MsgGUID: e03WJ7bWSiO1fn4ngCT/jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42148713"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42148713"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:04:12 -0800
X-CSE-ConnectionGUID: YcVlu/BvQt2UK6FEd8hdBA==
X-CSE-MsgGUID: 8etBZ5TeSOyhe2LdZN6qSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118908083"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:04:12 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 4 Mar 2025 07:04:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 07:04:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 07:04:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VGJQaxR3r+HGgQAMllip4NJL4vEs7LqVpnwxTfW00YEr5ICUZldfpiCZVr8z2rw9+JP3zl9MFk8dMHQnoYcFISVUldh5/dMZHE6T0zyKxzUgWavVfFBU1YLlcNZpSqBu04d3UzZGdH3XLeWbswXLFKLl/ItY1tEs8/nQA6sObg8WH8Dr6yet4bIQYjeRpLqYleKONJsCgkK6U0xvtLuZFaqhUcne34mwiAujND5pFUZvlgfTwHUa8C+NUH2PEK6cczlujFPcHvSLzo0S0mnl2ANYiEKWjjd0TPOMC0tBaZ72h9ftnSANmeZWZRTLMJc3LQvDSdeWV2wZDcVqsnOV0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s2CQnEzoXL5kPBJgRdItoBLd0fiOlOJwK7sODlFyZps=;
 b=GeR6CgC5zB/GiU+1HZk2vuAZgiBvnrY8j8VNwG0AqLxYTRGlFNuPmQIJgUy+jSbf3gRzbqRAd+jm0XNuM4puHSfUldLM9BH9rBSTO7zKdYcpIHvfFqSaM/myAUm+WjjxSACsnTNP/KnGVOmvKu4zfZ9Kr26yhbNFbCkvF+FH/S6yiALC9/OkUAYCt3MDezQLdH/VGuCwUzngV+aHqOukSrQnW0AhpBTT/CPQY4dm8TzTazRydi+o7ypUJd3in+YOVy1lE55GmoW7ghnZ3cfG+hNDLZQLMJg2RWiuYGnB7yAlkVZ2OOvrsQGVo4/ChzSJvIjAQ3UfJNIefWRVOJEcPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH8PR11MB6658.namprd11.prod.outlook.com (2603:10b6:510:1c1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 15:04:07 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 15:04:07 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 15/19] drm/i915: Simplify cdclk_disable_noatomic()
Thread-Topic: [PATCH 15/19] drm/i915: Simplify cdclk_disable_noatomic()
Thread-Index: AQHbgk2KbWVXT1Jt7kOorDE1s9lTeLNjKLyA
Date: Tue, 4 Mar 2025 15:04:07 +0000
Message-ID: <ea61c60a6b473c5e76a151fefa273cd50ddedcb4.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH8PR11MB6658:EE_
x-ms-office365-filtering-correlation-id: d181f2f2-320e-40e0-a4f7-08dd5b2dcfb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dUYyTDJXZkJVVFFQQjdQbGlVQ3Z3YzU4OVE1UkpuYVpzV2t2aEIyK29pcTQ5?=
 =?utf-8?B?S1lzNDlpeXRibUFncUlYR1VKbU9jbFhhYk5ZVUZwQjJNNGUrc29ndWhhdlBv?=
 =?utf-8?B?dVA4bFN3bkdhSUNKVlNuU2VOOWNLT1Nxc3ZJT2E5dkcweFM5a0hka09XUzU0?=
 =?utf-8?B?T29CNjhGTXJwR1JxaXNlcjZDczZibjRBQVd3bGlJQmxmYWphSnFxbklxMUEx?=
 =?utf-8?B?NFdiUWUvQm9OMkJZSGhhZVA4WUc4dklMUGRFVmhlNGJvamxyYTBGNFRrOURp?=
 =?utf-8?B?bGhFdHBMaHVrWmZMclBMb0ZCbW5JajFCNmQ4WDh2WWx6cmlpa29aWUlHT3Nj?=
 =?utf-8?B?R1R4RytYeCtlWXprTkFXSUFIV1VrZnhnWUs4bEh1aStuV3Z2VWg5V0pMb3Ay?=
 =?utf-8?B?V0ZnWVZQQ1NlSkRzWFNvZEFvbnUwVnB3YnBqWE9wUVhHWTBrN2k5RUdBVmRs?=
 =?utf-8?B?ZG1sZHNxdWk5VndKNjNaSzFTNDU4bWVESjdBdFNvdVQvRDkzUU9US1c4U0dl?=
 =?utf-8?B?czBJdmYvcHJRaFVzU2VkTkZTb2NiRk5CNVh4UWR6ZFdCY0VRbXU3RmdoeGRp?=
 =?utf-8?B?SjY0eTJ5di93K0tCTUVNVWxBR3pQV3ltbmxDZk4xTjVmeldKa3NMbnc5K0gx?=
 =?utf-8?B?bDhyV3JzbUhqYWVKS1ZwaGRIMll1S3o0TTk3RnFaU095Q3RtTG9kNXhNdjl3?=
 =?utf-8?B?QVRnZnZ1Unozb3Y5MER4SkpsS2ZSMjZRWE1pSnZpVXczd2pUajRSQzlKc1hw?=
 =?utf-8?B?ZHdyK0JjNjZtOGRvbDZtalFjbW1hOFdaUE9NT1RzTnQvZGh4ZXpHTkRnMnR6?=
 =?utf-8?B?bUJlbVcrZVNkZFZTTStOZU90OGZneEhkOXJnM1ZBZWNWSi9lbnl6aCs3bHZ5?=
 =?utf-8?B?S3VEMy8vV3lpWWtDV1N0ZGc4Q2RRdGovdkx2bW5mOEgvNExGNGNwVlNRL3cz?=
 =?utf-8?B?QUpxWDZ2VjJPOEVhZ2pIVHNjelhzSHdUOThlVTgrbHdMVHJ6dlBIUzczSEVi?=
 =?utf-8?B?US9qSHlwdGRxVVkxYXBKdHNzc1FlNTdKbE9BUHpKYUtOZ3NRQXoyaVZ0dGoy?=
 =?utf-8?B?RXJaNDNRNlhidkhheXRhYU8yL2pUK0FWTzQrTnQ0WDMxRWdWaXQwV0xVWTZ2?=
 =?utf-8?B?UnlKbmxQYjRQK2RKa1htV2E2VGVLeDEzbUhIaEhua0JMNVNsbE8zNlhncHB2?=
 =?utf-8?B?Vk0zQloxVU1VUHBJY2IxTGdKYVdkMlRyaFgvN3VhcE1EQ0lHNStQUy9zNXd4?=
 =?utf-8?B?RWExZTFWZWdVdkNvVWIzUGJzNzM3M3l3Ny9JaS95czJyZ0ZtTXVnVmhNa1ZU?=
 =?utf-8?B?bkQ2NHhmZ0NXVC81b1dwL1Bqc3h5QWtHUnlLbVNOWFNRWmR1OGZkcVNwMVBw?=
 =?utf-8?B?ZHJBMGFPOVYvNFNSaElNT3R3V3kraVNYbVRCRnJoeU5pSGhkT3hiOWtrWHY3?=
 =?utf-8?B?Rkt2aXRLK0tRQ0F2TUVoWUNBenA3NHBsZEM3dzV0NEVmaEEybjlRZWJ2QUQ5?=
 =?utf-8?B?Vm0xTFJIay83ZkoxbUdtWCtvVEs5TWI4VU5vZUhPQnIvNVhMZzdISVFKa0k4?=
 =?utf-8?B?WTJidytUMlptSnhVeFA5K2JwMmJmUnpkeHNKZEVEUTdCbkdpSjFDSytwRU5D?=
 =?utf-8?B?V3BzRHdSNGh5bGdEWWNGcEcwUlZySllHcmkzV1JqNCtvR1hUUmFDeFNrMUNZ?=
 =?utf-8?B?OGNXeDNmTWlKbUdKU1FKZ3dsdjNKYm14aEZOL201Q3hCZC92TkpIZmZHaysy?=
 =?utf-8?B?MFcra281di82eDVsWjF6SUx0SUNiRWpRRFYxTDRKUWxwMjBQaFBUaktZSEI0?=
 =?utf-8?B?SjkvRWE5dHlZaXJrMTFEeUVYMHNvalkzYWZHMVdTb2pTdnNwRzArc3daU2Zo?=
 =?utf-8?B?ZGdkdVh0RjdZejZmTkRZa29iZFFjU3hrdGN6V0JDQTZ6WDBER3RtRmhzaG92?=
 =?utf-8?Q?QX7QitQVQ0w8A7wzbbHyFcZsDWgn1ZKl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bHhOVDcvTkR3T2lUdFFpdkprY2hmalVacFRsT3hrR1dSdGRXanp2cVJEM21E?=
 =?utf-8?B?YnFTeGE4TWZmcWRhd21OMEM2Zm42RFZkTHhFdWRkRUlEWHo2dFlvMGErYWdV?=
 =?utf-8?B?SU1vQVdGUC9tM3BzN3k5bU0yY3hzSE1XeXdWM21uQTFIM0doVXhCRHlydWhC?=
 =?utf-8?B?THdZUDlLZjMrbitaZks2S1JaZTJPb3lQeWpnU2d4aGdDbFlnNlJSZnN2VXVV?=
 =?utf-8?B?TWRDQmpPS1VQOENrcXpUSFl1K3JOS3E5V2FDdzBKdmR6WUxFVW51aDZDQUgv?=
 =?utf-8?B?eWxKbHA0SEZYNHIzOFRRVEtvZ1BiKzlTakZzMjB3S3ovOUJ2cGtwMlllMll0?=
 =?utf-8?B?aGQ0ZklXeitoZm1tQkRuZks5OXdDdHp2b2JvSTltTGUxZDJQMTFRbEtxRHJs?=
 =?utf-8?B?R1kvV1pUWURXZEt6MFF0dy9LVmY1WHRyNkVvcnIraFpScXREa0g3dExtc2N1?=
 =?utf-8?B?Q3F1bnRCNXhIbXJDSEFkakxjSTFVcU12eW14ZUFPNWk0SlFLdkdQS0tEaFRl?=
 =?utf-8?B?U0NvN2ZXanJCbXB6RHlKU1AyZ3VocDEzcVFTclFXUjk0aE5waFNBRWFLajMw?=
 =?utf-8?B?T2xxdjZCcTdIU2lrQ1N6cWhwMUlTSTU1VURYV0NhYk5NaklyYWt6UDlVeXdw?=
 =?utf-8?B?bW15TzdqaEJOVndKT1h2RmEvK3haS1plQzdNM1lrWTZrUU5RZkl4ZCtYOEFO?=
 =?utf-8?B?VFVtMkNnZURHTHVZUkVLcmw5Y0JjSlFCQ0UvcStXLzlzWnE5NzVFQ29JS0Rr?=
 =?utf-8?B?Uk54cllDRjM1TkJEcnE5YWhqc3pvK3Fxa1A5bHpGaldDVUw5Zk1pdjNiNmdr?=
 =?utf-8?B?T2J3dEFqVlFEMGtvZFEwZDZ6L08vZ1M5b1FqcWdvUUJtOVpPVU5XZUtSY3lV?=
 =?utf-8?B?OTBiSzRQTmcxSWx5emNnTktuREpZSm01TjZBZzJZN0NtMkpGZC9RaVU5MUVq?=
 =?utf-8?B?c2Uzdkp3ejE5Q2d4UStOUHVPTHNKd3RtYWhkL0RLTDc2ckRRMEkyVDh3TDI2?=
 =?utf-8?B?cXdBRXRSaC9KMlFRRVh5WVBLSURramp3RlAxZDI3elhSOSs5TUdyUzIvTDRp?=
 =?utf-8?B?bExmVVFIcnNEZUR2c1YyUnpHc2RFbW5jMUVKSXd4Q3ExQXIzUGZBMXNyeHhp?=
 =?utf-8?B?YlJMTGhyYmw1NTFBaE1NVWtjeU9vaGRQOFZjYjdaSFhIRW5wVTNDVmhmMnh3?=
 =?utf-8?B?SmtCNVp1QUdscWhJWEEyVE1ZU3pnTUIzRDNVRWp2UGQ2QXN1dnVyMkpGdXBk?=
 =?utf-8?B?MHU3dThuT0ViNlh5anNrcThZK2wxNUVNenhRaUJOV3F0N1lvUWcxZWpIVy9a?=
 =?utf-8?B?U1NhTmVBRkVXSURWNWpLVHJLcllqbzVCUzVsdy9DMjVLWjNERGc2cU1keStQ?=
 =?utf-8?B?eFUzTUgrNWNUeDkrTldXeFUzUzRyaFo3bEg5OFFTdkxDR0QvVlZlWnlIbC9R?=
 =?utf-8?B?N2g0VjByNHRCZGRuMS9peFMrZ3N2RjVzSDFYcEpPR0pPSStpcnl4UUZNT3k5?=
 =?utf-8?B?YktiU0o5VWI3M2JmM1F2TTlOaUtuWFZBWWU5QmlwaFc0MWZoa3p5UTM0TlUw?=
 =?utf-8?B?a3V1TDRFWDlESVJLb3E5TVdoWnZJdEJucUp0aEtSRnhWb1hhanlScUszenlo?=
 =?utf-8?B?YmlncXhhNWVkcERzcWY5b1JEUzFjZE56OVpwcDVLWCtJUmt6OXhBamRtbXJC?=
 =?utf-8?B?c08zV0xGTFI1YXFsQ0RrNHZSTzkyT0JtQS9hNmFEV050ejJucmE5Rk1XMDkw?=
 =?utf-8?B?MytidW03bURKVmlBVXJHNWdzdXU2c1U0YWNRV2MxWGNGRFlDcU1oYmxJU1dS?=
 =?utf-8?B?YTZ2cUJhSEtTTkJaTWg3YjJCOHNRRzN0aGN6TGU4YkdWeUQwYmtPb1VQUGdx?=
 =?utf-8?B?ZW4zczQ3cTNYUlZQQXlRSHkrMUg0SzVFV243emNyYk1LQ05UOE44bXVUeTVt?=
 =?utf-8?B?NjVFUStUaFN5LzZvSXR2Mmd5N0JnVStqbkJSVEYxM1g3TXVURE1uQ0FONTlQ?=
 =?utf-8?B?ZlM2TW5mOXFUL04wNkVVWnF4MUFycmY4M3lXbkF6cW9JaWdLcFMvbkNqVHRL?=
 =?utf-8?B?QmN3SkgxZWNkWW85Z2N6TGU3RmI3NE1nOG9vRHhNNXRHQ2FGSnpoTGJrVGdE?=
 =?utf-8?B?YWtERCtVZVVwWVp2cVRQM084UjZsY3NHclZVcnVya0ZJa3VqUytaaXZ1U1dN?=
 =?utf-8?Q?ZOnGpYLsmRjG0b1VO/CqKCY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2071D4645036184BA786BF69AC4B902C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d181f2f2-320e-40e0-a4f7-08dd5b2dcfb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 15:04:07.2425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cCWoHb+6R6DPP7hnGsk68RuCYrDQ4wTjcs2OswYNAqg5Wq9Qlvjey3ReyVCYCVCfgC4YQckmmCgGy+TFOPyHCtKGsOtvVlI+wOxLlC/0Qxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6658
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSW5zdGVhZCBvZiBoYW5kIHJvbGxpbmcgdGhlIGNkY2xrIHN0YXRlIGRpc2FibGluZyBm
b3IgYQ0KPiBwaXBlIGluIG5vYXRvbWljKCkgbGV0J3MganVzdCByZWNvbXB1dGUgdGhlIHdob2xl
IHRoaW5nDQo+IGZyb20gc2NyYXRjaC4gTGVzcyBjb2RlIHdlIGhhdmUgdG8gcmVtZW1iZXIgdG8g
a2VlcCBpbiBzeW5jLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNyArLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCA2MmNhZWU0YThiNjQuLjJhODc0
OWEwMjEzZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYw0KPiBAQCAtMzM2NCwxMyArMzM2NCw4IEBAIHZvaWQgaW50ZWxfY2RjbGtfdXBkYXRlX2h3
X3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiDCoHZvaWQgaW50ZWxfY2Rj
bGtfY3J0Y19kaXNhYmxlX25vYXRvbWljKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiDCoHsN
Cj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNy
dGMpOw0KPiAtCXN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtfc3RhdGUgPQ0KPiAtCQl0
b19pbnRlbF9jZGNsa19zdGF0ZShkaXNwbGF5LT5jZGNsay5vYmouc3RhdGUpOw0KPiAtCWVudW0g
cGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gwqANCj4gLQljZGNsa19zdGF0ZS0+bWluX2NkY2xr
W3BpcGVdID0gMDsNCj4gLQljZGNsa19zdGF0ZS0+bWluX3ZvbHRhZ2VfbGV2ZWxbcGlwZV0gPSAw
Ow0KPiAtCWNkY2xrX3N0YXRlLT5hY3RpdmVfcGlwZXMgJj0gfkJJVChwaXBlKTsNCj4gKwlpbnRl
bF9jZGNsa191cGRhdGVfaHdfc3RhdGUoZGlzcGxheSk7DQo+IMKgfQ0KPiDCoA0KDQpPa2F5ISBO
b3cgSSBzZWUgdGhhdCBwYXNzaW5nIGFjdGl2ZV9waXBlcyB0byBpbnRlbF9jZGNsa191cGRhdGVf
aHdfc3RhdGUoKSBhcyBJIGNvbW1lbnRlZCBpbiBvbmUgb2YNCnRoZSBlYXJsaWVyIHBhdGNoIHdv
bnQgd29yayENCg0KQnV0IGlzbnQgdGhpcyBiaXQgZWZmaWNpZW50LCBhcyB3ZSB3aWxsIGJlIGNh
bGxpbmcsICBpbnRlbF9jZGNsa19jcnRjX2Rpc2FibGVfbm9hdG9taWMoKSAoYW5kDQppbnRlbF9j
ZGNsa191cGRhdGVfaHdfc3RhdGUoKSkgZm9yX2VhY2hfaW50ZWxfY3J0Y19pbl9waXBlX21hc2so
KSwgd2UgZW5kIHVwIGV4ZWN1dGluZw0KaW50ZWxfY2RjbGtfdXBkYXRlX2h3X3N0YXRlKCkgcmVk
dW5kYW50bHk/DQoNCkluc3RlYWQgc2hvdWxkIHdlIGV4dHJhY3QgaW50ZWxfY2RjbGtfdXBkYXRl
X2NydGNfaHdfc3RhdGUoKSBmcm9tICBpbnRlbF9jZGNsa191cGRhdGVfaHdfc3RhdGUoKSANCmFu
ZCB1c2UgdGhhdCBoZXJlPw0KDQpCUg0KVmlub2QNCg0KDQo+IMKgc3RhdGljIGludCBpbnRlbF9j
b21wdXRlX21heF9kb3RjbGsoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQoNCg==
