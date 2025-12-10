Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E30CCB2113
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 07:23:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08BA310E66A;
	Wed, 10 Dec 2025 06:23:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INWiYqAH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B3410E666;
 Wed, 10 Dec 2025 06:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765347819; x=1796883819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hzrf/48YG5GY9/b1HGQIIynrIGy9GOWXEX0evWkQGlg=;
 b=INWiYqAH9IH5RdpBRPp8VQo4IUPjB8kz93bJaH/FQyoonmZk4L59wUqp
 ygaFwS4gveWzN5EQsJFFaTfwwmgTUohQG4v0ssV4kLW+uz62ZwBkX/aYA
 yfl1bnOh1qXmbmaPMB4DMB1v1B+2GMcL1cB2k3uWDXw2RaI8W3hQpCwC7
 dZavGJolrT/wTLqpcPHPBKiYjdgEW6qH19ZIiUhDRSW1uc92mrPWX4j6w
 oM+OCeSSfEXf2qGZZtIPXKYKYCdRUVRTdojeAmC3TdA9Zb4tUl+5GajU8
 9QGNnDUNe1GepulltMlbtA/p8xWdv5Y0HHnUwLdpzCLlFOepU77/1shV7 g==;
X-CSE-ConnectionGUID: EvlKFg4xQmmzXkq3xWFLIw==
X-CSE-MsgGUID: R2NtaHcBR+KIRto/pdk4uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67361380"
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="67361380"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:23:38 -0800
X-CSE-ConnectionGUID: WZoqgMFzTb+zhMgmCqSNbw==
X-CSE-MsgGUID: 5Ecxsj8wT0mqTyms+wP2FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,263,1758610800"; d="scan'208";a="195686114"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 22:23:38 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 22:23:38 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 22:23:38 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 22:23:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bvjvNJO+8uGAtaWyfGpureKEm9TFDUA51ASWcfbxcekN+x/qa8Z5rDL94hY4X9XrXHtkVFz3n8ZQ3nSP3LKW41RDw57tGfK7h1c9ZmgNPQn1CMqVJ4y7O3jpm8iY3/Czm0BA3+EpsQfPAq75OiFcKv3DQC/6QGCJ0GS/Exi98W31kb9kMqwtUyida9h4EycRmaerHn7RbpyTV+KXCpvDYPDSugVxb1W4Wb8Nr0kcSErFCr+kRbF2Zie9IA6z8+EKltaTmvWrjrR8PQl3zMnAj519WltZUZwoV1ZVTI517g2f3LSDHuAhjyM/t/JxB5roEUT2Cb53eExI310b1g82sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hzrf/48YG5GY9/b1HGQIIynrIGy9GOWXEX0evWkQGlg=;
 b=NAf60aM7Eagy33eK7sFXz16j4hw3H5IBl8In/3GVmNlfhYgUONM/Fs5hiPCK6RAUCXycAnj1vRvwnJPLe0/CHCCYsTvNSqP71qsiWk6B6YtWzHS0oruBrdafDIftmXptR40YhL02f45Ea5WUpUEtAstyYWTlMta6XzyVDzyonkFdG6TphYq8e1pTBIMXyUB3YyiNK3NL1xFV9VqcfbHQ+8Q9B4McHP0XDGGfwqEv4JVN1dIZ11j3MgapbR0faACVNCGWlvkd2Ul+1tqJipr+cAuhJioAVbbsE9vZ7nFYq1JOGW/SvJbIjLN416v1HWf2Cb75f5BNCMW5ZZCRUW7dFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB5874.namprd11.prod.outlook.com (2603:10b6:806:229::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 06:23:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 06:23:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Topic: [PATCH v4 0/3] Selective Fetch and async flip
Thread-Index: AQHcZOyz59K73UXkKEW1bp/w1WYWh7UZqM2AgADIXoA=
Date: Wed, 10 Dec 2025 06:23:34 +0000
Message-ID: <66f94d37118e7de638e3d0f5a016b7e496497ee3.camel@intel.com>
References: <20251204070718.1090778-1-jouni.hogander@intel.com>
 <aThp0YZOjgWyA9DW@intel.com>
In-Reply-To: <aThp0YZOjgWyA9DW@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB5874:EE_
x-ms-office365-filtering-correlation-id: 4c252484-fe2a-43f8-5ee9-08de37b4a5c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?UmpFVzM4cVIxQjhKT0RJK3diS0txZWhMbWlsWWo4RFExWWtUMmZjR2h3RHRH?=
 =?utf-8?B?QjY5MFQxZGVTK0RPaWlOdk5RZHo2NXowREJhR2xWMWY3R0M2ZlBWUlRjTEpG?=
 =?utf-8?B?VitzVnBwSWh6L01nOFhmNW8vb2VnMTB3MStUUWRPcUt5UHo4Y1lXQ3J6bVVM?=
 =?utf-8?B?TWJhcThnVGdMcEhRc0Nzc3BzcHVpVG5SOUJXMkRXRncyMzk0NXpRYkZ6bTlt?=
 =?utf-8?B?WjBVeGpwZlY3RWFGT3dhbHZFZ3ptRU9ZNkNXWWpxOFNnS3N3L3RLSWZFOS84?=
 =?utf-8?B?WnpjWjVWdWl3cXEzbmhFRk4xZlJXUnZjRFNacWs4LzJKWUNQK0NJNE5Sd1cv?=
 =?utf-8?B?VmxHTEFlVEtDK3NPbUhibStsNU90c1V1N2diMTBRRW9ORFNZb3VnNTdDS0sv?=
 =?utf-8?B?bmg2bm1MbDZ5Tm5LWllFWGE3TDJUWWtRVmZhV3A5dDBsQ2QyM0pWTWdpa0E0?=
 =?utf-8?B?TStrRVA1d2hsVVpCQzZLb25RcHlDcWlKTTRUbDZjM1VTMWY1RnZJZHZDc3Mv?=
 =?utf-8?B?QlhvbDEySEs2dmJ5dGRDNHJZRHR4djJJZEwwQm5tSDJrQnIyK1h1amx2d2pv?=
 =?utf-8?B?WkxpTEJkUmNiQzRaU0RNZXFodC9MT0JsMXZ2aHExZHJOZGpyM1FzN1ZSR2xz?=
 =?utf-8?B?ZklrMzhCbytOUElBdzBtN3ErWFdnSUpZb0ZQWGlxVllDckZIcHRkNWpVUUg4?=
 =?utf-8?B?c0NxcGxSSFRZTzlUM3lxMzBKKzE4K0JnQVFCMmhaY1FmejY1YzVKQkswWnVu?=
 =?utf-8?B?a3pOUFZJZHdUMERUUDNVVWVGamIwVlFhOHJnNzY2QTR5M2dKYklqa3RoOFVx?=
 =?utf-8?B?WDdlTFVodnRlU09iRWxrMVAwRkl6NGNxWjhadkFKUy9mRnJuMVNOcjZtUlNC?=
 =?utf-8?B?S1cyYzM0Vld3Z2hVVnYrMXZNM3VWY3MxTFVOYUVDUHFuY2lNc0FOYTNNdGNm?=
 =?utf-8?B?Y09qYWdQQXdiQW9lNkJDdlNVeFh6bitSdkFTQWZndTgwbk5hV3VudzduaCtm?=
 =?utf-8?B?aENoT0hpZ3NvSm1sSVY5UC9SMzRUbmlCOGZIWUwwMXdrRTE5bDd4RHZaVHNB?=
 =?utf-8?B?ZEozMTZxd21kVThIYkZtVTB1ZDBIS0JtMlNmck5QZ3ZLbFZuVEZGcTB0TWQr?=
 =?utf-8?B?NXJ1QktBOGRNd1FCSk5COE1waWRjMmVUUDUyd3MwRW91MVhJaytvdHM4dCtJ?=
 =?utf-8?B?ejVDZlhsVjVlMEJVZTBXU29TUERDWFgzV3V1dUNIYzFGQkZvU3A2azl6cktT?=
 =?utf-8?B?T1VOa1VpMGV6cjljSGFROTh4NWU1M1lWODFvcVBOTUtmdVAvVWh6ZXVJR0JQ?=
 =?utf-8?B?VFZGcGhjUlkrZTBseGxpMkpsNEhUa0xkdHVpRkc3RG5BNGRIQndnOWMzTUQ2?=
 =?utf-8?B?ZTBQalBuTUFDY1FZYnVEZHBPMnZlcnEwTnpPTjc3YkFVK3Rncll3RjdsUXhu?=
 =?utf-8?B?ODlpY2w1dHdrTm1FZFEzNTBNNTVSNnZoaitWdVdqTnZSZWNhV0F1WXc4cHJr?=
 =?utf-8?B?dUxoRUNVMHFmVGM2bndERnJ6Z3poNmRMK1V1MnBZdmJSKzJsWTBzSHY5Rzl1?=
 =?utf-8?B?VmZZdEFoYkM3Y2pUb0JrbHNUZUhxd0VjRG1vT1hEUDZvUlEzNlRZZ29Rd2VW?=
 =?utf-8?B?RnJzNzJwSG5jRDBvbG9YWlNBMWMrSE1JZUlML1hNYUZ5eGRMMVRNQlphcUI2?=
 =?utf-8?B?TVdWMlBhSnB6aCtDMGZhQjhPMmZHK1lKb3BzOE9TME9TV1ZjSEJMcEloa1BL?=
 =?utf-8?B?ZWJtQjJBcGZHeTNnL2JialJ2dGRkaEVJUDBaUXFrSU1ReklrSXRXbDNkUEFM?=
 =?utf-8?B?SWVyWXlXdDJHdnlROVo5b3V2TFJGQW1GUTBjUURzQlNoclAvT3QzRGFEZ3Rq?=
 =?utf-8?B?aWt3bUNDbVVBR3BsZ3dWVW1PSXNLM1JzSytuTzdEVHppMFF0ZEU2VW1WWlhr?=
 =?utf-8?B?TlRFRFFEVmV3RzkzK1F2a0V6eitORzFQMDNOS1BTczc1Mmp3a244Uzl6SmdE?=
 =?utf-8?B?K0l2NUJuL0IwRU5QdU5BQ1E5RXNJUUhESm8vRmZZazhkMWpNR2F6N3BtZHJ3?=
 =?utf-8?Q?s5d2yR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q1dVVS9KVWJlYVVuU2xYME5IaEU5VWJabXM5Vy9mVFh5Z1A4UEtvNjVPU0Vk?=
 =?utf-8?B?SVBxcmt5VnllOEZpNmt1aXJEanpHZmRWUjJQNnpNTEhCTm5kNW5RWXRmL21K?=
 =?utf-8?B?YThvM3FyME4yS1hSL2Nrdk5HQlhsMTQ5SVplNktuL3VqeUlaU0RET3NQQ2wr?=
 =?utf-8?B?ZUJkUWNXTlhjU2RhODQ5eWNlWnZGb29ZbHU2VloxY2cwZWRsMVk1UDkvd1Np?=
 =?utf-8?B?WFA1T2N2NGlvNU5uMmdsTWlaNnJUbVB4QkRMdW1LbFJFYzJ5eTR2OEZVSDNB?=
 =?utf-8?B?T3g4OHgrN09XMXZGSHBzYlpTWlh5ajM5bzUxNjJ5ME5xTFY0anFjcDZUNUp5?=
 =?utf-8?B?UENTWTFKQ2VZR1VNQnB4dzdQU1pSMjNmMXloOVpGTUYzc2RZcTI3SFRpU3p6?=
 =?utf-8?B?d0FGcEpPSmNDc3padWhVQW9wdVFXQ1NkK0MvcnhuVGZsOEx5dzArcitLckZV?=
 =?utf-8?B?U0RQeXFwdGd2MzZGRllXN3JCNDB2WTNXZzhaZm82cG1sTjc4MGVqOW1MdzJC?=
 =?utf-8?B?VmJCalFOMGFzVDk3K0dhNlhlQjFQanF6RXVpV3FrR0xjb0NJT21MVjBxTWpK?=
 =?utf-8?B?SGtjeGxRenV4aEZsekFNTHFjZzhnVUdodXVwU3ZWWjU1M2M1UmJ1bjdudGlo?=
 =?utf-8?B?cmhqREg1VXBOTmVoT1c1L1crMzBPeHgwU3dYdHFMRHBHcmdzNkdwTFNpbEQ2?=
 =?utf-8?B?Y1ZsMVJnNERyU0xTN1RGQ0ZyTURpWmIzTXdmcU1DQWVUYXJSbUV1cWdrV1lB?=
 =?utf-8?B?RlFjdW96NytVRzNQUFQ1dGVIMTFMWjNXZ2VXalhCb0pSem56RnV5aG5OZUR0?=
 =?utf-8?B?bVkrK1BVZ1YzamYwN1VoMnNVTTZCc3dlK2hGN2RIeTVjQkVKMmd1WitEVWtK?=
 =?utf-8?B?YUN1VHFuc2dwdkdSNGl5T0RtZ1B2OUFuQVc1RVpnTkJlVVV0REdQNHk0M2Mr?=
 =?utf-8?B?ZlpNajNaamFqUEE0MGNGUjhvdlQ1SGdxV0tKbUFlYVJqaVBUN2EzaDFHb1c3?=
 =?utf-8?B?RlBHVVgwT1NtRGY1SW9ZM2JNSmVRdUlueDJVd2JlblErVmEvVlIyZFFkR2gx?=
 =?utf-8?B?M21ROXR2V3l5Q3hKeWZYb09NVCtHd2xMNSthUFVxN3hQa2RVTFRoeTdGMkIw?=
 =?utf-8?B?VExrM3ZFZHFzQWM1RlNrNjFWYmhGT2w0dHp6ZnVYYm1nV2tNMDFVTUV5WGZP?=
 =?utf-8?B?NVRROVQ4MDIrazI0UGxseU5rNEFMN0sxdkJWWUtJWVQ0Nmkyb3BjWEtHODZu?=
 =?utf-8?B?ZU16Mll5MmQvaTB0dFRCVWx2VW1xR3dXblBIK3prd1BXZFJTM3Y0M1pjVnBy?=
 =?utf-8?B?RDNSR1dwQzRNSEU5dVVLSVYxUUFNZCtHOHFDdFZ6bDJQamp6Ukd6b21YdVV3?=
 =?utf-8?B?dW82cERyWUZKTjRTMFdmTE9JbnhqZHlKNDE0cjFhdndNMnByTjJ6Q3BtcmZM?=
 =?utf-8?B?R3lIT2lCU3ZuQkZkd3FCbjNORnAwQXpmMTJqb0t5NDdWWXk4TXpKczd4YUFN?=
 =?utf-8?B?ZVR3K2dVNVBkbmZHa0Y5QTJGZ0NIcU42YkplY1J0N01NbWFlaFpVaWZJYTJo?=
 =?utf-8?B?SSs5cHdWSlVTaFVobHQ0UXB4N2tMNWhVSFJoUFlUcDZ2a0hVRmNvdWxEVnNN?=
 =?utf-8?B?bjBCUE5xNEt5N3Rnc3NJb2VibklYTGhZeEEyTDdYS1pRM2tkblVjWGl2QmpC?=
 =?utf-8?B?bjgxcWpMTFo4MVh1VVh6K1plMGhuUmcwNXRhbjBZS0JFY0FZYWVIcmVhbiti?=
 =?utf-8?B?Y2JiRzc2dWlZQzk1Mkd0MkFYcUFYb29ocnFsYWVBMHM3b1B5N2F3T09pZndH?=
 =?utf-8?B?REFZSm85dzV3SEhXbldTdXRGeHpPNU1DcmFxUWpPY3p1MitFNVJ6SXNRNktJ?=
 =?utf-8?B?dXRzeU9wWmF5Y0pwZ0pkMEV6K2dtVXRuSWkyWWhmRFZ2Nm0zTkFpSGxpT1VY?=
 =?utf-8?B?WFZOMjJlTXVaNUFQakoyN1NFbUNkZzMyVVFpd0VqNXNlbEFKc1FlSUh3eCtM?=
 =?utf-8?B?dzdBTVhMWTFnY0lQeVhhYytpbWptaEJxbUFRVUJKcXhPU05MdW1kb1ZreSt4?=
 =?utf-8?B?L1JVOTFETlQ1Qys4UUJOWWJuWkZFM0RjZFhYODVJYnJ3UEJNTnBCNjRqWWF3?=
 =?utf-8?B?eDMrVkhXVytKVWM1bGx0S1o2bXh3Vkk2STY4TWpPaklBY1BGcW9zUEU5aWYw?=
 =?utf-8?B?dDBaRDV2TFpld2hhSTZIRFRvcE5OaVQ1VzluV0pjeHlzQ1RkelhnMW9IOUFO?=
 =?utf-8?B?ci9RMnhzZ0dPMDBrQ2JCWXA4eEN3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C9A1C805FE2EEB47B0485F8C58B49DF3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c252484-fe2a-43f8-5ee9-08de37b4a5c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 06:23:34.7123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oRvqplCTX9cOUTTxsD3QWMvlP2cE04/g7R2NnT5tlXrL+D03DLc6dCN4XZzRDPbq+6IncQkt/xYcHNDsP+/avFEnJfaH8GPD7ckknX2MgIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5874
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

T24gVHVlLCAyMDI1LTEyLTA5IGF0IDIwOjI2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgRGVjIDA0LCAyMDI1IGF0IDA5OjA3OjE1QU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBUaGlzIHBhdGNoIHNldCBjb250YWlucyBmaXhlcyBmb3IgU2VsZWN0
aXZlIEZldGNoIGFzeW5jIGZsaXANCj4gPiBzZXF1ZW5jZXMuIE9uIGFzeW5jIGZsaXAgc2VsZWN0
aXZlIGZldGNoIGlzIGNob29zaW5nIGZ1bGwgZnJhbWUNCj4gPiB1cGRhdGUuIEFsc28gc3Vic2Vx
dWVudCBmbGlwL3VwZGF0ZSBpcyBzdGlsbCB1c2luZyBmdWxsIGZyYW1lDQo+ID4gdXBkYXRlDQo+
ID4gdG8gZW5zdXJlIHBsYW5lIHdpdGggcGVuZGluZyBhc3luYyBmbGlwIGlzIG5vdCB0YWtlbiBp
biB0bw0KPiA+IHNlbGVjdGl2ZQ0KPiA+IGZldGNoL3VwZGF0ZS4NCj4gPiANCj4gPiB2NDoNCj4g
PiDCoCAtIHJld29yayBpZi1lbHNlIGlmIHRvIGlmLWlmDQo+ID4gwqAgLSBhZGRlZCBjb21tZW50
IHVwZGF0ZWQNCj4gPiDCoCAtIGNoZWNrIGNydGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzIGlu
DQo+ID4gwqDCoMKgIHBzcjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkDQo+ID4gdjM6
DQo+ID4gwqAgLSByZWJhc2UNCj4gPiDCoCAtIGZpeCBvbGRfY3J0Y19zdGF0ZS0+cGlwZV9zcmNz
el9lYXJseV90cHQNCj4gPiDCoCAtIGZpeCB1c2luZyBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRj
X3N0YXRlDQo+ID4gdjI6DQo+ID4gwqAgLSBjaGVjayBhbHNvIGNydGNfc3RhdGUtPmFzeW5jX2Zs
aXBfcGxhbmVzIGluDQo+ID4gwqDCoMKgIHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRlX3N1cHBv
cnRlZA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlciAoMyk6DQo+ID4gwqAgZHJtL2k5MTUvcHNy
OiBTZXQgcGxhbmUgaWQgYml0IGluIGNydGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzDQo+ID4g
Zm9yDQo+ID4gwqDCoMKgIFBTUg0KPiA+IMKgIGRybS9pOTE1L3BzcjogUGVyZm9ybSBmdWxsIGZy
YW1lIHVwZGF0ZSBvbiBhc3luYyBmbGlwDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBBbGxvdyBhc3lu
YyBmbGlwIHdoZW4gU2VsZWN0aXZlIEZldGNoIGVuYWJsZWQNCj4gDQo+IFNlcmllcyBpcw0KPiBS
ZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IFdoZW4gdGVzdGluZyB0aGlzIEkgc2F3IHRoYXQgd2UgZ2V0IHN0dWNrIGludG8g
ZnVsbCBmcmFtZSBtb2RlDQo+IGFsbCB0aGUgdGltZS4gQnV0IHRoYXQgc2VlbXMgdG8gYmUgYSBw
cmUtZXhpc3RpbmcgaXNzdWVzIGNhdXNlZA0KPiBieSB0aGUgYnJva2VuIHNlbGVjdGl2ZSBmZXRj
aCBhcmVhIGNhbGN1bGF0aW9uIGNvZGUuIEkgc3VwcG9zZQ0KPiBub3cgdGhhdCBJIGhhdmUgYSBs
YXB0b3Agd2l0aCBhIFBTUjIgcGFuZWwgSSBtaWdodCBoYXZlIHRvIGRpZyBvdXQNCj4gdGhhdCBi
cmFuY2ggb2YgbWluZSB3aGVyZSBJIGF0dGVtcHRlZCB0byByZXdyaXRlIHRoZSB3aG9pbGUgdGhp
bmcNCj4gYW5kIGZpZ3VyZSBvdXQgd2hhdCB3YXMgd3Jvbmcgd2l0aCBpdC4uLg0KPiANCg0KV2hh
dCBpcyB0aGUgU1cgc2V0dXAgeW91IGFyZSB1c2luZyBhbmQgd2hhdCBraW5kIG9mIHRlc3Rpbmcg
eW91IGFyZQ0KZG9pbmc/IENvdWxkIGl0IGJlIHJlbGF0ZWQgdG8gZnJvbnRidWZmZXIgdHJhY2tp
bmc/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KDQo+ID4gDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgOCAtLS0tLS0tLQ0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jwqDCoCB8IDEwICsrKysr
Ky0tLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKg
wqDCoCB8wqAgMyArKy0NCj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAx
MyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiAtLSANCj4gPiAyLjQzLjANCj4gDQoNCg==
