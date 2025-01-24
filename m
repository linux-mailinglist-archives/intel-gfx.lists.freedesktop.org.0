Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A735A1B637
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:41:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 984E710E984;
	Fri, 24 Jan 2025 12:41:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eFtG8Znt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA81110E973;
 Fri, 24 Jan 2025 12:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737722479; x=1769258479;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jxfFc5HmMWcYhIA2907pJgwgjr6DO2ErfgVvGzuh4vw=;
 b=eFtG8Zntxz+mnibTUmxlfDxmuN7BV5IPSXFHrJdwjX39dVykc8VZPJcH
 QAG7kYqDmiRKc9OUOsTbEq4WLlt2yCasDkJDmOyWpoeB7hy4/mlvEyqLV
 B9GClChddYtj8pTu362ld9doGZWH33HBy9R9/4mfoWQ59HKZ8wcGKFGRc
 L6m6BRtmBZnjhkm0QNxSq2XuvW4MzrlUWn9V52xMINgcBOTy/gxA0G7k2
 vyjjqP/W8n4ljdJImZ/b+4fPqdR1tpAII9XkqxP+trLHHcIhmj7izIpBT
 HeEvAxakYIabw11o1BjZ3v1ruHPFEBucgNL1gQzOwe9xQCTwMjkm2zrnj A==;
X-CSE-ConnectionGUID: L4WHbBvnSH+CU9Mcn8pa4g==
X-CSE-MsgGUID: K0tAoo5GQQavz7y9lUendg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="41088753"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="41088753"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 04:41:18 -0800
X-CSE-ConnectionGUID: L6AiUbOHSziWEn63MFxt7g==
X-CSE-MsgGUID: dtPKyODBQ4ewTXZMkR9MSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112896246"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 04:41:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 04:41:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 04:41:17 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 04:41:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=esHyPkOiCRwfRbQm9wt+Sy3egErjOOJQmvgpcnNsRPQXB0J63Jk5YpkdynU7uIINf1MI3Jie9mE85LIoD0xzQss7+TsfZtMoZix66De02b0u4lklM2BHmTOI/vYRwYbhN/ZmSv27kkGvmRBke5I280t/hS2GcGP5V3G4qxrxh2E0Pjh2VmT7/P+y8pGeuHyZP6ljhxW4JZ0RCoV20mCN+l4QhSEZ4qxRqPQp2nFAf9WtimA4GINGtAhFSHB90iSgFcxK6mHJGHuBJIdxcxncTIAm40pNv9s+QUDg/KLpmubNR/OainYpj4DmMI1L4/tHK3of0O28o7sg167QRQk5bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jxfFc5HmMWcYhIA2907pJgwgjr6DO2ErfgVvGzuh4vw=;
 b=rHjytrvLjXSYgOiRGWfc97nutF6ka1I7YcDe/cGe0dqzCBsCXvo2wZ+OX9LWnNObaxE3+Yto183GIfLhV+Ks8lsxI9h43Q4H6zJAQrALhMaTXceGnJ10p9z7iYA0+A1O/gblpoXlDdk6s5p+bch3QKBZ/92nwVU3VMOczF+LkjM1XceV+s3+j6zvZMAbWim3SRAC0isVIsy7JSVm0Py34qHUha2gqoQK+jNIaZc8kADawTlBO/rgEac7uerIIA3zUtpBFZfzVVKxjZvYqwQmaiW5yIWeZLkVadvtnqU2PB1INIsd8k94tCKvBvRea/MtJB7bBbGUSWmQtNk711WVKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.19; Fri, 24 Jan 2025 12:41:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 12:41:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Thread-Topic: [PATCH v4 11/13] drm/i915/display: Evade scanline 0 as well if
 PSR1 or PSR2 is enabled
Thread-Index: AQHbbk6705aEA+Nk3UqP1hogPM9mTrMlzI0AgAAFBoCAAAtJAIAAAQMA
Date: Fri, 24 Jan 2025 12:41:11 +0000
Message-ID: <78d2f599c2ebffb3936071048b3e8d3a343de5c1.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-12-jouni.hogander@intel.com>
 <Z5N73tdHQqLOKhk7@intel.com>
 <dbf6d20903c2ca8dbab3437b0af7ad414b14f99c.camel@intel.com>
 <Z5OJjKVW5QJEKrPP@intel.com>
