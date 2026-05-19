Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wja8L8fwC2psRgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:10:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236015775C0
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A27C10E362;
	Tue, 19 May 2026 05:10:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k6KwvAqD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A8210E121;
 Tue, 19 May 2026 05:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779167427; x=1810703427;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZxXoAPJzx2jUnult/4Hqlet50KY/kCMz3kk8R33Y7AY=;
 b=k6KwvAqDw7LGedisk405YzxKzYcNHLRw8eXtMCLj0RqTJko0Eo8IDfod
 2gVXwLPSxe9WOqdbo1hb78IrNnGSilPMSMFW0cJpZZxGl4yAKgGxXhUz9
 nfU/pDfiEBFs0qx5Qz3ET6GK7aV8kRcw/+hSBxpSi8Uo9wwKjmG08jq8+
 +bWAy6toX2p9bBKAPca3nQBZpUVT4O7MIzj5mFxoaxLDEoXfmBCE9I2dQ
 6sFZrRDkU7E000d8HY7Ouey4+Y/dELxcViOgwYbOnf7a7JGplpxyDYzeW
 0+5Fk8Ad30ZP7L3Lfo1vA/me3vXHcDkgpAMHVjo3iO4Vp7cvVUMUQ9Xp2 A==;
X-CSE-ConnectionGUID: 2l6QwrwjRkexpbdDclCwnA==
X-CSE-MsgGUID: Pu9Yn3v5R6Wcy9SzfLvjDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="90341710"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="90341710"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:10:27 -0700
X-CSE-ConnectionGUID: jalfWUsMRry3So9EaAtuEg==
X-CSE-MsgGUID: buT4HrirRD2B6xuwvfJdQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="239525526"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:10:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:10:22 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 22:10:22 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.59) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 22:10:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jVnMwAAox/fNNV2YPqwrnddIO/UByjLtE208dnJrVbHici93D1HvLaBhjgLubMjfWtnnBbLDWYwsLrKtT5FjeUZZqDNr6OXy0wfol8qy/DcJGy3CFIX7UDHm6pEQKE4hZD11/5lCo8/03Z6mMTv+DlFctHcmBufq0ElvZ8n556HUdtIs42LuhXJh16e0CYenUQfmxKNU9JYeVnfdl+m78QqJFiNu2eqbr2EMjJ1Obae4HZZc93lP0sosdVKNZ0l4f5UOKIlrMQqWVJA5b68knznMEkw36EjXuiIx4o+WgFaGs1zVh8XwtmjBennkHhr1KwWR44c79OA9joAep2u9qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZxXoAPJzx2jUnult/4Hqlet50KY/kCMz3kk8R33Y7AY=;
 b=MZpOBqKxe1ZbZB6idDbk9fAr0MMxgQeKgebTIJ9WdSr9phJ99h5AsXYy3NLq5FsCfHu09sS5tyBREF+gkaQyH/pl6KLyLXysB3JBZB7t6AR+BU0KtVPJZKBSKVzoJho0+XbScZkx0UsSRoX7adViIdsWxKGmk1wiPh53M/4B7a0jeH27lyhkP5foQ9Lhku2zeQ34P/z+wA96nIGfTs4HbNkKj7p0GNFWOBmcouORgsGfBy+fcBBhi+tcB5z90E25Iq35zsey3EzTEfm+qAvSgfczKn9Jpfo/GezDiqs8dyw7c9+wH6XecQHuNia26Rml/PoHLLFgrK69kKhDHx7qbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV1PR11MB8851.namprd11.prod.outlook.com
 (2603:10b6:408:2b2::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Tue, 19 May
 2026 05:10:20 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 05:10:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 06/31] drm/i915/bios: structurize VS/PE-O metadata
