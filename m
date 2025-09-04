Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 527CEB4321D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 08:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BAE10E975;
	Thu,  4 Sep 2025 06:15:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyKGcwRs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5529E10E147;
 Thu,  4 Sep 2025 06:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756966506; x=1788502506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=V3A7Jh8CIl9WY9VJGiPQU2O9rnKIRKssbfLPlPuhDH4=;
 b=VyKGcwRs1FdBAvX+TWQ97UzNBLGMehYS/REU2NfZDadQtZSSO9IIvlSK
 J3TgSjBlsEvEd5SVR0EXJx43HlLNIE8dgL60cSF2YeYBaFn5jiFJAAPIS
 ftksTxcVI3M9G0N3XxhIB863dX7pAPg6OMDNpp0pRpmH8yW3Q4v3tQ3cL
 0XMLAGR8N24qEMmdP4MMS7LBxlv2Y8HPwS1zFf7MRCFG15THHBHCqwoUQ
 hYqGjsUTxrl8XMpYiLeG5qvKlDu/Q5qFsu6RrnBf5hzreD+6XUAscdUs+
 hmvnGCHwOQTETSTy/ZZtIWmhepb2i76MDjOR290arlsEBRwmek+DuZDWC A==;
X-CSE-ConnectionGUID: QBkzHut1QrGVzFZe7Kj/Xw==
X-CSE-MsgGUID: l9A4NQ+jThm8LmqSK0ufzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="76744177"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="76744177"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 23:15:06 -0700
X-CSE-ConnectionGUID: 7iYN8WhPRauZMSgghJmQSw==
X-CSE-MsgGUID: KF/2t59cRTq1qMKNbZVpPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="171679239"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 23:15:06 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 23:15:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 23:15:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 23:15:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=txrXRKm9TVIFJsJVubkeLBIJvlQgO4rM5VnU2Ww4d4uCja0VDz7FAKwlOmMgd6FOZtx2Ss8jT5H2sKe5wRZooYf8eN2mvuyBPqkyyR2Ve6m6Sjok7CmgcaR6UsoSUKzaqKuNcovRP8bQ6hckqYYc/x6FBtGYN77LUzVvJm+BHgNHd+z1hCBLkWNUVj1rb63OjFvTVo49Ov1oA6Ut7YvdJOuva+wBu5YSej3/GXqutgInI/7j/xYHfIF/rQhI4ysTwEUKPAgGxPBi+gmUHy5mWQS6IxQht208q2/k+PoC2QUvGJ00W0EdN1Rs/zgcCPDdiMFkZv9wsZRiu7kycKvORQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3A7Jh8CIl9WY9VJGiPQU2O9rnKIRKssbfLPlPuhDH4=;
 b=jTmaxDeuFENd6EOFbPz3yxwY7cRV+6E0jN5qwL7Fb7a6KyyrdeqmKKIuyR0LGYLBF+M4yyLeD6rbfuCJx6rcN5mVo3F+UsWobe5TLJhIxP7L0CRubl0KO/jQ5f/CGMyqm0SqBY1zHGT9XZdATbA5Z8URmbnUiUicvcN5QKrMs43AIVUWyGVcaRbYLuQaTWkfF2GpjxI/jKr8+c9OS4KNEqGHseLyBoRjlhOkXNjtea65JeFLllAo5dtifKZDnUKJtEppm9k73HtfDvDwT27Gqd/jSX9iLf3hAv5OFhP6IlKwDHOrLM1mV6QSSM2wmpqbAO/QGA5QkLIbloLNacDk3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV8PR11MB8511.namprd11.prod.outlook.com (2603:10b6:408:1ed::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.29; Thu, 4 Sep
 2025 06:15:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 06:15:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 13/20] drm/i915/dp: use generic poll_timeout_us() instead
 of wait_for() in link training
Thread-Topic: [PATCH 13/20] drm/i915/dp: use generic poll_timeout_us() instead
 of wait_for() in link training