In-Reply-To: <Z5OJjKVW5QJEKrPP@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4746:EE_
x-ms-office365-filtering-correlation-id: 0aa17073-5329-42a3-5154-08dd3c7461df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OStzS21aRVk2L0xPZFpqaFpWckxqaVlEOEpDT1UwMnl2QWp3Wjd1Yk1JQ0hI?=
 =?utf-8?B?MlVGYzNGZmJrNGFsYXl5QjNiSkRoZ0dNZDhseEdMTlNmVHFXTDAxNERyN3ZJ?=
 =?utf-8?B?VlgvdExJMUd4RytidWlIVkxJSUR0YVZpZkkrYm5EL29qS0pIdjR0TFlIQmwr?=
 =?utf-8?B?QWdqeUtaODgvdWx2OWhERmIxMTNkckd2ZDQyOWtjZGhqOWNJQyt3WnlHUWJ4?=
 =?utf-8?B?SjFFTytKU3lRN25iWnF2OW9VbTk1b0xUN2xKY2lRd1hzUkJaR1kxVDViZGxQ?=
 =?utf-8?B?aXBhUkZqci90WW5lc1Rrb3gwMXgyYVI2N216aGlIckxFWElCRnM5eFR6MSt6?=
 =?utf-8?B?VjkwOEszczUzNlBTWUl2QUkxY3dKSzg5NDJvcVJ5SktCSkpSTTRTblV5NG0y?=
 =?utf-8?B?TytYcXNHSTVlazVNSlRmS3dvSVFqUE80WE5BcVp3cytzZXIrY2Y4c2Y3aXhW?=
 =?utf-8?B?TWM5YmtieEhRRUR6bXdaaGJ3TWdQZi8vREsrVjEzNUczWHRRYkNVbFRtWlZC?=
 =?utf-8?B?VU1WYktjTUVuZ0ZMdWRzeWt1VkJPSTduNkJvWXpvdzFOU0tiVHZMVlZmVGpu?=
 =?utf-8?B?WTBQNFZKdm50cHdZdEJlZTZ6WnN5YnI4WW84a29GdEthNUtoU1lnRkV3T05N?=
 =?utf-8?B?RTRBRnVJSzZwa0l4ZkptbFVMTFhHUEhEam12RzlrY3hFZGJ3UHQxNGZuci9l?=
 =?utf-8?B?UHBxcytCQnhnMUY3WWhLWlZiVmoydlpoOEx1N21FYk55aFkvK1lSTmdPd2tk?=
 =?utf-8?B?WTdmMzRveU5odEJzWUZBK0RybVkxSDFpaENmR1dEbGdNaHMrckxJczJMbDlP?=
 =?utf-8?B?MGJsbzFKT1JJaElaS05yQUp1b3o5TGdOejdLdXA1ajcybmVseXA4TnUrMnBI?=
 =?utf-8?B?b2pzckQwSEs3bWZaZ3ZjWXJacW4ybndOZU9IYnZDNWMwQTNBUUpFMHd1dE90?=
 =?utf-8?B?WVFjSW92SnYwaWd0YWR3Yzg4aDhUQUhZRTBadGJBc1MyR2Q1ZllDRXNRRVlS?=
 =?utf-8?B?NjZQcFJWbHZyV3RhVWdMSllrQi9oU3VKRlB5QWZ3anN0Sks1MXI0bG1idUM1?=
 =?utf-8?B?YWIxNEN4V2dCcmYzM0w5SEJwdHozeTZ1ZDBkNXR5YkNSbndtYTZuNDFKQXMw?=
 =?utf-8?B?Z2J5em4xM21Wb1JXTTRlcThUVWlnNEJWUlo0L2NVRkMybjQzNG03MEZhejMz?=
 =?utf-8?B?Qy9FajNSWFNCRnZSTUR2R2pxUzVsc0Vqd0haaGFvUFd4RCttMkVJYlpDT0lU?=
 =?utf-8?B?d0lpQ2lybHZoOWJxZ01IUk5Fc0J5RC9LYXhRNlRJRVpNY0NZd0pBQlBhWjcr?=
 =?utf-8?B?NTlDVXJaOEJpdlN3cldURXcrbURNWGZ0RlRYUWFDOGVyc1dudHRQY0VOd1pp?=
 =?utf-8?B?N0xZc3pDVjcwZENJcWtjV0lJT2xITVFmQ1AxeVNCbkNKYTg5Nm5xRVZ2WDFG?=
 =?utf-8?B?N1NjcVJXRnRkZXRYNm1reHh0emF5QmhPUEdjc1JvY0dFWUh0a1VwMitzaDdv?=
 =?utf-8?B?QnJydjNjNmRDaXlsdmRWbE1DZm5reWwyenV4Y0J4bTZwNTNpcVBVQXEzRmcw?=
 =?utf-8?B?aUNQbWNKWFpJZHhRK2oyc01FQ2krL3lJSG0rR2hQcEE4VGdHRmxzc2QzL0F0?=
 =?utf-8?B?b0MvTUVhbEQrSEdZYzZGaVcwcXpnb20va3RWSVpram0rTHJwYWpDUUVoWGVW?=
 =?utf-8?B?cDViU2pVN2Z1SFRxRmRJMUdCZmFUZDY2VlhMQ09pV3orMk5sam9rVWRaQjhB?=
 =?utf-8?B?Mm83ZzMvb1ZKRTk4QUtXR1hZUEozOEhPZ09FVVBPYmdzaXFJWDA5TjlqcUFk?=
 =?utf-8?B?eVpZRWdqRG1VdnF4bEd0Q1BOZnlaWjFVL1o4empQbE9hMldqSGdhTnozV29S?=
 =?utf-8?B?cUR4VjIyV1RUTXZDalBqczNMTDFEVUJ2Y29PUXFGZ2RsUzRtZ3pNU3JtZzgx?=
 =?utf-8?Q?nJja96rduPisugQGHQUmBxgwVTFlAnjr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlZGUlFPSlVER1Q1SC9mOHF2Rk1pUk52TWpIRFNFdUJiNHY5RGFuNlFvMGtI?=
 =?utf-8?B?NjZtamVlclBUUkdRTFdsekV1U0MxMmRlU2FhekVRNjY1N0RtUVZ4WlkyUlR0?=
 =?utf-8?B?bXlJWjZ5M1ZRelNiL2ZEWVhIa3VmZW8xOTZqS0hYRjJmQUEyTDNmazRZUkYy?=
 =?utf-8?B?Uk5HUVRLZ3htUHduRkloY2Z2L0NnOVNnOGpTZ3F4QzVUWnBiNHowK2FxMElt?=
 =?utf-8?B?bVc1Z3lnd3RsZnRrRS9oZkJpZ3IveTl6dEtnYll1OWU4U1VZeFdUZkNWdk1P?=
 =?utf-8?B?bkUvOWdtSnRnWVZ4ODQrVlpQWEw2TjVMcGRTRldxWG83b1EwcDUwemRDWk4z?=
 =?utf-8?B?YXVMbzBsSU94LzhIVVhua3h4TjNIeWxCMVpBbmYxeVc1L0dJNGZrSTA3U1VC?=
 =?utf-8?B?Q3ROTEFPaWtEblV5ZFBpWkpodVhFclRWbnlubUZRSEJaN0dmYWJObVBxcW54?=
 =?utf-8?B?V09WVzFhZmY4NG9sRnBaTTEwTnNqYmtwMGtHOGN2UGhjVUR5MmJlT3NaWFUr?=
 =?utf-8?B?UnUrbS9aTFJsTjBGcFhlUlB3N2NZYm9Fb2dQdmxxbDZXakplOEZkenVTYzZ6?=
 =?utf-8?B?enRpelVBYnlJSmhnYXJqK0h0b0JvTkdjZzRuSVkrM3VIR2plSG9VYmNHQk81?=
 =?utf-8?B?SWJKbTBobWV1ZSs1UXkxY0F3WkREMVpsVk1mMlFBUi93bWpUOW0rbUlCdHhF?=
 =?utf-8?B?TGlTYWZ0bnA5NGRVaTQ5NTkybmVCeldsREFGREJYVzBOTUR2NlN2LzFqR2NQ?=
 =?utf-8?B?WmVZRm90UkJqYkp2NUZtZzExRFU4djZ0MHdOOWJ5cGpqZnNERlJyUE13d1FW?=
 =?utf-8?B?cWR3andHSUlRL0R6RFpsVEtkZ3JFaFlMT2V1MVpTKyt4WEhRZi91TzlIS1ZY?=
 =?utf-8?B?bW5WL3BtMDZBamhmRzJTbTlMUkxKQXRtczNoZ3JMcllldGJZZDdZcTZITnRF?=
 =?utf-8?B?azhVckRudzVpQkFFV3FvcE5tYkViZUlhOWpPM2Rpc0NVckxBYVQzMU9ybUho?=
 =?utf-8?B?bXc0Z2paVHVpVU9VbjY0R0Q0TFE1bXNLL3Z3VmdWUlBNSzIvMlpoQTllS1pD?=
 =?utf-8?B?UHEyYWEyLzAwWS9vbzhvQWg0bUk4Z2x3VlBIa25pdFR4NVZtczcxUm4wZGMy?=
 =?utf-8?B?OWs4UnhlSjVzemQ1eWhlblZGbEFZQlNoOHFtUUtXTHZ4anZQWWZ6SlNPSnVt?=
 =?utf-8?B?ZmNiQ1o2UmtBdlNqempnTlpZdmN0blRwUldqUmU4WDJTSGtoblpSZ2YxTXJW?=
 =?utf-8?B?Yko2bXBYbDJKdllrTVhKeGdPS2phL2FXNnMrVTVha3BPbjhTMHVydmZFLzhQ?=
 =?utf-8?B?bGFOTWRrZndIbzhpdmVvRTIyY0tXY0ZDL2ZtSWZwT1RLeHltaWlpQTRpSzdQ?=
 =?utf-8?B?Ky8rV2J3aWFYSFE5b0pSdW1vR3lkMGdycHdnSmFxUVV1QXc3aFdJbU1ZSjhI?=
 =?utf-8?B?VVdHd1hsNWpTbUJkeHlqRUhLL3EvYXJ2VjB6N212NHpBTHlwYTZSa1F0WFdL?=
 =?utf-8?B?L2s5L0hZUVlqeWNBVjg3bTRVQ3VkYkpCaG9mK2lrQ2dyTm93Y1ArOTFTVVhD?=
 =?utf-8?B?MXhUdzcvL0p6Z2dOa3djby9URm92anRrdGpYdXFNN3VkSVNpWmdQQ29VOWZ1?=
 =?utf-8?B?VHJSeVJtamZXcTZ6bVNmcngzcnZiSHJkTHBJaVBPT00wNDVXRitBak1DNjdO?=
 =?utf-8?B?dFcrdWNaSm93QWRUTzgySmxMbjA5VTJKUmsrTTJDK21KZmk2SVpEbjNERE1V?=
 =?utf-8?B?TENhWi9FblU2OWZabU1mRGU3ZjJPR3grQ2FSM3VvekUrQU1iVDhCTktPVmpk?=
 =?utf-8?B?UmdVYUd3NHFsNHI2WmcwY0J3UzEvRThPdFhpSWh6V1ZhMlBRU0tvZ0QvNE5h?=
 =?utf-8?B?UHE4SDJqaFFXdGM1WUpYTTlpZkM2ZmtvQ1lDTlBWdCs0NmU4VGk4V1pWTGUr?=
 =?utf-8?B?bWJJd1RFUnFpTmgwVWdldEVBWFpzUzBSUGFMMlVKYUc4THY2MHBjckV6eFdD?=
 =?utf-8?B?MGR3d3FrVGdSQ0tqdUNhdlBKN2tpOTgzdEllQ1pNZzlpRzVFcHpIMC93cmhC?=
 =?utf-8?B?dFN3MDhUMXd6d1R3cWhnU1o2Zy8rcnZsNi9mRzlFZUFMa1laa25GNFRKR25k?=
 =?utf-8?B?L3hkM0xxRmkvbE1TNVhWVWpPazJJbkRMK3dVNmhtNVo1c01yNkpGb1ROTjJF?=
 =?utf-8?B?bkkrQ3NsbktpeFNvYWxhT3I2VS91aTIrN2FZT2tyb0dWYU1EeHFjbnEzeldF?=
 =?utf-8?B?Rm9mVmlXQ3FLY3lkTTFtL2t2NUJRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <402499144D393141BB14265FEC7323FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aa17073-5329-42a3-5154-08dd3c7461df
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 12:41:11.2361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uvqemqlDvnPao7T4FHgXaEh4n829MLCqK13bTnC4+tsswYUQSYXOn7Dki6ijm3DpsoTqkk4ntbCaSdKJS57eaeuTzvx3vAUY5J8cfeoO5iA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDE0OjM3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDExOjU3OjEwQU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBGcmksIDIwMjUtMDEtMjQgYXQgMTM6MzkgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjU2OjIy
UE0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gUElQRURTTCBpcyByZWFk
aW5nIGFzIDAgd2hlbiBpbiBTUkRFTlQoUFNSMSkgb3INCj4gPiA+ID4gREVFUF9TTEVFUChQU1Iy
KS4NCj4gPiA+ID4gT24NCj4gPiA+ID4gd2FrZS11cCBzY2FubGluZSBjb3VudGluZyBzdGFydHMg
ZnJvbSB2Ymxhbmtfc3RhcnQgLSAxLiBXZQ0KPiA+ID4gPiBkb24ndA0KPiA+ID4gPiBrbm93IGlm
DQo+ID4gPiA+IHdha2UtdXAgaXMgYWxyZWFkeSBvbmdvaW5nIHdoZW4gZXZhc2lvbiBzdGFydHMu
IEluIHdvcnN0IGNhc2UNCj4gPiA+ID4gUElQRURTTCBjb3VsZA0KPiA+ID4gPiBzdGFydCByZWFk
aW5nIHZhbGlkIHZhbHVlIHJpZ2h0IGFmdGVyIGNoZWNraW5nIHRoZSBzY2FubGluZS4gSW4NCj4g
PiA+ID4gdGhpcw0KPiA+ID4gPiBzY2VuYXJpbyB3ZSB3b3VsZG4ndCBoYXZlIGVub3VnaCB0aW1l
IHRvIHdyaXRlIGFsbCByZWdpc3RlcnMuDQo+ID4gPiA+IFRvDQo+ID4gPiA+IHRhY2tsZQ0KPiA+
ID4gPiB0aGlzIGV2YWRlIHNjYW5saW5lIDAgYXMgd2VsbC4gQXMgYSBkcmF3YmFjayB3ZSBoYXZl
IDEgZnJhbWUNCj4gPiA+ID4gZGVsYXkNCj4gPiA+ID4gaW4gZmxpcA0KPiA+ID4gPiB3aGVuIHdh
a2luZyB1cC4NCj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMTIgKysrKysrKysrKysrDQo+
ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4gPiA+ID4gDQo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
DQo+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+
ID4gPiBpbmRleCBiYjc3ZGVkOGJmNzI2Li45MTRmMGJlNDQ5MWM0IDEwMDY0NA0KPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiA+ID4gQEAg
LTUyOCw2ICs1MjgsMTggQEAgdm9pZCBpbnRlbF9kc2JfdmJsYW5rX2V2YWRlKHN0cnVjdA0KPiA+
ID4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gPiDCoAlpbnQgbGF0ZW5jeSA9
IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiBody5hZGp1
c3RlZF9tb2RlLCAyMCk7DQo+ID4gPiA+IMKgCWludCBzdGFydCwgZW5kOw0KPiA+ID4gPiDCoA0K
PiA+ID4gPiArCS8qDQo+ID4gPiA+ICsJICogUElQRURTTCBpcyByZWFkaW5nIGFzIDAgd2hlbiBp
biBTUkRFTlQoUFNSMSkgb3INCj4gPiA+ID4gREVFUF9TTEVFUChQU1IyKS4gT24NCj4gPiA+ID4g
KwkgKiB3YWtlLXVwIHNjYW5saW5lIGNvdW50aW5nIHN0YXJ0cyBmcm9tIHZibGFua19zdGFydA0K
PiA+ID4gPiAtIDEuDQo+ID4gPiA+IFdlIGRvbid0IGtub3cNCj4gPiA+ID4gKwkgKiBpZiB3YWtl
LXVwIGlzIGFscmVhZHkgb25nb2luZyB3aGVuIGV2YXNpb24gc3RhcnRzLg0KPiA+ID4gPiBJbg0K
PiA+ID4gPiB3b3JzdCBjYXNlDQo+ID4gPiA+ICsJICogUElQRURTTCBjb3VsZCBzdGFydCByZWFk
aW5nIHZhbGlkIHZhbHVlIHJpZ2h0IGFmdGVyDQo+ID4gPiA+IGNoZWNraW5nIHRoZQ0KPiA+ID4g
PiArCSAqIHNjYW5saW5lLiBJbiB0aGlzIHNjZW5hcmlvIHdlIHdvdWxkbid0IGhhdmUgZW5vdWdo
DQo+ID4gPiA+IHRpbWUNCj4gPiA+ID4gdG8gd3JpdGUgYWxsDQo+ID4gPiA+ICsJICogcmVnaXN0
ZXJzLiBUbyB0YWNrbGUgdGhpcyBldmFkZSBzY2FubGluZSAwIGFzIHdlbGwuDQo+ID4gPiA+IEFz
DQo+ID4gPiA+IGEgZHJhd2JhY2sgd2UNCj4gPiA+ID4gKwkgKiBoYXZlIDEgZnJhbWUgZGVsYXkg
aW4gZmxpcCB3aGVuIHdha2luZyB1cC4NCj4gPiA+ID4gKwkgKi8NCj4gPiA+ID4gKwlpZiAoY3J0
Y19zdGF0ZS0+aGFzX3BzciAmJiAhY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPmhhc19wYW5lbF9yZXBs
YXkpDQo+ID4gPiANCj4gPiA+IFdoYXQncyB0aGUgZGVhbCB3aXRoIHBhbmVsIHJlcGxheSBoZXJl
Pw0KPiA+IA0KPiA+IEkgY291bGRuJ3Qgc2VlIFBJUEVEU0wgcmV0dXJuaW5nIDAgd2hlbiB1c2lu
ZyBQYW5lbCBSZXBsYXkuIEV2ZW4gb24NCj4gPiBzYW1lIHNldHVwIHdpdGggUFNSIEkgc2F3IGl0
LCBidXQgd2l0aCBQUiBJIGNvdWxkbid0IHNlZS4NCj4gDQo+IEhtbS4gQXJlIHlvdSBzdXJlIGl0
J3MgcmVhY2hpbmcgREM1LzY/DQo+IA0KPiBUaG91Z2ggSSBzdXBwb3NlIGl0J3MgcG9zc2libGUg
dGhhdCBwYW5lbCByZXBsYXkgKHVubGlrZSBQU1IpDQo+IGRvZXMgcHJldHR5IG11Y2ggZXZlcnl0
aGluZyBmcm9tIHRoZSBETUMncyBEQyBzdGF0ZSBoYW5kbGVyLA0KPiBzbyBhcyBzb29uIGFzIHlv
dSByZWFkIHRoZSByZWdpc3RlciBpdCByZXN0b3JlcyB0aGluZ3MgZnVsbHkNCj4gZW5vdWdoIHRo
YXQgeW91IGdldCB0aGUgdmJsYW5rX3N0YXJ0LTEgcmVzcG9uc2UuLi4NCg0KTWF5YmUgd2UganVz
dCBhZGQgdGhhdCBldmFzaW9uIHdpdGhvdXQgY2hlY2tpbmcgcGFuZWwgcmVwbGF5LiBJdA0Kc2hv
dWxkbid0IGJlIHRvbyBleHBlbnNpdmUgYW55d2F5cy4gV2hhdCBkbyB5b3UgdGhpbms/DQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQoNCg==