Thread-Topic: [PATCH v3 06/31] drm/i915/bios: structurize VS/PE-O metadata
Thread-Index: AQHc3cFQ5kj3yChGpUuehtgl4lQbS7YU3+yA
Date: Tue, 19 May 2026 05:10:20 +0000
Message-ID: <DM3PPF208195D8D92FB9FAC5A53683516B3E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-7-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-7-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV1PR11MB8851:EE_
x-ms-office365-filtering-correlation-id: 9f0f3e41-11a8-4287-bdc3-08deb564ec73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|3023799003|38070700021|4143699003|11063799003|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: RTmBvETKBwff2xlW/ph+/yNXb7lYr7A02m9pfItADwyNF+iV+4UF7DdC2nTZLNY/Xdyjmi1T7jjc1ZdLhQoCdWaGeVQfCSHo3zm/YgdDHGucNR1nwuAGgtR+1Cgs7MSogEmUTonHHvgO81qPRhkWGDtueWI/EQIMgFKp/H3LtPOd25QSv+xYqJy6oAdjYJuj5HbPbGDGVvy4Y3K0PivEU8R9R/pU/AONHc7hB51tMiO4BWTLy2LIFp0lu/2GFki+K0OHv5pjEeOWNDA6aP6jRS41s30WaZDZ6logvoXAZbCuo238nniRIiW5arTpEMk8rrwN+Fsas01Dnf3TJuvRDl+GJEhv/giKsKO8oTgd5+Ti5w81mpeVAP6Iil1RvKE+mrJS0zcdOa5NQOObqDdy37PvwRXOfnjESDjQweQeTtSN1W2twMX6v35PlWpk0clgNMlsoo5mpYcQ0sAQwraiJ4aSJClymJojMaSWQwfLKiHGSfC79VK2MUM1DkpHy7sfawvK6PW5Ha730JsSiVb+FHzqW5Gt/8olSsk852ouhxg8DJaO+RkMFrPZXHTnaMhT+HxGzBxmmmPB3vfzNoF3vlH16qVejG03ernHo+fFzSokylE479cqnBXj6T6dMFRq9VenMCzi4X7kK22HmtCy0g09P8oFKc2E6e+osnWJgP0jQT7PhnRoIjJyaGRXvkL9DxtcuAg1WAJQY3kEURH3MS0Ba2XT34uDyBy4rVRrG/Ysp4QYlGqYFl53v191JrOZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(3023799003)(38070700021)(4143699003)(11063799003)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmJJNldUY01OU2pVL2x1UUpEV1RDeVYzOHNWMDFjSEs3UjJlc3RLdzZVUksy?=
 =?utf-8?B?eWtiRE9aVU1LYTFjNDdCcnA5RDVCNUp6ZDVLSUgxaTl6RkdEaFFmRnR3Zlhk?=
 =?utf-8?B?dnJjekVobzU4QWtJVlRhYjQycXA2dGE0NWlqRVo5YlRlYkx5Vjl4dm8vdXU5?=
 =?utf-8?B?cHBEUnNSZVVyK3B6V3ZxQWw3YmIyQlRFVnZYOC9LNTlMRVBUbjIyQ2Q1amlJ?=
 =?utf-8?B?MnY0SUlUWWtRdjVWMHVrYmdURDRDSG43bnhkQnlNbVRpbk81Q1JtZnlBcTRn?=
 =?utf-8?B?OXE1VXpxZzRzTE5xZkovdUVub0ZKMVdlV3RUZjRVR3grdUl1RFlCTzNGR1pz?=
 =?utf-8?B?N2FpbWJCcGlKak1lVEhiQjdmOXp5YXBWWjlydjl4aE5aeGYvbENhalpmeE14?=
 =?utf-8?B?Vm1DR296b3JaZWd1WVgwM1R2ZHd6Q01wNFVORmJrUVMxT29pK0I0UUdWc0ly?=
 =?utf-8?B?M2JNeFVJK0FBNHZsUFlKTjRWNDQ2dnQxS1RaYVBQYmJERXZ2dFZCbGV4WlZu?=
 =?utf-8?B?MW5qaDI3eGlKbjduOURzOFU5RERhQUtBM2RXVHJpQVFKeUkrUDcxdEVLTE9p?=
 =?utf-8?B?T04yL1RFSVlBRlQvWlpNc09XSGU4ZEZlOHZzcmFNU0xyMzZKT2J4cEF6NkRx?=
 =?utf-8?B?VGtSOTRoajBNUU1QZm1VNllmVVdpV1BraSs4Sm42cUdGZ1hlcldtTmw0WGdO?=
 =?utf-8?B?S2pwaXFmSXU5ZzFPblRQZkFyNTJINGwrN3VIK1FDczZhcGlsa3IwNy9zNjNL?=
 =?utf-8?B?RW1DRlRDY1l6eDByeU9FS2EwZS9keU54R1A1L0grVG9GSUcyWXphYSt1Nkdr?=
 =?utf-8?B?WkdrLzNQRHFKZzI4RW1aYURyWngyOWQ4bUxNVS9zOXh1ZVZWQjhPNS9nNHpF?=
 =?utf-8?B?bXEwMk83cEU3SmwxLzVzVytyMlZXUGZHTWdGbFZVd3lxcCt4R0ZlOFdvbDUr?=
 =?utf-8?B?ZmNaYWNNUHRiWW9WRjJ0eURpdmJXTjArT2IxR044NUxhSnNsWXlkNEVYUmFu?=
 =?utf-8?B?QkNYeEhVN1lGam1tb3p2QnYvS2RZbEoxeEd0Wk9FUUVVVXhQalMwanNaQ05O?=
 =?utf-8?B?dEEwR0VlM2VWZEZmV0hOaVRFTTJWMm9QYnE0YzRqVzE0a2YyWlZSZHR1Ri9G?=
 =?utf-8?B?S25oVUhwMUg0MzllOUxQSmNETndxaGIrcGJBVTVsdU93SUV0L2pLank3WlVH?=
 =?utf-8?B?NHhNRzFhb2lUcUxNMFFLSEhKNGpSa25CMVFGZkVlZGtXajNhaDh6UWxLelJM?=
 =?utf-8?B?ck96RHNHemFDS2k1bzQvYzJMb3RpZVFFRWdJMjRuY04zSXYyYTJqUDA4anNQ?=
 =?utf-8?B?bzhTWHpmamUzZnhNc1RueGNRckplSHdFR2hJczNMaUJ4WnYvNmx6YWd6TWxM?=
 =?utf-8?B?clpVMzBqWHhVK1RwdzlVbVREVGlPMWhyejMvRU1NZjRCZE1jZm9LbUpRNHo5?=
 =?utf-8?B?elE5MHRpVk9aM0xkbXdIQ3BGVUtOT0I3NUdscjNZL29tVnplT2VPeEdvZ3I3?=
 =?utf-8?B?WVFOSkJIQ1dIWXBsa0ZYRjZMcVdrNmJDM2pRWndkcGJMb0h0YlMveDVTeTZq?=
 =?utf-8?B?THlsaURONkJVeFphU2p3SjZxdW8vUzhyUHhwbGJ0WmdZZkltcWJqUW03dFFM?=
 =?utf-8?B?ODdkNE55UTZtOXl2Z0VQNDAwWlhjK2JkZmlRYjhDRFJ4M0FITkVLcmd1SUxr?=
 =?utf-8?B?Mjh0bzZxWkwzTkFoSWo4YU5TMVJ6em0zTlNXaStyTjlnSjJ4SUZNaFdVTktO?=
 =?utf-8?B?VURUeVc0d01YS0lsWlU0RDhsbWU1NE0rRXpMcFl6Tll5b2hxM3VnNEc3MkZV?=
 =?utf-8?B?dU5KMkN5OTdPK2VTTkVtRlZqQ2ZjY0N2WU8vRVpLSmJydXBVTHpZVFA0cm1X?=
 =?utf-8?B?WE5XUlN0My9VWGc3OWxpU01mSmVmMCtkV1dQM0FZb0NpbldJYWtleDk5WDkx?=
 =?utf-8?B?dGVjRzgyUGdMYXlFQkNFRkRmS1FIcmR5UkVLaWtPbDhRK1NNUitNQ3RNMWJv?=
 =?utf-8?B?Snc0TW1OK1hpdGd4Qkg5dTFxRG1nUk5oelNZNmZLR2dHWXRGV1E0b3dwc3NP?=
 =?utf-8?B?WnlFQXBLVWRwd3RHY3JRbWpxSnAyRGE0NFoxNVZHYnZ0cHltZHl5YzFzQktN?=
 =?utf-8?B?UmpVVEhrWWtzVlVuR0Q2MGJxd3l1WmJjVWpuc0cvb1gyOTBkUk04QnpxbWY5?=
 =?utf-8?B?WElVZURiVk9JNjNBQ0svRFBaeUxITHN4cEZJdmpwWWQvb0lKN3Y1TnJoUUla?=
 =?utf-8?B?UWN5THFqVjFIaEljSUpWbHk1cG1XTEQzaWh0ZUNiRTJBckEzRURDR0VzVDBt?=
 =?utf-8?B?UHVubGg1UGExVWRsUFQ4VXhtQXhMV3lVYzJpanl3MVIwZ2FCQmdodz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NVmSNm5xddu/3/ZaOx96GXYd1RwBtTyuJrRS5yvtdIhs/4zyWlc6KVTiWUF0/akSpR5sAHOI3+9JBPleKEj1RxTlGW5zKqqxH6E4NeeANFj7e+9xr3dToOcILgd5cbXdZ0pWtBcY9tNeJ4c2PFj1RZExrT6+kxvAvasCw/RAmJQQYPMlpyI4beJDOyjJjrNJLu1Kv9PW44q6fTQUGRTjTC9ThGmV7+3BI7EsDrQoHM7dBnqwjXag4CaQbizfPD6VbSQ94A/tsDvGLLBuPYQcGKBgc/oLR3HbR9a+jWdVpGdmg21TX59vBVg5Js0XKxGub3VcFCC3ftE/R1AkQSvsaQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f0f3e41-11a8-4287-bdc3-08deb564ec73
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 05:10:20.1503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UBfFarjjzs3/TXFS0wnvD0yp24ik+Ru2Qt+TN95V9/V37/7acWJjAq3uvxBw6w4EV7mxGyu54KXlOnehG19Tig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8851
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 236015775C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDYvMzFdIGRybS9pOTE1L2Jpb3M6IHN0cnVjdHVyaXplIFZT
L1BFLU8gbWV0YWRhdGENCj4gDQo+IFN0b3JlIGFsbCBWUy9QRS1PIHJlbGV2YW50IG1ldGFkYXRh
IGluc2lkZSBhbm9ueW1vdXMgc3RydWN0IGluDQo+IGludGVsX3ZidF9kYXRhLiBUaGlzIGluY2x1
ZGVzIG51bWJlciBvZiByb3dzLCBudW1iZXIgb2YgdGFibGVzIGFuZCBhbGxvY2F0ZWQNCj4gbWVt
b3J5IGZvciBidWZmZXJzJyBtYXRyaXguDQo+IA0KPiBOYW1lIHRoZSBmaWVsZCBhcyB2c3Blbzog
YW4gYWJvbWluYXRpb24gZnJvbSBWUy9QRS1PLCB3aGljaCBpbiB0dXJuIGNvdWxkIGJlDQo+IGV4
cGFuZGVkIHRvIFZTd2luZyAvIFByZS1FbXBoYXNpcyBPdmVycmlkZS4NCj4gDQoNClNxdWFzaCB3
aXRoIHByZXZpb3VzIHBhdGNoDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gU2lnbmVk
LW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMjAg
KysrKysrKysrLS0tLS0tLS0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfY29yZS5oIHwgIDggKysrKystLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0
aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCAwNjRlYjRmZGEzZjNhLi42YWM4ZGQxNmVhN2I4
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBA
QCAtMjIxMSw5ICsyMjExLDkgQEAgcGFyc2VfdnN3aW5nX3ByZWVtcGhfb3ZlcnJpZGUoc3RydWN0
DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IA0KPiAgCWRybV9kYmdfa21zKGRpc3BsYXkt
PmRybSwgIlZTL1BFLU8gcGFyc2luZyBub3QgeWV0IHN1cHBvcnRlZFxuIik7DQo+IA0KPiAtCWRp
c3BsYXktPnZidC5idWZzX210cnggPSBidWZzX210cng7DQo+IC0JZGlzcGxheS0+dmJ0Lm51bV90
YWJsZXMgPSBibG9jay0+bnVtX3RhYmxlczsNCj4gLQlkaXNwbGF5LT52YnQubnVtX3Jvd3MgPSBu
dW1fcm93czsNCj4gKwlkaXNwbGF5LT52YnQudnNwZW8uYnVmc19tdHJ4ID0gYnVmc19tdHJ4Ow0K
PiArCWRpc3BsYXktPnZidC52c3Blby5udW1fdGFibGVzID0gYmxvY2stPm51bV90YWJsZXM7DQo+
ICsJZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9yb3dzID0gbnVtX3Jvd3M7DQo+ICB9DQo+IA0KPiAg
c3RhdGljIHU4IHRyYW5zbGF0ZV9pYm9vc3Qoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXks
IHU4IHZhbCkgQEAgLTMwMTMsOQ0KPiArMzAxMyw5IEBAIGluaXRfdmJ0X2RlZmF1bHRzKHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCQkgICAgZGlzcGxheS0+dmJ0Lmx2ZHNfc3Nj
X2ZyZXEpOw0KPiANCj4gIAkvKiBWc3dpbmcgLyBQcmVlbXBoYXNpcyBPdmVycmlkZSAqLw0KPiAt
CWRpc3BsYXktPnZidC5idWZzX210cnggPSBOVUxMOw0KPiAtCWRpc3BsYXktPnZidC5udW1fdGFi
bGVzID0gMDsNCj4gLQlkaXNwbGF5LT52YnQubnVtX3Jvd3MgPSAwOw0KPiArCWRpc3BsYXktPnZi
dC52c3Blby5idWZzX210cnggPSBOVUxMOw0KPiArCWRpc3BsYXktPnZidC52c3Blby5udW1fdGFi
bGVzID0gMDsNCj4gKwlkaXNwbGF5LT52YnQudnNwZW8ubnVtX3Jvd3MgPSAwOw0KPiAgfQ0KPiAN
Cj4gIC8qIENvbW1vbiBkZWZhdWx0cyB3aGljaCBtYXkgYmUgb3ZlcnJpZGRlbiBieSBWQlQuICov
IEBAIC0zMzk4LDExDQo+ICszMzk4LDExIEBAIHZvaWQgaW50ZWxfYmlvc19kcml2ZXJfcmVtb3Zl
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCQlrZnJlZShlbnRyeSk7DQo+ICAJ
fQ0KPiANCj4gLQlpZiAoZGlzcGxheS0+dmJ0LmJ1ZnNfbXRyeCkgew0KPiAtCQlmb3IgKGludCBp
ZHggPSAwOyBpZHggPCBkaXNwbGF5LT52YnQubnVtX3RhYmxlczsgaWR4KyspDQo+IC0JCQlrZnJl
ZShkaXNwbGF5LT52YnQuYnVmc19tdHJ4W2lkeF0pOw0KPiArCWlmIChkaXNwbGF5LT52YnQudnNw
ZW8uYnVmc19tdHJ4KSB7DQo+ICsJCWZvciAoaW50IGlkeCA9IDA7IGlkeCA8IGRpc3BsYXktPnZi
dC52c3Blby5udW1fdGFibGVzOyBpZHgrKykNCj4gKwkJCWtmcmVlKGRpc3BsYXktPnZidC52c3Bl
by5idWZzX210cnhbaWR4XSk7DQo+IA0KPiAtCQlrZnJlZShkaXNwbGF5LT52YnQuYnVmc19tdHJ4
KTsNCj4gKwkJa2ZyZWUoZGlzcGxheS0+dmJ0LnZzcGVvLmJ1ZnNfbXRyeCk7DQo+ICAJfQ0KPiAg
fQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9jb3JlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfY29yZS5oDQo+IGluZGV4IGE5MTM5N2VjZmUwMTcuLjE5ZmZlNjJkNjQyYzYgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3Jl
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Nv
cmUuaA0KPiBAQCAtMjQyLDkgKzI0MiwxMSBAQCBzdHJ1Y3QgaW50ZWxfdmJ0X2RhdGEgew0KPiAg
CXN0cnVjdCBsaXN0X2hlYWQgZGlzcGxheV9kZXZpY2VzOw0KPiAgCXN0cnVjdCBsaXN0X2hlYWQg
YmRiX2Jsb2NrczsNCj4gDQo+IC0JdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSAqKmJ1
ZnNfbXRyeDsNCj4gLQlpbnQgbnVtX3RhYmxlczsNCj4gLQlpbnQgbnVtX3Jvd3M7DQo+ICsJc3Ry
dWN0IHsNCj4gKwkJdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSAqKmJ1ZnNfbXRyeDsN
Cj4gKwkJaW50IG51bV90YWJsZXM7DQo+ICsJCWludCBudW1fcm93czsNCj4gKwl9IHZzcGVvOw0K
PiANCj4gIAlzdHJ1Y3Qgc2R2b19kZXZpY2VfbWFwcGluZyB7DQo+ICAJCXU4IGluaXRpYWxpemVk
Ow0KPiAtLQ0KPiAyLjQ1LjINCg0K
