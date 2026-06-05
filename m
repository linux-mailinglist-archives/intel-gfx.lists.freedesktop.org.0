Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UzssNPS+ImpQdAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:20:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D776480A8
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 14:20:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=iugoP3n7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C6511A7F0;
	Fri,  5 Jun 2026 12:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 020CA11A7EF;
 Fri,  5 Jun 2026 12:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780662001; x=1812198001;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j4rxJDWbdF8TweEGLEaJg4YfMBsD4EiPNYwAtmaDtdc=;
 b=iugoP3n7N3BhsRecILCN3wGVMLQbUtAwAGEJdXPY1dqsY4fTjFjGoylo
 oHEquuYj9DS3z6yBTx+0Z2VcdeK2mnjQxKaEm7ICRjDf8r0gLQ/CERrzd
 jb/Xa6yOAvSKVQ/Tz40UM6zKFGi6Th91iARJLKur7c8A6XeEHAcAt3Zw9
 ZNpmo6raEeizxWolIATD9xdug0x0JzaHh6rUM1c01A1p3bmJBmIqtaw1v
 2PvP7ILDqpm9ljFwr75hp8uzdSggZM6kH+hKKX5+9ZsT6xyd2jKhSJcU3
 60VBxG/Up1ZHjoBuBVDIfXVNqE+3HB1V02MfPGCCjZfwVEnyyDV6Ln6RM g==;
X-CSE-ConnectionGUID: lKJDoaN0StGiXhTGdzuNIg==
X-CSE-MsgGUID: 8wpOyaIsTrC9p/ZDp4uaFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="84074031"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="84074031"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:20:00 -0700
X-CSE-ConnectionGUID: OsSmV+trQtGAtF5N4+aolA==
X-CSE-MsgGUID: 5DBh3i3tT2uP8ONSL0L+WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="243738865"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:20:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:19:59 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 05:19:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.30) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 05:19:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zOPx3RgUOexJYvhifINVnd/CGaMVnrofZ+FgPOghb1aKtaE7tMFGFIHhyoTgx5FTmWhvmnKqBYZr4oNenNzzwBkgY/KI6h9TpY0mvGT1+9E+kd2Bc/fsoOOEtk/ohdcJzb5IQUxtmTIRxZiqn9FFJYc4kfVI/nROswwFExG25JyetbtVd19NiwEBOcQstltzGwti5zZrZBxxae9WA+SaiePmzOyZX4YKJUF2wXgt4eh6mmHLYHOTYLOseS7UHtav/T50jmMO/edFvSzXhnPDDY2f7XUvEKTrbKMQRH2NMWboP8b9cj92qsup1V1/V2oLW19I7CjwIP/HboXbCqtGsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4rxJDWbdF8TweEGLEaJg4YfMBsD4EiPNYwAtmaDtdc=;
 b=FK33lAhepHz6j8KKIdwTqkznttY6klJILSoo3q8wwpcYl1Jl/LQDzO2y0FIFKROfnfWmS7NTobKpJGDzLCpoQGpcL7iSvUx98YbJctuR9sIxnVnE7PBvp46CCub1e36ZzC/aXqG+2EwvF2NnxejPFcLPeFTeULLt0eZngMGsTICT+rnYyADIVj/Lnl/9R0jpekVPL691qJnw6fZ/JiT57f3EQ+wtVCfywBfdEJsc2XghImS5PA6Fr3N8QsmUprjt1g0aUe9qsQAHPvgMcB53zZhMjN6Y3OzxXHKiEOXyMvqzNpZ2hUoSts+K79oxrhkr9ZympNOBBpGw3Z8u9JKfaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS3PR11MB9818.namprd11.prod.outlook.com
 (2603:10b6:8:365::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 12:19:57 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 12:19:57 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 05/22] drm/i915/dp_link_training: Use link_training as
 base pointer in debugfs
Thread-Topic: [PATCH v2 05/22] drm/i915/dp_link_training: Use link_training as
 base pointer in debugfs