Thread-Index: AQHcGBZprB4TtCmJrEO7INOvlBsfHbSCllGA
Date: Thu, 4 Sep 2025 06:15:02 +0000
Message-ID: <0eada461703fe8e3338a30ff511092f1a8c16f31.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <29ab4738758fe844dc1323c4a59d5d6bdcf87308.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <29ab4738758fe844dc1323c4a59d5d6bdcf87308.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV8PR11MB8511:EE_
x-ms-office365-filtering-correlation-id: b6f4b46e-1228-4cd0-bace-08ddeb7a6271
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NmlxQXAwby9FR0o1VmdpUFJzdGYwNHMvQTl3NE5tVUNIanJOVFlNdDhsMVZZ?=
 =?utf-8?B?c091YXQ3cWpmSHdsSnN5K3JIUmV2d1RONlljbFBxUndQc3NVZjM0b21RbFZS?=
 =?utf-8?B?RGNMd0oyQ0VuTTBCOWU2b1d0MzlBSmVlMENLajY0dDhGRnRzbWoxS3NUUUtS?=
 =?utf-8?B?eG1iRXI2NFZVSllIV1BTUzg3eVp6TWgra2hzbEpVbW12TU10L2k3SkExL0VS?=
 =?utf-8?B?ZGVtbFg1YlJGdGNSTkxaLzdSV2djUHRqSVE1QU0xZUZYVkZITisxRDRrM3N0?=
 =?utf-8?B?V2JHMDc4ZHVrWjQ1RHdLTTV0aU1vMmxteWp5L2FBaTRpT1ZOeWZHY1VrcFBD?=
 =?utf-8?B?VktOL0NmZDdwSmxhNmdQT3RZNkIwVlpVMjJWaWNiMkhVT2lNbzFTQithVkw1?=
 =?utf-8?B?T3FUQldZakpUbnNEQU5yZVJLZ2ZLbXBTcytxMTNVNnF4OFNoNmgrbDRlT3R3?=
 =?utf-8?B?SXRlcCtKbUFkYW04T0tLbnUyaEQ5SXVKWTJuVXRnZkNBQjZEeTRuTm5QL0VP?=
 =?utf-8?B?WFBCOWFGeTJLa1lyT3lJbDRtdFhnMVBXa3FzK29EMURIcmhiWU9BQVduOEZS?=
 =?utf-8?B?N1hicjhXUUVmWEpwdDIzVHl4RWRPcUUwclFWQy84b3NIODJxVSs1Rlo4bzVP?=
 =?utf-8?B?YzVtd0hWQlAweHBXRlRTTU5ZdWxnSC9TS25CZElHVkFXMW9NNzV2REE4dW1L?=
 =?utf-8?B?UXhkZDFFaHdXZFNmV0lWaFlkZGk2SCszMkhhYmUyVE5IWHFjSFZPRjQzbXlI?=
 =?utf-8?B?V3JvdTRmUlVMQnFqV2J2ZmwzamtSZjlHaVNScmxjQ3VzMGJWMmNKK2V2MG90?=
 =?utf-8?B?TTBGWFNnSksvMVlFRmVnQXB4TjFiZ25zaGVZcS9DYUNJUDJGczlhQThyR05B?=
 =?utf-8?B?c09iMWhQb1QxNzlTR2lDUjVJcnM2akFOSnZhQlJiNHR0TkhUckdDbnBJWXUx?=
 =?utf-8?B?UTUwdXZBOEtpNjBERjBka2FPb25KWHo4U0xvS09JMzQveFFidTJGR29SZUhW?=
 =?utf-8?B?RVRTV3pSZmZMYkc3N1FFZHFEWk9hYUhIaHNPenlocXRCNDMyMFZHMjNURyti?=
 =?utf-8?B?cXp5VTFvN3JkaVJnV1lCR2xYKzI0allkRlk3NW5IN0ptT1laTUU4ODNjbGhU?=
 =?utf-8?B?TXdaOE1va3BSK1BJcXhZMGR6bGdMSUcxUHZGWklVdTY0aW9Nbi8rTEtUYlo4?=
 =?utf-8?B?SkpRdjJUeWY3YlVPcU5ybTNWdS9Edjc4WjhSazlEbkpQY09yeXkxUElpSVFB?=
 =?utf-8?B?VWE4V3A0b0xmM056K3RFUE5neWFqYzgvM3BOQ29TWHRRQ1lxRjBTSHJ2cm1U?=
 =?utf-8?B?NjNBRW41ZlIwc1M5UjhkQkdXM1hISjdQZVlUdDBXbXZ5bEtFaU40Tk1BMlQ5?=
 =?utf-8?B?TVJlK0hUc3N4RUN4OXZadmNPb3NrMlB5UU9laHk0a0hSaCtESGY3YU03STlM?=
 =?utf-8?B?NmxxRThGTVdXamZsZDRRN2EwQkY4RVE3TDZPdnlzSVh6dXFpeXA4Wk03WmZv?=
 =?utf-8?B?ZkdnRllEaS9KMFUvQ0VibzRycWZjOU43dXZETnhhMlY2bUJVM1ZPeVkxM1ZD?=
 =?utf-8?B?YlBqQi9IS3M4NDJsUnJqZnY1OENiQnJJdjhBS2JxajN2YmM3SWRuMWhCaDEw?=
 =?utf-8?B?UExKRzVFclRmamxXdjdKRklOY2ZGTFRXLzZtbVQwcDNYVGVrZ0xRQTl1VFZw?=
 =?utf-8?B?dVpiNWFOcUk5R1MvbklhUFUzZU5iQ2tpN2dzUlpoMnFHYXRtNGg2enJUREV3?=
 =?utf-8?B?L21vbDlOVkV0blpkWG9pL01vdjJWSWwyamRoOUttc2dIWnJMTzg3RnBtZE1W?=
 =?utf-8?B?T1dkN2ZpK2xJeGxCczZqamo1bFVQUFN3b0E4d2tVZDV3WEhBVnRaQnhHOVFK?=
 =?utf-8?B?cmdISTJZSTFNcXFRSlE4bFFxb0ovYUdkdHpENDVFa0pKclZFVVp6bUxrYWps?=
 =?utf-8?B?amdXMEdCQjZSV1p0MkJ6cVZOVWJmZThaU05CRDA4TGo2RldFS0E2WERKdDhP?=
 =?utf-8?B?dmc5U25JZ3JRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmtHOG10RG5VS1o0bDdXWjZNZHdXMi9hR0hqU0psVTJhMEEraDdpUDhpNkUw?=
 =?utf-8?B?dWtuTldDRWhCa1BtdnlPckZxT1lBRFg0YkthTi9qcVg4ZDRYRm1Od2xPT1A2?=
 =?utf-8?B?clVHaGVnY3IzTnZrTFlVU3V2cTduTnk3QXhVTjRMUkFZdE9JelZMQjFQQmRF?=
 =?utf-8?B?WkQwVkFteFh2THg4cGlKdXpSWlo5Z3hiQzlKTFFrRWZvdnFqY2twOTROMlAr?=
 =?utf-8?B?ZzY5dnNieGtndHFYd2JvSnZlcWc4UnhwTE96RzBVR2h5dXlqV2tWdDB2VTl6?=
 =?utf-8?B?UXRjdXg2bCsyVGN6bFY1Mkd6Mm82TXk2UjE2RjUyUys5VE1KRTcvSzB1cnVD?=
 =?utf-8?B?eFBDM29CbFRNM1VzbHV1cjdKSUVvSEdRNHlGOWVGMmZTdDhYcXEzZWg5b3E2?=
 =?utf-8?B?OUNNQjhHQWpQYXZjclM1c1NOUXRpVld1SVYvZERZczFidWNJMTFBN1ZRYjJN?=
 =?utf-8?B?K3pUV1lzMVEzci95bFhqNkN1TUtneG9aTlpRbzhnakdnOHJXbDhtZGRIWGxi?=
 =?utf-8?B?QU1HZ2R5MngwN3h1dXoyS3ZwaDBZSGtJSzUwY0VudWR2emNUNzFGbGRmWFFn?=
 =?utf-8?B?aXJDUU1RSlRaNGtVbFFFR0Y0UDM1Yk1sRSt6c0s1NXNyb1RRU1d1bDZZeXZT?=
 =?utf-8?B?NVk4dUJ6bENuRVFSaW1xRHFJbDc3Y3crak5ya1U1WFNnQjVGblRxSHQ4dGxY?=
 =?utf-8?B?aHc5cFZ0SCsxOWREQXRXd2c4dW5yeG5hTkJhVmdNUDllb2dwNFEyc0lvLytV?=
 =?utf-8?B?ZGg0MjlreERRUEpZZXFMeHQ0NWhxRnFKNHcvTTNCMVhJckdaNTJKVENUSkkw?=
 =?utf-8?B?aGxvMzFycnNpS2hwMHN5U1I5eHFLcWxoSlRMOGw3c1dodENpNXcrU0pFMmRE?=
 =?utf-8?B?MGZsN1l3cGJWNXVkVlE2WFE4aVJnWEdFMUVqWHp0b0F4TjFqdERteGcrYW15?=
 =?utf-8?B?NmRDWjJaTmtQY2I0MXRSaTFyTTQzVmtZM2svSlUrNjJML1dvZUk2TjFidXZi?=
 =?utf-8?B?ai96dk5TTWd1dVZDamJkYXRhY0hmaS9QOUlkRHZrYzR2UGNMSWhLa0tXWm5j?=
 =?utf-8?B?QmU1Yk91QTc5a2N4elFaM1VIZFM0Sk5SWjNNUkdCNU5HL0pxdzhUOVJROTV1?=
 =?utf-8?B?ajBlS0VnY2RaMmlrYUxKaHNZK2ZxS3FYclB1SG9oNXBoMFJJeUtjTnI5bUFI?=
 =?utf-8?B?Rlc0TTdvMWVLckhSVmIxejBFeC9ZWndCc3BtRUVOMWZxQUFza29kT254SFh6?=
 =?utf-8?B?MGRSeFFadU0xWENubFRCN0dOK0JoWXMwVXRVT0tEejdqUVY0UVdtSi9RaXJ2?=
 =?utf-8?B?anJtaW5SeVIxNUp4b0pzSHo5RGo5MzNTVUZWNDJJQ0VvTUZMUXBQbDhraU94?=
 =?utf-8?B?Z1RzaHpKaExHRFRUeWsyMm5OOHd4OEJLdThUTHdRaUtxdFQvZVZpNHNOTmNi?=
 =?utf-8?B?MFJvUS9vRVJJcFh4NXY3QXd2ZlNFenFEMDJ0SWRvaktNbVNqZGhkdjJCaXJy?=
 =?utf-8?B?VWZRd050anVSaXNNdGN3MTc3bUxrb0tTRUlOVTZXWktpNzRvT0lFSzBnd2hX?=
 =?utf-8?B?M0d2RUp2M2ZVTjRsdzdkdWdydWJrb1R0dTQzRzlnd3gwTUIvLzlkV0NiSlcw?=
 =?utf-8?B?eHNvT3hQc1NLZi9GYVk4SXZjc2ZMYVIrVjdJdXRmYjhPM0pnME5saW1SZzVV?=
 =?utf-8?B?NXRrNUYyNEJKRFREM2dRNjZ3M2k3SjhxaWg1SW41MW5TdGdXaTlBMkVHR1hB?=
 =?utf-8?B?L2pqZ3VOZDRnWXVZMEg3ajlaUk5XUkd3UlZ0eCsyL3FOalgwVVI3MS80UjZW?=
 =?utf-8?B?WFlNWFlmcXNJWm5PTjJiV2NoMWl0OWdlL21jOVlMYzlBRUo5Tkg4UjVjSHg3?=
 =?utf-8?B?bzFWcjJPcWtwbG1NMVhsNmt5eWV1a1V5Z00zc3ordUJLTjE0V3J5VmVnTHRP?=
 =?utf-8?B?dmhVV1U0SDFiUTgyUktiVVJGTkFRcjcrbnRQWUZ4SG9CYzJGN3JydTh6NGxk?=
 =?utf-8?B?Uk5tdVc1UjVxb3RaSUdJcG43K1Fwcmplb0VhRTBPYVNLbUZEUzdJSHZBQVVU?=
 =?utf-8?B?WlJ3eGIveDV6TGNsOVh0WHYzdW1UYThleHlxZkt1dXdJSDZHTGZwRkF1cVVz?=
 =?utf-8?B?c2oxZU8vLzlmbWV1WWF5K3dlUjNOd0JYeFVBUFJCUit5VTBWcWtjdlp3TzR4?=
 =?utf-8?B?MlpkOWxTbTNrR0tJRGVUUU1kZkppcEFQUEJMZVpyWGdQc0hFYXZ0a1lXMldp?=
 =?utf-8?B?WUNpWUVKalgvMlFSTUwrdXpSZnFRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6CAAB9697ED954E86E6F560B564998E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6f4b46e-1228-4cd0-bace-08ddeb7a6271
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 06:15:02.6449 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m4R812M6jgtkU6wosZSb5/lBYyip0IKSO3gGfeqdJID/fnWS06Lw/gbKCjzJyNum1kiVeKXO8D92cPb+wdWwLss8Dcq3wuMm0Y0VgQJSWBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8511
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
NTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQNCj4gNTAwIG1z
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJh
aW5pbmcuY8KgwqAgfCAxNyArKysrKysrKysrKysrLS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+
IGluZGV4IDlkMTRiNGU1OTU0NS4uMjdmMzcxNmJkYzFmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBA
QCAtMjIsNiArMjIsNyBAQA0KPiDCoCAqLw0KPiDCoA0KPiDCoCNpbmNsdWRlIDxsaW51eC9kZWJ1
Z2ZzLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+DQo+IMKgDQo+IMKgI2luY2x1ZGUg
PGRybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuaD4NCj4gwqAjaW5jbHVkZSA8ZHJtL2RybV9wcmlu
dC5oPg0KPiBAQCAtMTEzNSwxNSArMTEzNiwxOSBAQCB2b2lkIGludGVsX2RwX3N0b3BfbGlua190
cmFpbihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoHsNCj4gwqAJc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gwqAJ
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHAp
LQ0KPiA+YmFzZTsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiDCoAlpbnRlbF9kcC0+bGluay5hY3Rp
dmUgPSB0cnVlOw0KPiDCoA0KPiDCoAlpbnRlbF9kcF9wcm9ncmFtX2xpbmtfdHJhaW5pbmdfcGF0
dGVybihpbnRlbF9kcCwgY3J0Y19zdGF0ZSwNCj4gRFBfUEhZX0RQUlgsDQo+IMKgCQkJCQnCoMKg
wqDCoMKgwqANCj4gRFBfVFJBSU5JTkdfUEFUVEVSTl9ESVNBQkxFKTsNCj4gwqANCj4gLQlpZiAo
aW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRlKSAmJg0KPiAtCcKgwqDCoCB3YWl0X2ZvcihpbnRl
bF9kcF8xMjhiMTMyYl9pbnRyYV9ob3AoaW50ZWxfZHAsDQo+IGNydGNfc3RhdGUpID09IDAsIDUw
MCkpIHsNCj4gLQkJbHRfZGJnKGludGVsX2RwLCBEUF9QSFlfRFBSWCwgIjEyOGIvMTMyYiBpbnRy
YS1ob3ANCj4gbm90IGNsZWFyaW5nXG4iKTsNCj4gKwlpZiAoaW50ZWxfZHBfaXNfdWhicihjcnRj
X3N0YXRlKSkgew0KPiArCQlyZXQgPSBwb2xsX3RpbWVvdXRfdXMocmV0ID0NCj4gaW50ZWxfZHBf
MTI4YjEzMmJfaW50cmFfaG9wKGludGVsX2RwLCBjcnRjX3N0YXRlKSwNCj4gKwkJCQnCoMKgwqDC
oMKgIHJldCA9PSAwLA0KPiArCQkJCcKgwqDCoMKgwqAgNTAwLCA1MDAgKiAxMDAwLCBmYWxzZSk7
DQo+ICsJCWlmIChyZXQpDQo+ICsJCQlsdF9kYmcoaW50ZWxfZHAsIERQX1BIWV9EUFJYLCAiMTI4
Yi8xMzJiDQo+IGludHJhLWhvcCBub3QgY2xlYXJpbmdcbiIpOw0KPiDCoAl9DQo+IMKgDQo+IMKg
CWludGVsX2hwZF91bmJsb2NrKGVuY29kZXIpOw0KPiBAQCAtMTU4MSw4ICsxNTg2LDEyIEBAIGlu
dGVsX2RwXzEyOGIxMzJiX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwN
Cj4gwqAJCQnCoMKgwqDCoCBpbnQgbHR0cHJfY291bnQpDQo+IMKgew0KPiDCoAlib29sIHBhc3Nl
ZCA9IGZhbHNlOw0KPiArCWludCByZXQ7DQo+IMKgDQo+IC0JaWYgKHdhaXRfZm9yKGludGVsX2Rw
XzEyOGIxMzJiX2ludHJhX2hvcChpbnRlbF9kcCwNCj4gY3J0Y19zdGF0ZSkgPT0gMCwgNTAwKSkg
ew0KPiArCXJldCA9IHBvbGxfdGltZW91dF91cyhyZXQgPQ0KPiBpbnRlbF9kcF8xMjhiMTMyYl9p
bnRyYV9ob3AoaW50ZWxfZHAsIGNydGNfc3RhdGUpLA0KPiArCQkJwqDCoMKgwqDCoCByZXQgPT0g
MCwNCj4gKwkJCcKgwqDCoMKgwqAgNTAwLCA1MDAgKiAxMDAwLCBmYWxzZSk7DQo+ICsJaWYgKHJl
dCkgew0KPiDCoAkJbHRfZXJyKGludGVsX2RwLCBEUF9QSFlfRFBSWCwgIjEyOGIvMTMyYiBpbnRy
YS1ob3ANCj4gbm90IGNsZWFyXG4iKTsNCj4gwqAJCWdvdG8gb3V0Ow0KPiDCoAl9DQoNCg==
