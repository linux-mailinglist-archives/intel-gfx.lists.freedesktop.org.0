Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F57CAFF58
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 13:43:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C33A10E1E0;
	Tue,  9 Dec 2025 12:43:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWWF5wBR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25E5510E1E0;
 Tue,  9 Dec 2025 12:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765284199; x=1796820199;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=73ZwInDzdRqngQUzyFTqRryOwPY10RiG7+507NvbxWU=;
 b=CWWF5wBRsNzPnPUoIO/VfIkNmJJkXjlhReMQhJTObTCkfI+3g+mOFhZ2
 qsRdkoZwpmnD3dpCAmRZPPQ7mukyfR2Ev95Lp00rl4jthwsgjZup1iKo6
 QGP8WLZrjEkpbNVAFxCc+hGoPEn/J1jHNkmrhJXpag0vQ6bOak7R3WiDd
 hmrNQisM29CkJyjYmQ6PRN93aIi0haL1/PoIWqLk7tjfnakTbBJg43iod
 XEuXd40HKHlKdzPO3/kTrs2JKSy982x6+vawRz6j+IZgq0PW1ShNmcUcs
 B6pxSkqkhtYBxpAa/SWS3yA6y9K7aAcj2QkSEn7dK4VnLqJbsV+mhRd08 Q==;
X-CSE-ConnectionGUID: 0Ik+DxhnT8mDUrc7k/TUIw==
X-CSE-MsgGUID: wrnBubmcTMWkCBG9jZDzpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78704823"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78704823"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:43:18 -0800
X-CSE-ConnectionGUID: 4LEmjmVPQJaY4ax+gs/tTg==
X-CSE-MsgGUID: obRZ4//iS1ergftEZQ0xwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="219556715"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 04:43:18 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 04:43:17 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 04:43:17 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.3) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 04:43:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NDjqrJkScovzbyE9NNVULTYXvz5r2w9FQpqUl6J/BxtlM5ONehXZdf2GIymlPh8IcwnoHjQNvGNrVvbDcd6CtdG/dIhSowpjXNMQ999dsKTrLW8rsAvGtXEURirVSsXpnytdu5IvFOULnZ2ll3+URMbpCn2xjMRoe9Ns9g11tQuPBBTuoNqHsNZVvIDjLMNrdw6NrZLCbqG7voDsPrsLOUpEep5LI7yBXvr+OAftoTYojs6DAaFQD9+IW0KC4IsPV0poFa58ZFMv7mG4EQ2XDm270k0WTWO5vd4x2lv7gKvvQ3BiDVJC8QDL2LaEECE1LhITuK7c0wQm4+pVyxnRSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73ZwInDzdRqngQUzyFTqRryOwPY10RiG7+507NvbxWU=;
 b=yeaNJBp8+FUXhoEVsLjYB7iv5yHFom7oewirLEJqn2LRJn0z2inR3iLfAibeJzcMEZcieYz0r0KkTq7L3s80DaHpx75dYHkMD61lCdfU2Pf4m8WVkBjvzyjt/Huw/pstPdt2kGJso0v2D12YHYyyDzJqX69Jy4PkmW+4UzGw5jdcGKXx9rIBZRfUVhPGg9b1e0cijLRuJ1j6yuAT7xFwbxSeevwwjQuL2+fDZtgLMmPqNKFvSVgTcALpmzhgDxI8ptsQlO9hnlWG6LPzP9p6xgh5z0GV9lintki0nzNtBe/VlXqHavsKLVpfgeBvRy57Z+RduZbnSf6g/4VlXfpzSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7888.namprd11.prod.outlook.com (2603:10b6:8:e6::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.6; Tue, 9 Dec 2025 12:43:14 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 12:43:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 39/50] drm/i915/dsi: Track the detailed DSC slice
 configuration
Thread-Topic: [PATCH 39/50] drm/i915/dsi: Track the detailed DSC slice
 configuration
