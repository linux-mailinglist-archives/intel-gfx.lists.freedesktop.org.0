Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIjRHPkve2n2CAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 11:01:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28771AE51E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 11:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A317A10E31F;
	Thu, 29 Jan 2026 10:01:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j32w0EMc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE5810E31F;
 Thu, 29 Jan 2026 10:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769680880; x=1801216880;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YrSxYtrDpFLfaTf2Y3qNccK/G1GOdo6tH/kgfeH8GLk=;
 b=j32w0EMc9GxbzGHS3w2xFxp9QgE1MYDjGMqJa72IgxgOk4c2nHFlaaIE
 GE8LEhlQd5NbPfgZR2PtHptp7LaJquqCKOxzm/NcfdGCGM/Wk3TjdGlzR
 qovAvKwmewVtlccJRExsrnq9IXTqeWcJnkweIvPYBMJHJb7KISR4etvla
 VRBHu39qlBtJueYVBvlnCyispLZJG3sx38qjr3BzqCRvipZUWVZ95bEkG
 GWS0zccD3A/yzfxXSkdmDqic97i0DZ9Z4bpubZA4NfoAV3yjqtNymaznw
 SvnK42vyff20N7eif/0EEyX4JMSUCr16sq1oTfydPGkXvGHgHAJblIfbM g==;
X-CSE-ConnectionGUID: v8p+gpGwQxaeLy0byQGGVA==
X-CSE-MsgGUID: 4wM8hIFEThahpvapZ2FRRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70111587"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70111587"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:01:18 -0800
X-CSE-ConnectionGUID: 1RndCfLTRyeEUqI2bj+obA==
X-CSE-MsgGUID: clBsVAfeRQ+a/lzvUCETfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="207777238"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 02:01:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:01:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 02:01:17 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.12) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 02:01:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cm5Q8j6n1B6vhvwvdmYtoET43rc6wqIqmpL3mWZOIxhdK0P5Rno+CfKOk1mm3j/Rx8mzgNdGoiGXD+m063pbrYWK76/oYD72YwrdkClDNXtkb8LGi8sfh4sk7xX8LKJhsctgXLjEoEtzJI3T6/jV7asfASl3ZzSo8ysPW1quGhJY9oA0pA85YB8P4HYz4JXM9ErFhQSWX28zfZFW0n23xFgA8gSoiWfOS4RTS3gGXZ3hYjn40FiCG1bYyBWDk/ziffwK9eTt9V3z213uFe9fm37TW1jiv9CbEbwM3Xm8QBnGGqiSzNjoCtp3X/HCg1AEbPu6WEFKgQgIMxUqqI4Xpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KahT2RBWCpSs8fgKwUcaKYD5MFTE94pjU1PUBX7xpP0=;
 b=BoGvo+rSOFW17FgHd0l9+vT25mUDAmZjNXwn8UUjNRFuJYH1AMBBGEzQI3UECXHMz+Vdj9V0tafCuNe+p6kAscsWQnWnf+wZ5lZx4npY1+dVEAoxjC+N9EVVIU4iSE2xWA0k6cMGz6lHcmcHc2YbJ3DrNQBpAHXY1qSN4tW/theJyuVgII+DaAzkwWWHxqcHXBcGnKA2nPSk1Q+2goBHW0ld45J3RSEwYeQkzOciniJwzhsMJjFhKgsgwgKMLWCvkxzliV8mkNyIHNA6HKnOGzZR36ThE8JdbOActS8/vIe93JqnVguMaIP2WrXu2HY/IJ4E3zn4aV0zcDQzC/xu+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF6D09CA9CB.namprd11.prod.outlook.com (2603:10b6:518:1::d2c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 10:01:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 10:01:14 +0000
Message-ID: <103cf6b7-25cc-4934-82a8-ea5e80c1ca4f@intel.com>
Date: Thu, 29 Jan 2026 15:31:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/16] drm/i915/dp: Rework pipe joiner logic in mode_valid
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-5-ankit.k.nautiyal@intel.com>
 <aXo8dwGBqxY5vE6o@ideak-desk.lan>
 <079b962e-c649-4abd-a75e-5c50800542be@intel.com>
 <0fea6800-d846-450f-af08-5fa90f6827bf@intel.com>
 <aXsnN6_AtVeWvL_J@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aXsnN6_AtVeWvL_J@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0159.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ba::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF6D09CA9CB:EE_