Thread-Index: AQHc8a4fBP9SMwkZe0OOKcy4kAPNErYv58mw
Date: Fri, 5 Jun 2026 12:19:57 +0000
Message-ID: <DS4PPF69154114F3C0EE0A681DEC7B7EAEDEF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-6-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS3PR11MB9818:EE_
x-ms-office365-filtering-correlation-id: d4b07902-4537-4ac8-2cb9-08dec2fcc219
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|22082099003|6133799003|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: IPQafIj7AdIP7hagcCrU3+fnqymrXxm+bzXo9T2dM9FOcH2Vms/RFSTIv/gO30ye0b8OU7X7K5TQ0zJTqfugL3+lOm/r/PlDedqymW9Uo8Ao/ip8a0szEnf1cezQ1PbV4LQVCI/2v75Am2BSeWyuVEldGvydDvqmzJuNQXC7SdBAoAly/+J7hYVR1FhmWssiiDrizJCDZTayBN8yGseu/KjPkTUE4PBlz99gyPARqnoFF5+kGNRqnJqsfAF8I7CXcLBGe4Kgt32EX/NQABd6CnUwjyDnEx3C3du3sScL+GgLquHwMvDglLeiheRmTZr40tSWHavUBEFxH+pNqaYYVf51FenIQr8hfwa2jA5LVGPNNHKFS7dzBzYSXYMbvJPYjiXsxBwqpcLZ8x2EvNF81rQIlv8GGklpYrS7pPViT/HtiJ5j3fhJ7y5ovhqnfzX81LUhoPAVcmfhrMkgrr1whTUCu9KvyPT1TnCb/fp/hpbdRHXVUTSMPl0OgMZw/xYv8wsrjhqywvh6wUhGBjeVsWz9mTtAskbV4ajc6u7oXp4rpvyYcvGOG8flHQo36mQIVc8tvUFrExY7jdh2dSYW6AyJh5lW9JYTWcp8WYWuqDl6J1oDPehsLS1ekIK+EBXkQjHiys5FGRXT6xy85HkXOeU0Own80uaX0G6GtCBdE5WvITdjmZsgI/XKeO5hTm47zmuT/asmABA7kj/AJIXaDMmNNpKTNJyKaMg/fj+D+4+nhAisZQvrBCcjmY7oE8M4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(6133799003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?enJaZ0Qzdk12L3Z3Nk5sdGdlOHAvdVlrcXBaVjh2VkVwM1J1Qm9Fb21XclVI?=
 =?utf-8?B?T2lHT2lWVWxkWUo4cFpTcHlsYSsxV0JnYzM5NkFCdWNnVC9rbGxnUURlZXl5?=
 =?utf-8?B?eGZ6RFRkaFY3djlnRFhrNktIN2c3NVN4QVpUckRRVEFtNFNEdU44ckJ4a3ZW?=
 =?utf-8?B?YjRWTlYzTVMzVGJ0Yms5SDRyZVZRWkcyZlZHc3UzelJ3TnJyN1FiVk1wcUVR?=
 =?utf-8?B?bWRGNk9sZEZVRVovTzYzUDhRWEhyN3RKeC9YK2w1dFpIbUlEcjN2K0VMYlhO?=
 =?utf-8?B?Nloxcm5wOHJ1RWdya0kxV0taN0p6K2k1dHBxbG9OUGVISC9TS0xYNTErWjIr?=
 =?utf-8?B?U21YeVNFbFhLM2M2RDVpcDJLdzlBc2VFckE3L1k5MC9uaXRwTFd1cThuK05E?=
 =?utf-8?B?NzFzR1ZQdnJtYTU1VlVyQUZhWkRwQktTRjF2cDZnWUxONlpTUHhsVHB2TGV5?=
 =?utf-8?B?OTN5bGcvZkVveC9NMlhYcjFTUGVvZWU4Sm1KQ0c0RjZxeUZLU1pVQ2JZeVJY?=
 =?utf-8?B?YzRFbnZibjR2ZE91aG54NjFoWkdldGtCYjhMRUp0K2g3OTB1NmhUWFZTK0ZO?=
 =?utf-8?B?bmtRTk53MEQ2VDRhSERSeUJFZ2Irc3kyUkdVSVEzL3hicEJ5VjV4Yk9ISmtZ?=
 =?utf-8?B?RCs1bXdRTDJhWjJCNDhaZVJwbzE5bXJLYnUyWVlsRk5CWU5HL1BCRG5zTVVw?=
 =?utf-8?B?WFQ0YzlrTGpnSmhFQTMxWTJ6Sm5LcDBERWJGSFVPWXVFVXRoNFRXd0hZckph?=
 =?utf-8?B?b1pmOXNWZmtuZVBHNXc3YXRtNHIyaEdKakU5cEZpb1RkbU5uMTdDUFI3Nksr?=
 =?utf-8?B?T0dXdDkwNFFKWWlBd3M3WGVPNFczQVFWU1hhRkN4SXo1cDJmNkFUcXBYaU5t?=
 =?utf-8?B?UDl6UzJWZXFac1A3WGpBUkVocjZmQ1dQQVhSbUp6OFFsWWQ4LzVXYXlVZGdN?=
 =?utf-8?B?SFplS3BUS000cm1CUEkrY2FncW9ZdytUQmVXZDhHSU5rSTBreFlKM3NKZzUw?=
 =?utf-8?B?QUdldU53N3liZTZIWXF4ZGNlOWdzYXVpYUJ5a1dNc2VaclhRandyd1p0ekNn?=
 =?utf-8?B?SVZMR2V1WUZhSGdKMUU4Zng4cWRialIyemRmdlAzZm5CTzVIcFVJQld0ZzBv?=
 =?utf-8?B?TGRSdmkrQmR1ZmUwQ2k3cFpuUldOWkdqenlzMVBrR2tLV0hYdlArTW5sTTdr?=
 =?utf-8?B?enVIZ3NGM21qc016SE1WbVFTOWx6anZUSTk1K1FpVkJsT2E0RlZaRUM0ZEMy?=
 =?utf-8?B?ck85TTlMYlUraWFJTlNadCs3ZjgydlJOa1VNcmVoSU52Mkpwam5RTW9RUzNx?=
 =?utf-8?B?ZXVLNUNpd3IyOG9zSENhS1RscGhvbzdFRE1xbmcwNnBTY1Zrd0hTVVVVSTVn?=
 =?utf-8?B?ajRZc29hZ21UTWU3VGVnZWpWYW8yMElxeHFITlRCYUtITnFNYXo5UitRVVpz?=
 =?utf-8?B?V2JJbmNmSHU4Ty9rS2FOc2htR1Z4dXlERE1IMEtOZmVEUXVidTBRc3Qvc2lX?=
 =?utf-8?B?WjEwdDgwSGFpWEhnRENmY3psc3ZiV0pYdHZsY2FsblFVcDVQNFl4SjNTQ29k?=
 =?utf-8?B?N3pwU1Y5QlRzeVJ3SFJiTHNtdE05VUR6OE9OendFWFA3eEJPOWxMWWVaZWgr?=
 =?utf-8?B?SzFuZFNiOUg2eVVVNUJ4N3ZNZ1NkOFVFRUcwcElnQjBseVFvN0pDSEtHTTVT?=
 =?utf-8?B?UnJzTkMxd1o3aHFxZGplUi9ZZDJuamVXSVM2ZzJLTURMb05YbHFUaGtMZlda?=
 =?utf-8?B?aElnYytQRHQrZk10THlZbjhyNVNRcnlWMGVGMkExelI5WkRUb1IxNE9kbDNl?=
 =?utf-8?B?QjVkZitpODJvaGlmU0MvZ2RDQXpzMjhESXltakdXOUJ0R052NTduK1B6ZDlx?=
 =?utf-8?B?MStNZlUvUzZuS2h6S0haR0MveWdTTW5wME9rUkd6ZXNVaDRPSkpodktsZkhw?=
 =?utf-8?B?SFdVVTNka0FxQ2NiRFUxbXlTVVlMQmJTRVpQdmxWb0t5aG9GQTdzNU1tNkFv?=
 =?utf-8?B?OU52SUFzdFZVY1NsUm91VHl5SkZkNzE2RVY5OU9iOEkwTzltNFJvWU5aS0hV?=
 =?utf-8?B?NEtxcGhmbC9rR3QwTTFQRnduaXN1M3V4WDVKbGR0dGVUbnhUZGtOSlMxSyt2?=
 =?utf-8?B?anU2czA5ajVpeWY0aUowWTF4UVF4SHR3UU0ydEp4Vk1tYXY5TXdiQ1JGRkha?=
 =?utf-8?B?WHpLNUhlOFhYUVNlbzljZEhrbUQ4MVF1bi9ERGc2eFVraldrZGdlNUpxdko1?=
 =?utf-8?B?WkcrM205djBRQ0hPZTFnRUE4WkdLYlJiOWMyUU02S2VTUWhnazN3SUJuTDJ6?=
 =?utf-8?B?Y1F6dEVFOW9sMXNobFF1Z0tFbStMYnJBc2E5Sk5BbUdNb0ZKeW1LQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oYKGCYwd0QlWxFYwhsnTUs2gpYZHzuwRstZSbag44jFV+xl4e0C0itjFhsFg6ezCHjzIJrbve44GIpc1QKnNcUPbLUShFugCcPJRCdQ65JclSBWqHelerVOC3Cb3niFXkc87nd1QqEgsR2N6zdndvmOx8Y1b3uli1nl0L36ZGCJDXbLhiSEosxhDQ8Jbvdn86Dbip12jPPsw+WZQv1JOQi55QmG4/KAHXU7Fvn+citgxcwqVjrw3n3ACeTliozeZe3c6bpbbJ7YnUGdzchfSILFZU2Z4N+Q1Wb4HSHVo6dvM+VJ6JIzkzX0UCEoRSSpHG5unMOVbT/3bDfv5IiB5dA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4b07902-4537-4ac8-2cb9-08dec2fcc219
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 12:19:57.6542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9qCTusVrbkaGFz2HomSPrjJ8XqkI90MZS7b6Aipm3HzuHbqG7CcgCoXM2xV124sz1gHDLMMiNI14qcdz3Mx9sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9818
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38D776480A8

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5p
a3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MDUvMjJdIGRybS9pOTE1L2RwX2xpbmtfdHJhaW5pbmc6IFVzZSBsaW5rX3RyYWluaW5nIGFzIGJh
c2UgcG9pbnRlciBpbiBkZWJ1Z2ZzDQo+IA0KPiBSZXRyaWV2ZSB0aGUgbGlua190cmFpbmluZyBw
b2ludGVyIGZyb20gdGhlIGNvbm5lY3RvciBhbmQgZGVyaXZlIHRoZSBEUCBwb2ludGVyIGZyb20g
aXQgaW4gZGVidWdmcyBlbnRyaWVzLg0KPiANCj4gVGhpcyBwcmVwYXJlcyBmb3IgYSBmb2xsb3ct
dXAgY2hhbmdlIHdoZXJlIHZhbHVlcyBleHBvc2VkIHZpYSBkZWJ1Z2ZzIGVudHJpZXMgd2lsbCBi
ZSByZXRyaWV2ZWQgZnJvbSB0aGUgbGluayB0cmFpbmluZyBzdGF0ZS4NCj4gDQo+IHYyOiBKb2lu
IHVubmVjZXNzYXJpbHkgd3JhcHBlZCBsaW5lcy4gKEphbmkpDQo+IA0KPiBDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYyB8IDIwICsrKysrKysrKysrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4g
aW5kZXggZDhmMTgzNGU1MDQzMy4uNGVjYzAwYjdjOWZmNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4g
QEAgLTY4LDYgKzY4LDExIEBAIHN0cnVjdCBpbnRlbF9kcF9saW5rX3RyYWluaW5nIHsNCj4gIAlz
dHJ1Y3QgaW50ZWxfZHAgKmRwOw0KPiAgfTsNCj4gDQo+ICtzdGF0aWMgc3RydWN0IGludGVsX2Rw
X2xpbmtfdHJhaW5pbmcgKmNvbm5lY3Rvcl90b19saW5rX3RyYWluaW5nKHN0cnVjdA0KPiAraW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpIHsNCj4gKwlyZXR1cm4gaW50ZWxfYXR0YWNoZWRfZHAo
Y29ubmVjdG9yKS0+bGluay50cmFpbmluZzsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50
ZWxfZHBfcmVzZXRfbHR0cHJfY29tbW9uX2NhcHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkg
IHsNCj4gIAltZW1zZXQoaW50ZWxfZHAtPmx0dHByX2NvbW1vbl9jYXBzLCAwLCBzaXplb2YoaW50
ZWxfZHAtPmx0dHByX2NvbW1vbl9jYXBzKSk7DQo+IEBAIC0yMzIyLDcgKzIzMjcsOCBAQCBzdGF0
aWMgaW50IGk5MTVfZHBfZm9yY2VfbGlua190cmFpbmluZ19mYWlsdXJlX3Nob3codm9pZCAqZGF0
YSwgdTY0ICp2YWwpICB7DQo+ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0g
dG9faW50ZWxfY29ubmVjdG9yKGRhdGEpOw0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShjb25uZWN0b3IpOw0KPiAtCXN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcChjb25uZWN0b3IpOw0KPiArCXN0cnVjdCBpbnRl
bF9kcF9saW5rX3RyYWluaW5nICpsaW5rX3RyYWluaW5nID0gY29ubmVjdG9yX3RvX2xpbmtfdHJh
aW5pbmcoY29ubmVjdG9yKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gbGlua190
cmFpbmluZy0+ZHA7DQo+ICAJaW50IGVycjsNCj4gDQo+ICAJZXJyID0gZHJtX21vZGVzZXRfbG9j
a19zaW5nbGVfaW50ZXJydXB0aWJsZSgmZGlzcGxheS0+ZHJtLT5tb2RlX2NvbmZpZy5jb25uZWN0
aW9uX211dGV4KTsNCj4gQEAgLTIzNDIsNyArMjM0OCw4IEBAIHN0YXRpYyBpbnQgaTkxNV9kcF9m
b3JjZV9saW5rX3RyYWluaW5nX2ZhaWx1cmVfd3JpdGUodm9pZCAqZGF0YSwgdTY0IHZhbCkgIHsN
Cj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0
b3IoZGF0YSk7DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9k
aXNwbGF5KGNvbm5lY3Rvcik7DQo+IC0Jc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGludGVs
X2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7DQo+ICsJc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5p
bmcgKmxpbmtfdHJhaW5pbmcgPSBjb25uZWN0b3JfdG9fbGlua190cmFpbmluZyhjb25uZWN0b3Ip
Ow0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBsaW5rX3RyYWluaW5nLT5kcDsNCj4g
IAlpbnQgZXJyOw0KPiANCj4gIAlpZiAodmFsID4gMikNCj4gQEAgLTIzNjgsNyArMjM3NSw4IEBA
IHN0YXRpYyBpbnQgaTkxNV9kcF9mb3JjZV9saW5rX3JldHJhaW5fc2hvdyh2b2lkICpkYXRhLCB1
NjQgKnZhbCkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSB0b19p
bnRlbF9jb25uZWN0b3IoZGF0YSk7DQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KGNvbm5lY3Rvcik7DQo+IC0Jc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9IGludGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7DQo+ICsJc3RydWN0IGludGVsX2Rw
X2xpbmtfdHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcgPSBjb25uZWN0b3JfdG9fbGlua190cmFpbmlu
Zyhjb25uZWN0b3IpOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBsaW5rX3RyYWlu
aW5nLT5kcDsNCj4gIAlpbnQgZXJyOw0KPiANCj4gIAllcnIgPSBkcm1fbW9kZXNldF9sb2NrX3Np
bmdsZV9pbnRlcnJ1cHRpYmxlKCZkaXNwbGF5LT5kcm0tPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25f
bXV0ZXgpOw0KPiBAQCAtMjM4OCw3ICsyMzk2LDggQEAgc3RhdGljIGludCBpOTE1X2RwX2ZvcmNl
X2xpbmtfcmV0cmFpbl93cml0ZSh2b2lkICpkYXRhLCB1NjQgdmFsKSAgew0KPiAgCXN0cnVjdCBp
bnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IHRvX2ludGVsX2Nvbm5lY3RvcihkYXRhKTsNCj4g
IAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVj
dG9yKTsNCj4gLQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAo
Y29ubmVjdG9yKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFp
bmluZyA9IGNvbm5lY3Rvcl90b19saW5rX3RyYWluaW5nKGNvbm5lY3Rvcik7DQo+ICsJc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9IGxpbmtfdHJhaW5pbmctPmRwOw0KPiAgCWludCBlcnI7DQo+
IA0KPiAgCWVyciA9IGRybV9tb2Rlc2V0X2xvY2tfc2luZ2xlX2ludGVycnVwdGlibGUoJmRpc3Bs
YXktPmRybS0+bW9kZV9jb25maWcuY29ubmVjdGlvbl9tdXRleCk7DQo+IEBAIC0yNDEzLDcgKzI0
MjIsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHBfbGlua19yZXRyYWluX2Rpc2FibGVkX3Nob3coc3Ry
dWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvciA9IHRvX2ludGVsX2Nvbm5lY3RvcihtLT5wcml2YXRlKTsNCj4gIAlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAoY29ubmVj
dG9yKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZyA9
IGNvbm5lY3Rvcl90b19saW5rX3RyYWluaW5nKGNvbm5lY3Rvcik7DQo+ICsJc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCA9IGxpbmtfdHJhaW5pbmctPmRwOw0KPiAgCWludCBlcnI7DQo+IA0KPiAg
CWVyciA9IGRybV9tb2Rlc2V0X2xvY2tfc2luZ2xlX2ludGVycnVwdGlibGUoJmRpc3BsYXktPmRy
bS0+bW9kZV9jb25maWcuY29ubmVjdGlvbl9tdXRleCk7DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