Thread-Index: AQHcX8kLSQsjW8j5aUGRNwlVW5s8uLUZUzGA
Date: Tue, 9 Dec 2025 12:43:14 +0000
Message-ID: <6bdf6720cca23e13b9b73dc4d335f8829abe4619.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-40-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-40-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7888:EE_
x-ms-office365-filtering-correlation-id: 07fad638-3bee-48c8-e6ed-08de37208550
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bGp1d2tKeFFpekJVZGt6dFY0MkJTMHlOMDQyQ1lNSDVQMkN5ZzlkZDVUeDJO?=
 =?utf-8?B?V3FVTEYra2xnYm9JR0txcG02NTk2ejd0SWVyNWZhU1JwcDU5Y0xEZ250TWNa?=
 =?utf-8?B?Zi81TkNXY0dKWFBkWUFWLzYySHVzclJNWVZDNkxSNkh6dnhlRmErSEtQSTZq?=
 =?utf-8?B?U04wLzZxcHNhQzZsVndYSUhmdXFqVTFoNDd1MHZhRFZUWWl0dmUwbFJkRW5t?=
 =?utf-8?B?V0J4c1RqNUV3TCtIb1g1SXdOUXJPYm9sZnl4L25yNjJSeUt3empITnp5eFVo?=
 =?utf-8?B?eHpNS1EwMEtYcFFiRTk0V0czRUJtaS9IcXVDYVJzNGxVL3VuQ09LaXYzY3ZH?=
 =?utf-8?B?SWlxcE5wdDBNOGNlR2g0SnZ4Vm5XQ0MwTXZOSWw4R0F3czNXK2ZweEgrN3Yr?=
 =?utf-8?B?dGZUNnVQMmZJR1Q0RjUzSndRMGl4WGNXNE0wK200NWwra2Y5M2YzRFFGbXdz?=
 =?utf-8?B?WTI2cnJueXg5NmxRVlBCTVR1MkdvTlNpZDVXK0p4NVZBUVlzY1Y2NlUwbTVw?=
 =?utf-8?B?SnN6VURZcUlIekl0S3l6aU45Y0hneDRneVRDZnFaSFNKWjVzOHBmUm4xM1h1?=
 =?utf-8?B?TUVaM2dOTXF2ME1IYVVBR3FCS0Q1NGgyY292TW1KY3lFQlFTQjNHUlBDV3VE?=
 =?utf-8?B?L09Wdnl1Zmo0cUtFR09ROEFrMWQ4QVl2KzZxelRydDk3YkhxMWdOOEdsSi9Y?=
 =?utf-8?B?KzZIaldmckE0NEJKV2FzbFo2MjFGbllHcCtQL0xnZlRSMnJsWU5FZ3lQdWVC?=
 =?utf-8?B?TTJxYmV5RVQxOFZaVnFiV0ZJendmblNRUTNMU09yU2t1TXg4clZNVTVzNnhh?=
 =?utf-8?B?NkNSaE9TeHJnRk9NQTQwZ1F3aUt1bUo5K2dvQXAwdnoza0crQ1dhNHpQV0dV?=
 =?utf-8?B?NEpVd0pZc3l3MUV4R05aNktiTlBzNTVlOUFMaGR6NVpyeXZneEJ1cG9ERzVM?=
 =?utf-8?B?V1hSeXo4YnRPLyt0Uk8rUEEzc1hEN25IZ3NHVlRwWFZ5VnpQZVp5U1FxMTJ1?=
 =?utf-8?B?TW1Ca2I5akZlb2xFMFJ5cHNIcGlSRmppYUhDekFLS2paek9hNFF4cXBJTE96?=
 =?utf-8?B?YjBFWUI4ZzRleEk1cTdhc0lzL2xDMWhGTFBpUWxQb1JiV1JiWklhbHJybjZ2?=
 =?utf-8?B?OTJKOXc1L00xYlZsR3U1NmJOaHFWZGUyV0VrdUl5RDdZYlhYN3ZUVVFoc1RU?=
 =?utf-8?B?S2VYNzlyN0VKZXpQNW53YzlwMnRGY3VPNnFhZjhBbW96c2t3eEdBaTFiajN1?=
 =?utf-8?B?ZWEzYy9nRXJZYXNwbmhJWG42Rk12RGFYd1cwU2hhVDZXbGZxZnc2Z3BNTEVP?=
 =?utf-8?B?K0ExUC8yaFIwRnhCZ0ZucE1IdDVlVFNjdFhjOEJlN3JrRDJGbnVreVlLWkJU?=
 =?utf-8?B?NUhVa1JsNWlxZ1NBSk0vdGhrOE5HeFR0QW5UMktJQXgvU1cwZzBvOGhQRzVI?=
 =?utf-8?B?cklxa3BrYlp0dkdiZU13SVRodFVlQWFCUVpFL3dtUGEvR3ZCS1QzbkhBTlFv?=
 =?utf-8?B?Z1BSdjJDMVptQzF5cGNjUnMxdlZQZzBxcGtJdWo5aHJEU1U4VW1EOHY4eGVo?=
 =?utf-8?B?Sml2SjZ1bEpLdFFRazZQMjJ2czg3YVJZSHR0QUtiL2Y4ZmY2RGVkUUMxQTF0?=
 =?utf-8?B?ZHl3NHZrWUh3dFU5NFh3bzJhTWRKWkdrUjFzcFc5cDlZc1ZraTRJcSsyeXJO?=
 =?utf-8?B?K2w1TzVvdkQ5U0N4L3ovYTloUkxMcWxCWXhqaXE1a3loVitlejBaOStXKzlZ?=
 =?utf-8?B?NWViaDZJV2FHUUxQZFRleHhQcU9OUURVdmg5aFBPdHlPNmFmWU1GVUxpV3lC?=
 =?utf-8?B?VW1JNGhBV2I3WDh6SkRrcmJGR2Y5RU4wM3RqZmlzOUVmQUM2T3cyQnJhaU5O?=
 =?utf-8?B?cXlJTUs3ek1uYjl2eU1PaWM5SFpZTHprSldUdFlCTE1YY2VZd21FY3diMlNH?=
 =?utf-8?B?em9iWEVHSnlXSEdkUVNoWVY2OXNKbWVMZWlJTXBITEZyYm9XYzNkb25FaFpP?=
 =?utf-8?B?cTNYRW9UU2tvSWo0MjdHeXkxc1o2d0lxakZWZ3dkWWd6NU00UG5HVXY4QTJJ?=
 =?utf-8?Q?dGNysK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXNIV2F6QklMT1NLZ0pPVVg3SGhZOXVGV0JSWW1UZjZwNzZjSlkvOTVYMkdm?=
 =?utf-8?B?MVNDM1FUaHQwSXMzOFArNGZNYldZNTMyVzZTSDc0N2s0bTUzTkc2V25rYlRp?=
 =?utf-8?B?bk5HdjlsWGlmMnl2WGFCVDlldk1kNDBoTTJXeTBaTndERENjcFl2RUVZSlVa?=
 =?utf-8?B?UmVJTjNGQ0J0UUxDWElYMFdJWHFVZEVoeURFck4xV1d2UFVRak9Wc3k0N2xq?=
 =?utf-8?B?MXBtbEFZdW5MWTZXU1E0WDVxaWt4c2g1MDd5c1p0OTFWSm5EZnVaSlRkQ0E5?=
 =?utf-8?B?RGsxNjgvbkI3VkF0YXl6WjhQTTNmQnJYUWNxMFRWb2pGWC9JYkxBVW1LOFZm?=
 =?utf-8?B?dGhERVUyeVRxMTlRbVluNXAxN0tzY0tyYzZHVGJ1Mkpkd0tDZHdPNXNFOEJ6?=
 =?utf-8?B?UzFoSlRVNkJFWU1MSS9JL2E2TzdFbnFyWUsrZ2dZaW5FamtQWTN4MGFGVTQz?=
 =?utf-8?B?aUt2eGUwbWx4N1h0NjZacE1MTjltaWM0c09ZT0dKb3dGdFZOalEyYkcreWYr?=
 =?utf-8?B?b3Z5azdiS2tFald5bldnRERtUVk2cFo5UHVIR08vTmJTVytwL05TUVNwSXh0?=
 =?utf-8?B?SHdZWlp4NEQzTlU3MjlHZG53ek45SURSMTVaSmdZNGpYT2srRjRISmZYYjdj?=
 =?utf-8?B?dE9NT0IyY2xJNHhNL2Z4d0xTa0NnQ3hPdEIycWlpZjJKRnBEd2JIYnVnYk5D?=
 =?utf-8?B?YmpRcWZVQWNHVzl2YU8vYkJJZS93OEJuYkxsZ0tpVjc2c2FUbWkybWtad3hX?=
 =?utf-8?B?d29zKzM1TXVzemRsSk5lRTBrMXZyY1E2VVlCaVpnUlljUlBkdjMyMWJFQXlJ?=
 =?utf-8?B?ZTVGbFVyVTc5bkwzNXhDQkxva2V0NjNaZUpMcGtTdTV1Qit0ZDEwM0o0ZUg5?=
 =?utf-8?B?clZQTEduMHJhZUQzVk9KQ25BbEZvNWlQeGtrYmN0SjRaa0dFcjhaQnFja2Uy?=
 =?utf-8?B?eVFYV3lSMytJSkk4MWd6NXMyRTJ5L2lLbnQwTGtPK3REdDV0NEt0UjBxWHNZ?=
 =?utf-8?B?VGw2WHUwZm4zZno3SHpFbFA5d3NjeTVtV3VvRElKc3pvbDR0ZjMrZE9xY0ph?=
 =?utf-8?B?WUE1SUVtdTRnajZ0OXI4bzBVa3kxcnVGNFp4ZnNObU1JWUxMTzlOd2FwWDZU?=
 =?utf-8?B?L3NNYVhBSXMzdkVsNFQ5RVZ4RU91bjJZUHF6RzIyQWdjbHdZNjlySUFBMlov?=
 =?utf-8?B?QUNnSzd6anh6UlBkUzA2UHRXVFltOTBZUnB6QmVrYVlpR09ZbFhDVE9SeVky?=
 =?utf-8?B?MDhkUVhlMzhzaHZKbjZkNGtNZzQ4TlUzdGpWUXd4c0wwK09IeXlxaVc5K3Jm?=
 =?utf-8?B?UWVNeENTTmFDM25tWWNQNVJsS0ZyRjR0NWc5di95Wlk2aTJmOVhXSkNxN1VD?=
 =?utf-8?B?b0EvaDIzZjBpamI5SFdsMTlrSDJzbGxjZ1RUYk9VR21Ka29HVVM4SjBGUm9l?=
 =?utf-8?B?eHNKd1lhUlJESkgvMnc2Sjc5UHg2aW9RcU9UUzdXNkVQcllLRzQyR0psanFH?=
 =?utf-8?B?ck5DMXVhTWlUR1A4bkd2WjllK2RScm9ZVHBCd3FxdTdjMmFkeEVxL0FCZnVt?=
 =?utf-8?B?SWZVQzZUY0pnRjkrMkNmN0NwZzJVeVA5b2MxMHdEWFZIUmJXeVVKbHFTZCtT?=
 =?utf-8?B?aWlRVDVnMmxPZ0JsY0tjcW1LSlVkNXNMaXpFY1JuZ1lxU2wyZTB0ZmVscysr?=
 =?utf-8?B?L2t0Z0wxRURZRGMxRVM3YWVkbjFxRUoyODhRdjJyRDJsRjdhYXlzeUNpaUxR?=
 =?utf-8?B?SkdXSG5idDh6NXlIQjhiSlJEaW9nUzVYOTVxRlJCOXpac2wyMlkzcWI5Z1l5?=
 =?utf-8?B?eE5YUjJHT3RtendjNmJZVmVGY1NFNnZuQitYejQ3SU9JY1FobHp3QmtoRFIw?=
 =?utf-8?B?NXB2emJqa2tPaTNoSElzRU4yVTRBK0FNSllwemcxTXRqaWZ6VXJ4bklyVS9B?=
 =?utf-8?B?aFZhNDF3VEY5NGVDTEs2OXFKMjFldGs2b2tIQ0QzZStKb2pKcmFGSXZlVXdm?=
 =?utf-8?B?YktPNU1TZGp1UE9lc2hJY2FvMk90b285U0VPdkgvS3BUTzJZeEkybXZQR3FF?=
 =?utf-8?B?Nk42THAxSjRMT1VnMTVMYjlFL0tGWnlHR3ZIWmJ4SGVGTTcxcUgwRFdFMzh1?=
 =?utf-8?B?MkE2d1R3Y0tpdHVjWEhTMVV2aVh0dnE2Zm1PRjZ1NlJhOHh4ekloelVWK2VV?=
 =?utf-8?B?R3ZZK3c5Si9jMjBrR0ZqcHcrKzlldkpvODhuWFJLcEEvK1F0cHIyMERTZGdU?=
 =?utf-8?B?MjBOazVNaGYzOVJMUURJdlBTa3BBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5BFB908F1420054EB7AB273EA3650F32@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07fad638-3bee-48c8-e6ed-08de37208550
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 12:43:14.8251 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZRGeYZZZpbJzSmvIlAnpkCTeiY6mz+Qd43lAxbLj/DqJGzJQnwKVWz0opDOzGPxgZNfPKGmezcmKvNmHkQuwZg4ylb5d+VjtQPypdLYr++k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7888
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCB0cmFja2luZyBmb3IgdGhlIERTSSBEU0MgcGlwZXMtcGVyLWxpbmUgYW5kIHNsaWNlcy1wZXIt
c3RyZWFtDQo+IHZhbHVlDQo+IGluIHRoZSBzbGljZSBjb25maWcgc3RhdGUgYW5kIGNvbXB1dGUg
dGhlIGN1cnJlbnQgc2xpY2VzLXBlci1saW5lDQo+IHZhbHVlDQo+IHVzaW5nIHRoaXMgc2xpY2Ug
Y29uZmlnIHN0YXRlLiBUaGUgc2xpY2VzLXBlci1saW5lIHZhbHVlIHVzZWQgYXRtDQo+IHdpbGwN
Cj4gYmUgcmVtb3ZlZCBieSBhIGZvbGxvdy11cCBjaGFuZ2UgYWZ0ZXIgY29udmVydGluZyBhbGwg
dGhlIHBsYWNlcw0KPiB1c2luZw0KPiBpdCB0byB1c2UgdGhlIGRldGFpbGVkIHNsaWNlIGNvbmZp
ZyBpbnN0ZWFkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMgfCAxMSArKysrKysrKy0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCBlNjlmYWM0ZjViZGZlLi40NzljNWYwMTU4ODAwIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAt
NDEsNiArNDEsNyBAQA0KPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3V0aWxzLmgiDQo+IMKg
I2luY2x1ZGUgImludGVsX2dtYnVzLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX3JvbS5oIg0KPiAr
I2luY2x1ZGUgImludGVsX3Zkc2MuaCINCj4gwqANCj4gwqAjZGVmaW5lIF9JTlRFTF9CSU9TX1BS
SVZBVEUNCj4gwqAjaW5jbHVkZSAiaW50ZWxfdmJ0X2RlZnMuaCINCj4gQEAgLTM1MTksMTIgKzM1
MjAsMTQgQEAgc3RhdGljIHZvaWQgZmlsbF9kc2Moc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
KmNydGNfc3RhdGUsDQo+IMKgCSAqDQo+IMKgCSAqIEZJWE1FOiBzcGxpdCBvbmx5IHdoZW4gbmVj
ZXNzYXJ5DQo+IMKgCSAqLw0KPiArCWNydGNfc3RhdGUtPmRzYy5zbGljZV9jb25maWcucGlwZXNf
cGVyX2xpbmUgPSAxOw0KPiArDQo+IMKgCWlmIChkc2MtPnNsaWNlc19wZXJfbGluZSAmIEJJVCgy
KSkgew0KPiDCoAkJY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvbmZpZy5zdHJlYW1zX3Blcl9waXBl
ID0gMjsNCj4gLQkJY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvdW50ID0gNDsNCj4gKwkJY3J0Y19z
dGF0ZS0+ZHNjLnNsaWNlX2NvbmZpZy5zbGljZXNfcGVyX3N0cmVhbSA9IDI7DQo+IMKgCX0gZWxz
ZSBpZiAoZHNjLT5zbGljZXNfcGVyX2xpbmUgJiBCSVQoMSkpIHsNCj4gwqAJCWNydGNfc3RhdGUt
PmRzYy5zbGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDI7DQo+IC0JCWNydGNfc3RhdGUt
PmRzYy5zbGljZV9jb3VudCA9IDI7DQo+ICsJCWNydGNfc3RhdGUtPmRzYy5zbGljZV9jb25maWcu
c2xpY2VzX3Blcl9zdHJlYW0gPSAxOw0KPiDCoAl9IGVsc2Ugew0KPiDCoAkJLyogRklYTUUgKi8N
Cj4gwqAJCWlmICghKGRzYy0+c2xpY2VzX3Blcl9saW5lICYgQklUKDApKSkNCj4gQEAgLTM1MzIs
OSArMzUzNSwxMSBAQCBzdGF0aWMgdm9pZCBmaWxsX2RzYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gwqAJCQkJwqDCoMKgICJWQlQ6IFVuc3VwcG9ydGVkIERTQyBz
bGljZQ0KPiBjb3VudCBmb3IgRFNJXG4iKTsNCj4gwqANCj4gwqAJCWNydGNfc3RhdGUtPmRzYy5z
bGljZV9jb25maWcuc3RyZWFtc19wZXJfcGlwZSA9IDE7DQo+IC0JCWNydGNfc3RhdGUtPmRzYy5z
bGljZV9jb3VudCA9IDE7DQo+ICsJCWNydGNfc3RhdGUtPmRzYy5zbGljZV9jb25maWcuc2xpY2Vz
X3Blcl9zdHJlYW0gPSAxOw0KPiDCoAl9DQo+IMKgDQo+ICsJY3J0Y19zdGF0ZS0+ZHNjLnNsaWNl
X2NvdW50ID0NCj4gaW50ZWxfZHNjX2xpbmVfc2xpY2VfY291bnQoJmNydGNfc3RhdGUtPmRzYy5z
bGljZV9jb25maWcpOw0KPiArDQo+IMKgCWlmIChjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2Rl
LmNydGNfaGRpc3BsYXkgJQ0KPiDCoAnCoMKgwqAgY3J0Y19zdGF0ZS0+ZHNjLnNsaWNlX2NvdW50
ICE9IDApDQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQoNCg==