X-MS-Office365-Filtering-Correlation-Id: 429a7c3f-8c55-48ad-ac05-08de5f1d566b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFNlR1I0Tk5pd2VSWkphbkIzR3NXWU1MVCtvdWJpSnVSNUtBR3Nhdnh1dG90?=
 =?utf-8?B?RFVqWTFEdmJyVUljeSs4LzhWdmhpTXdjTVQ4MGM2MmF3R3BQSkkyTXZLczlK?=
 =?utf-8?B?SGl3dG54bE1vak8rc2NkcGdTSENFN2lrbW1mczFNS2lRbTg0OU4ySFU4L1RI?=
 =?utf-8?B?ZG10RnhDTmZ2QXNUdWdsdllqS1U0bTZFTlcrbklpdjEydStKME1rMGhWTFhL?=
 =?utf-8?B?ZHVWN1BWd3hGU0kzdlpiNVErZThNZTlSWjQ0MXFZL1Evb0trN0ZMVnFXUG5X?=
 =?utf-8?B?TnpsVG5vRjRDS2pEZFhZdEpTSmtZTlBJMHRuQ2F4QjhLeVRvZTBtQ1pKbzlu?=
 =?utf-8?B?OGdaUlBKdVJTWGd1WXcyUEhINWFBdnZ4bWJxVVJQUmRkWFdyaS9RM3ZIY09i?=
 =?utf-8?B?d0M4dUFNMCtYTTF2YnpVR3Uzb1pVUytHazdlaGozRWRsZDNJYjByM2RpNy84?=
 =?utf-8?B?NE5pNGJabVBUYVNKZm9JalBjT2RBZVdMVzY4cGx4L2hwOFJ2QloybTg1MnRN?=
 =?utf-8?B?TTJrVWNnYnVvbDJTZGRkbXkva3pYRHhuMmJCd1Byekh4c0xHc0N4WFp2OVB2?=
 =?utf-8?B?cXJ1Nzd3K1BkcEYvOVd3eTNTUHFPcitEVks5K0RqUytqTGxiNlZaejVHR1VG?=
 =?utf-8?B?WllEbEkyVDlPK2F6VXR0eXgwcXpjUHM2QnVwZitjQzBVRU0wcE0zNWxvbEdY?=
 =?utf-8?B?SGN5OS9COWl5KzJiMTZJRTNIdVoySzgrLytaOGp4RjFLbyt4eXZiaXAwUmgx?=
 =?utf-8?B?MEJZUml2UW5RUEc4L1NpMjdFZTlpWkJ2eDVDSHQ4Z2JUc3crOWQ2SGRhakJl?=
 =?utf-8?B?LzJlVlJzcS9FOHpKSmUzY3hpOThKVXBXMnFJOWljazFiUW15TWZhWTZYYW9E?=
 =?utf-8?B?N1p1WEREWTB1c3NpSXlFdzA1T2ZqS1M1NVVTN1loc1kvdzh4OFgrcjRXRkda?=
 =?utf-8?B?d0lxNjRMeFhQN2J6bnRLR3J5aXBtR3A0ODBrWDhZTVl3Q3NNV09YQUh5UXJV?=
 =?utf-8?B?aUdBL25ZY3NjQTdRem9YOTVQQ0hka2RvSEw3cXcvRzliOUdLelBFT0xib3Q2?=
 =?utf-8?B?Vk91YnhHTFRMTFVyOXBNZzlxZUR5V0tGVExXQlZIblYyOFhCTEowSWpKbWlX?=
 =?utf-8?B?bitGWGpaTkUrQ1F0elorRFpWN1BnanA4NEQ1bnU1S0VOZFl1Vys5bVRCTmRW?=
 =?utf-8?B?Z3JQd2RVUDcxUEM2bW5qVVVjcDBUcWFLSi9RMVFVTFJybGpINFJsRGtmQXNR?=
 =?utf-8?B?UUtqdTBiNktoV0hlSHFhSXQ0dHl4NG5vRG1qckJTbnBPamxaaUtjMDMxS2xr?=
 =?utf-8?B?Um1ZemVhb2p6NEFGUll3dGRualBzNzZqdnlYbHRTWlZMenR3RmJyWC9DMHdo?=
 =?utf-8?B?MEJRaGJYekVXTkt0WkdsUXJ6Rm9WMU9Pbm1SdEM1aHNUR0s5NUY0RUUrU1pr?=
 =?utf-8?B?U3doTEZxVjNWZGZRcVdTNDZ1SzVJNlY3SGlsVmZ1RDNnUWFxNGNYZnA0R2Vr?=
 =?utf-8?B?OFM0cGpVQUg0YnZQd0Jid1NkS2hDUXlXN0liNzZFR1FRUkVMWmpLRmNQTGpT?=
 =?utf-8?B?QzJDdmdqTzJ0Z28rVlZ1dG9nNmpRTGtuQUIwSVdYK1hmZmJmdEE3MnVGRUxF?=
 =?utf-8?B?WnRqL0xWYiszYi9Mc1lEV2xiR29yVDZZZGNPM1QrKzJsenhYMjMwV3FoU1Rj?=
 =?utf-8?B?dXpveHIyN0JoVTVicVNtUEhIZksveWtaRUR1cm9XQTJmbWlOY0JKWmJiUHhv?=
 =?utf-8?B?UHh3RitmODN3V3RVdkJpWHg2UEpERzZnSE9pK21ucDBVZ3kxNFgzMEttK2VY?=
 =?utf-8?B?NVdoa3R4WXMrOThnN1FJSkhIaU9GMlpRS3NrV3MxMGx5cTVFQnBJZ2ErOUdu?=
 =?utf-8?B?ZUJra2VWUTBYSHNPSUJJYlVYL3h1WmtjUWxUSUpCZ3orTnpqMUdzM2ZtS3VV?=
 =?utf-8?B?N3orYlVWcG5tLzJwaWVWSkQvNFNYNnphWjBFOWlZQWk3emdtdlYrOEtGY2RY?=
 =?utf-8?B?U3FJWWlVaHV1Y0IwVEdhQ0lLNGllbFpHTm1OUytDeHNzdWtacURUMWFEamx5?=
 =?utf-8?B?MDNnNmNxaEFGNTZyRHVBOFgvQWJtMkVyZVI5cXdBaXJObFUrb0d4bHJPcTUv?=
 =?utf-8?Q?09Wg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVBYVzF6U09nWThpU2d5bjVhMVZKeElVSjJNby9KbUhJQk5xbFRRSFg0NHVO?=
 =?utf-8?B?b3BYWHF2ZzJrQi9WTU54c3NRTW9ySnZrNmViVnJBRTcrSHBUaVg4Tjk0K3dV?=
 =?utf-8?B?eFVndlhGcmpvcTFTQkVZL0E0NzdtWFU3MnowNlhOOXVzSUFremY4VHZhMng3?=
 =?utf-8?B?Z3dqUkZQVGVMbXNiNmhSMDQxVmNadHpXYTZxTkdqTlBBSlRMWkxFSi9kQVlz?=
 =?utf-8?B?NWNsNkhSdlJVWHpDcUdCb0l1SVJZbEZGdml2TE5pT1F6dWxDMkF3K0plai8z?=
 =?utf-8?B?aU5SS3VicThPSGMxT3MrQ05INGdhUkdUT3JCclFSSmNMd1Y3dnVmQ2Z6WHFu?=
 =?utf-8?B?SUhneno0UFlMK0RyYUlrdTEzMEp0VDJjZUhPZ3gxNG10aE51YXF6b1VNV1B6?=
 =?utf-8?B?NHhTeEd0aTZhVFNLN1IzY1NPT1ZrWXduRWY4V2pTMkZnWGVBeFJFOUlRelk5?=
 =?utf-8?B?Uzd5YmgwWmNha3dIRGRFM0xuZlNSZU5ZK212TXpPRDMydzhUYThrT1dyaitT?=
 =?utf-8?B?ZU1RenJqVGJhamNEQTljZXNFT0VRaGNGeFRCQXJlNW90WlNyWkZ3SjV0SXhy?=
 =?utf-8?B?cE9YMlNWbDdIQjFRR0tLWlpYS0F0bkJKS1NQQ3VlVi9uSlBqUWhvb1ZoZkI0?=
 =?utf-8?B?VE9XS0RvZGMwekljcjFaYVZrZVkvV09WRmt4YWFzR2IzZWdIZ1pNKzhmTmIy?=
 =?utf-8?B?bUFZNE9GQVlkR0xUaGFtVkx6M3lZN3JiTE9YUFFDSG9qMkh6TEplU3J1emFk?=
 =?utf-8?B?LzJWWTdYbzg2TlJzaGJGZTlyQXFYTzZ4M214enNjMlM5SEpWdERtckoxaGxC?=
 =?utf-8?B?d09qdVUrODhMdUp5TTgyZUZzQndVbXB4V2VoanpIWmV1NGp2cEljTzY4VEtv?=
 =?utf-8?B?ZnJJdmxpd3dPTUFLUWVqSVlZZmhGUlhGT0JQNVBick5LTGRJT3NQdlFjbDlj?=
 =?utf-8?B?QmpFN3lrbjUwVGdoTEVWcVpUT1hidXB6dmhCMUg2anFxTE5Vc3BXSXl2VlpU?=
 =?utf-8?B?cXJ1OGdqTzhkdFRHaHZqQXc1d2NjOGw2NFF0UkVwT2dTa3BwNi9YU0ZMRk1I?=
 =?utf-8?B?UHE3dEwvSDArbmFWMlZ6UjJGdXhzTGdRUDlHa2ZRdnNFeWVBY1FpZFdkNUFk?=
 =?utf-8?B?VG1CU25xQzBPSS9Wd3hieC9UYnNyNUV6QmdNVlMva3IzZGkyYXRmOFp5S0RF?=
 =?utf-8?B?bnpZRFQ3TkJ1TTZWQStZazIrOTNNTnJXMXhSVGxHdS9kcUM3enZXOXUzSzFW?=
 =?utf-8?B?ckoycnJaZmEvT0xmYWxtcklkTC9PZUFVM3NyNDZYRVFiSUFZZnZzd09TMWty?=
 =?utf-8?B?Myt5UFpqT2x4TFBmQ2M0VDY3NnV1Z3lHaldLOGkzNUZ3S1J1VnpMOStDVktk?=
 =?utf-8?B?QTlUQ1l0bmtoL2ZwSEd4cUh2WDE3Qmw3WWlKbDcxTzdMVTc0Mzd3enVvVkpL?=
 =?utf-8?B?Y1VxdzVKZ2xLcjFEOTZ0V1drSGgwcTNNRmF2ZUV6WjNCbTZITjM1WmRhbjJT?=
 =?utf-8?B?REEyRnNyRUp4N1ZHMVdscS83Z1c0WXdjVzRxSEZGWDNEcG4vYXlUUi9EbFlU?=
 =?utf-8?B?dnpnbUQ2NUYrUjRRL0tiR09nMFhtUE1FZjJ4N1B6S3Rva0ZiT0c2RG42OXRE?=
 =?utf-8?B?enJpNTBaMnlsZ3A3ZThhZUplQUVXMnVoVjdnZkFEQzdOcVczemt1WGJWMUZU?=
 =?utf-8?B?ZzRBVDZLbEpVc2dEdnpOYVZ6SUgxZjVXNWtnUGYvbGFMNTczdXFpVWZ1NTE0?=
 =?utf-8?B?YmQ1Y3ZXeDZ4K0VnTHBvYnlGTytscG5hR0MyUWNRZGRKUDdjcXBqUk1EUFIv?=
 =?utf-8?B?VzNONmlVOXYzV1hTS1lKRUxZaFhQVDV2bURYeWo4RjBvS2UxeVZBSWR5b1Ex?=
 =?utf-8?B?S3g1VU45NFB4OGlMeXIySEIzdlljbWkvcmFvV0hOTlc4UGxmWVllMXlCd3VP?=
 =?utf-8?B?MTBzdHMvUVI3RUtFNXdsMjRzeGxac0lMRCtuYWxOZkJhVncvdDZySW5tOVQv?=
 =?utf-8?B?Mm84VjlFeUJrVW1adWRseWhpNXN0TTZWdTh3K0pmdVdBbXV0WXVDdUw3Y3VE?=
 =?utf-8?B?Umo4WU5ETXF2SFh5UnhabDBmNnVLU0FLOVJTRUNCY0dkdEhackZ1bXJsLzF5?=
 =?utf-8?B?azJ0MmZlbS84cjlzaFJ4cnFDY2dXeTZrUm5WMlJHc0YxZFJXQnozeHRKMXJM?=
 =?utf-8?B?eTk5RjJLdGc4Zzg1cXMwWWVpdVNUK21NVEw3OCtoTlpENFlibkhERVVKTU1x?=
 =?utf-8?B?Y1pOUmhnRXpFRUF4aEs3dDNoOUVWRWFBNlBhS3dHS09VVDk0WmU2SGdBa0FV?=
 =?utf-8?B?UmtQN3dmckdoeGlzRGhCNko3dzZJNnRhd1ZnL3JCUkJLYlVSQXI3RzZ1R0Zo?=
 =?utf-8?Q?Czt/AeQ9+MbB/W1M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 429a7c3f-8c55-48ad-ac05-08de5f1d566b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 10:01:14.3645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PpjkE/xT+d5sNZw2c0INCDkSwJ7UNsLdZN63qJPo63VwerZV+8XScU1rXRcY7x5LUkEBLtTdBK3XXMjXjyfqNIu8pvH74genfuileW9+7fs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF6D09CA9CB
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 28771AE51E
X-Rspamd-Action: no action


On 1/29/2026 2:54 PM, Imre Deak wrote:
> On Thu, Jan 29, 2026 at 11:18:28AM +0530, Nautiyal, Ankit K wrote:
>> On 1/29/2026 10:51 AM, Nautiyal, Ankit K wrote:
>>> On 1/28/2026 10:16 PM, Imre Deak wrote:
>>>> On Wed, Jan 28, 2026 at 07:36:24PM +0530, Ankit Nautiyal wrote:
>>>>> Currently in intel_dp_mode_valid(), we compute the number of
>>>>> joined pipes
>>>>> required before deciding whether DSC is needed. This ordering
>>>>> prevents us
>>>>> from accounting for DSC-related overhead when determining pipe
>>>>> requirements.
>>>>>
>>>>> It is not possible to first decide whether DSC is needed and
>>>>> then compute
>>>>> the required number of joined pipes, because the two depend on
>>>>> each other:
>>>>>
>>>>>    - DSC need is a function of the pipe count (e.g., 4‑pipe
>>>>> always requires
>>>>>      DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
>>>>>
>>>>>    - Whether a given pipe‑join configuration is sufficient depends on
>>>>>      effective bandwidth, which itself changes when DSC is used.
>>>>>
>>>>> As a result, the only correct approach is to iterate candidate
>>>>> pipe counts.
>>>>>
>>>>> So, refactor the logic to start with a single pipe and
>>>>> incrementally try
>>>>> additional pipes only if needed. While DSC overhead is not yet computed
>>>>> here, this restructuring prepares the code to support that in a
>>>>> follow-up
>>>>> changes.
>>>>>
>>>>> Additionally, if a forced joiner configuration is present, we
>>>>> first check
>>>>> whether it satisfies the bandwidth and timing constraints. If it
>>>>> does not,
>>>>> we fall back to evaluating configurations with 1, 2, or 4 pipes joined
>>>>> and prune or keep the mode accordingly.
>>>>>
>>>>> v2:
>>>>>    - Iterate over number of pipes to be joined instead of joiner
>>>>>      candidates. (Jani)
>>>>>    - Document the rationale of iterating over number of joined pipes.
>>>>>      (Imre)
>>>>>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_dp.c | 158
>>>>> +++++++++++++++---------
>>>>>    1 file changed, 103 insertions(+), 55 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> index 4c3a1b6d0015..599965a6e1a6 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct
>>>>> intel_connector *connector)
>>>>>        return true;
>>>>>    }
>>>>>    +static
>>>>> +bool intel_dp_can_join(struct intel_display *display,
>>>>> +               int num_joined_pipes)
>>>>> +{
>>>>> +    switch (num_joined_pipes) {
>>>>> +    case 1:
>>>>> +        return true;
>>>>> +    case 2:
>>>>> +        return HAS_BIGJOINER(display) ||
>>>>> +               HAS_UNCOMPRESSED_JOINER(display);
>>>>> +    case 4:
>>>>> +        return HAS_ULTRAJOINER(display);
>>>>> +    default:
>>>>> +        return false;
>>>>> +    }
>>>>> +}
>>>>> +
>>>>>    static enum drm_mode_status
>>>>>    intel_dp_mode_valid(struct drm_connector *_connector,
>>>>>                const struct drm_display_mode *mode)
>>>>> @@ -1445,13 +1462,13 @@ intel_dp_mode_valid(struct drm_connector
>>>>> *_connector,
>>>>>        const struct drm_display_mode *fixed_mode;
>>>>>        int target_clock = mode->clock;
>>>>>        int max_rate, mode_rate, max_lanes, max_link_clock;
>>>>> -    int max_dotclk = display->cdclk.max_dotclk_freq;
>>>>>        u16 dsc_max_compressed_bpp = 0;
>>>>>        u8 dsc_slice_count = 0;
>>>>>        enum drm_mode_status status;
>>>>>        bool dsc = false;
>>>>>        int num_joined_pipes;
>>>>>        int link_bpp_x16;
>>>>> +    int num_pipes;
>>>>>          status = intel_cpu_transcoder_mode_valid(display, mode);
>>>>>        if (status != MODE_OK)
>>>>> @@ -1488,67 +1505,98 @@ intel_dp_mode_valid(struct drm_connector
>>>>> *_connector,
>>>>>                           target_clock, mode->hdisplay,
>>>>>                           link_bpp_x16, 0);
>>>>>    -    num_joined_pipes = intel_dp_num_joined_pipes(intel_dp,
>>>>> connector,
>>>>> -                             mode->hdisplay, target_clock);
>>>>> -    max_dotclk *= num_joined_pipes;
>>>>> -
>>>>> -    if (target_clock > max_dotclk)
>>>>> -        return MODE_CLOCK_HIGH;
>>>>> -
>>>>> -    status = intel_pfit_mode_valid(display, mode,
>>>>> output_format, num_joined_pipes);
>>>>> -    if (status != MODE_OK)
>>>>> -        return status;
>>>>> -
>>>>> -    if (intel_dp_has_dsc(connector)) {
>>>>> -        int pipe_bpp;
>>>>> -
>>>>> -        /*
>>>>> -         * TBD pass the connector BPC,
>>>>> -         * for now U8_MAX so that max BPC on that platform
>>>>> would be picked
>>>>> -         */
>>>>> -        pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>>>>> -
>>>>> -        /*
>>>>> -         * Output bpp is stored in 6.4 format so right shift by
>>>>> 4 to get the
>>>>> -         * integer value since we support only integer values of bpp.
>>>>> -         */
>>>>> -        if (intel_dp_is_edp(intel_dp)) {
>>>>> -            dsc_max_compressed_bpp =
>>>>> - drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>>>>> -
>>>>> -            dsc_slice_count =
>>>>> -                intel_dp_dsc_get_slice_count(connector,
>>>>> -                                 target_clock,
>>>>> -                                 mode->hdisplay,
>>>>> -                                 num_joined_pipes);
>>>>> -
>>>>> -            dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>>>> -        } else if
>>>>> (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>>>>> -            unsigned long bw_overhead_flags = 0;
>>>>> -
>>>>> -            if (!drm_dp_is_uhbr_rate(max_link_clock))
>>>>> -                bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>>>>> -
>>>>> -            dsc = intel_dp_mode_valid_with_dsc(connector,
>>>>> -                               max_link_clock, max_lanes,
>>>>> -                               target_clock, mode->hdisplay,
>>>>> -                               num_joined_pipes,
>>>>> -                               output_format, pipe_bpp,
>>>>> -                               bw_overhead_flags);
>>>>> +    /*
>>>>> +     * We cannot determine the required pipe‑join count before
>>>>> knowing whether
>>>>> +     * DSC is needed, nor can we determine DSC need without
>>>>> knowing the pipe
>>>>> +     * count.
>>>>> +     * Because of this dependency cycle, the only correct
>>>>> approach is to iterate
>>>>> +     * over candidate pipe counts and evaluate each combination.
>>>>> +     */
>>>>> +    for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
>>>>> +        int max_dotclk = display->cdclk.max_dotclk_freq;
>>>>> +
>>>>> +        status = MODE_CLOCK_HIGH;
>>>>> +
>>>>> +        if (num_pipes == 0) {
>>>>> +            if (!connector->force_joined_pipes)
>>>>> +                continue;
>>>>> +            num_joined_pipes = connector->force_joined_pipes;
>>>>> +        } else {
>>>>> +            num_joined_pipes = num_pipes;
>>>>> +        }
>>>> The current way is to try connector->force_joined_pipes and fail the
>>>> commit if that doesn't work. Here you'd change that to fall back trying
>>>> non-forced pipe-joined configs in that case. If that's needed (not sure
>>>> if that's a good idea, since then the user wouldn't know which case
>>>> succeeded or failed), it should be a separate change. Here it could be
>>>> simply an if (forced_joined_pipes && num_pipes != forced_joined_pipes)
>>>> continue and then use num_pipes instead of num_joined_pipes later in the
>>>> loop.
>>> Hmm Yeah the initial thought process was to try force joiner thing
>>> first, if succeed well and good, if not we do our usual thing.
>>>
>>> But I see your point. I think we can just fail the commit if forced
>>> joiner doesn't work.
>>>
>>> This will also help simplify the loop and will allow to have an iterator
>>> macro as you have mentioned in the later patch.
>> For mode_valid phase can there be a corner case where force joiner is set to
>> some high value with which all modes somehow fail?
>>
>> Can hdisplay/htotal or clock  for a mode go below some acceptable value if
>> joiner is used?
> I.e. hdisplay/htotal/clock per-pipe becoming too low, right? I don't
> recall that the driver would check for these anywhere. The mode timing
> itself is checked and then (for instance) MODE_CLOCK_LOW is returned,
> but that's not a per-pipe thing. One thing that can fail is the DSC
> slice count, which can get too high for the sink.
>
> In any case there's not much we can do about any such failure scenario,
> just fail the commit?


Hmm makes sense. I have already started working on this, will send the 
next revision with this change and other suggested changes soon.

Regards,

Ankit

>
>> Regards,
>>
>> Ankit
>>
>>>
>>>>> +
>>>>> +        if (!intel_dp_can_join(display, num_joined_pipes))
>>>>> +            continue;
>>>>> +
>>>>> +        if (mode->hdisplay > num_joined_pipes *
>>>>> intel_dp_max_hdisplay_per_pipe(display))
>>>>> +            continue;
>>>>> +
>>>>> +        status = intel_pfit_mode_valid(display, mode,
>>>>> output_format, num_joined_pipes);
>>>>> +        if (status != MODE_OK)
>>>>> +            continue;
>>>>> +
>>>>> +        if (intel_dp_has_dsc(connector)) {
>>>>> +            int pipe_bpp;
>>>>> +
>>>>> +            /*
>>>>> +             * TBD pass the connector BPC,
>>>>> +             * for now U8_MAX so that max BPC on that platform
>>>>> would be picked
>>>>> +             */
>>>>> +            pipe_bpp = intel_dp_dsc_compute_max_bpp(connector,
>>>>> U8_MAX);
>>>>> +
>>>>> +            /*
>>>>> +             * Output bpp is stored in 6.4 format so right
>>>>> shift by 4 to get the
>>>>> +             * integer value since we support only integer
>>>>> values of bpp.
>>>>> +             */
>>>>> +            if (intel_dp_is_edp(intel_dp)) {
>>>>> +                dsc_max_compressed_bpp =
>>>>> + drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>>>>> +
>>>>> +                dsc_slice_count =
>>>>> +                    intel_dp_dsc_get_slice_count(connector,
>>>>> +                                     target_clock,
>>>>> +                                     mode->hdisplay,
>>>>> +                                     num_joined_pipes);
>>>>> +
>>>>> +                dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>>>> +            } else if
>>>>> (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>>>>> +                unsigned long bw_overhead_flags = 0;
>>>>> +
>>>>> +                if (!drm_dp_is_uhbr_rate(max_link_clock))
>>>>> +                    bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>>>>> +
>>>>> +                dsc = intel_dp_mode_valid_with_dsc(connector,
>>>>> +                                   max_link_clock, max_lanes,
>>>>> +                                   target_clock, mode->hdisplay,
>>>>> +                                   num_joined_pipes,
>>>>> +                                   output_format, pipe_bpp,
>>>>> +                                   bw_overhead_flags);
>>>>> +            }
>>>>> +        }
>>>>> +
>>>>> +        if (intel_dp_joiner_needs_dsc(display,
>>>>> num_joined_pipes) && !dsc)
>>>>> +            continue;
>>>>> +
>>>>> +        if (mode_rate > max_rate && !dsc)
>>>>> +            continue;
>>>>> +
>>>>> +        status = intel_mode_valid_max_plane_size(display, mode,
>>>>> num_joined_pipes);
>>>>> +        if (status != MODE_OK)
>>>>> +            continue;
>>>>> +
>>>>> +        max_dotclk *= num_joined_pipes;
>>>>> +
>>>>> +        if (target_clock <= max_dotclk) {
>>>>> +            status = MODE_OK;
>>>> status stays MODE_OK if target_clock > max_dotclk.
>>> Oh yes.. will fix this.
>>>
>>>
>>>>> +            break;
>>>>>            }
>>>>>        }
>>>>>    -    if (intel_dp_joiner_needs_dsc(display, num_joined_pipes)
>>>>> && !dsc)
>>>>> -        return MODE_CLOCK_HIGH;
>>>>> -
>>>>> -    status = intel_mode_valid_max_plane_size(display, mode,
>>>>> num_joined_pipes);
>>>>>        if (status != MODE_OK)
>>>>>            return status;
>>>>>    -    if (mode_rate > max_rate && !dsc)
>>>>> -        return MODE_CLOCK_HIGH;
>>>>> -
>>>>>        return intel_dp_mode_valid_downstream(connector, mode,
>>>>> target_clock);
>>>>> +
>>>> Extra w/s.
>>> Will drop this extra line.
>>>
>>>
>>> Thanks & Regards,
>>>
>>> Ankit
>>>
>>>>>    }
>>>>>      bool intel_dp_source_supports_tps3(struct intel_display *display)
>>>>> -- 
>>>>> 2.45.2
>>>>>
