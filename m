Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008399EC8CD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 10:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC9110E600;
	Wed, 11 Dec 2024 09:20:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EAORtjIl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7093610E184;
 Wed, 11 Dec 2024 09:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733908808; x=1765444808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y0rWSfxrTiQmqaKrNrg2xOHaHBU+TB4lRxbZ/6fZr+c=;
 b=EAORtjIleLt5JMnjokWfgM8JbF+1f7F6T7tAijB9/7R84WOMsHYrpPbP
 MAk6itiZLkVu8doAvR/+sbKytzBieAL9m+bfid6rPuytBL/YQRaCHaTUu
 nxQxMdR3ECRyJ4y01fF4HqyCVEjKtFnVwf5jp3TDqB5L0opjgrrEH89YZ
 /2g1KWV8aV+HBnQjgZaPxcEvzD1HjWMuCOho2NsCxqsysNaK175jbbinB
 xh4HCreuzPLB62AksfA8eOcbFIDM1p5/XSiFpjEiFsd/eOTZzXIAASs2v
 GyEUuRauvjnkurE6IaY29n7uxYDvHlOSIapVF/ktyxOSDjftiO7JCt/Pt w==;
X-CSE-ConnectionGUID: FMqECaL2QdKDUV9AYZSwOA==
X-CSE-MsgGUID: fflti/oGSjWLzCyslB4tpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="44951450"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="44951450"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 01:20:08 -0800
X-CSE-ConnectionGUID: YAfNOTSvTfGIwTO9P/3KjQ==
X-CSE-MsgGUID: FCryEE+dSiWgAF9DWczL4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="96203949"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 01:20:08 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Dec 2024 01:20:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Dec 2024 01:20:07 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 01:20:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=epSB+49E/yavEwjXd8Gs9+r8Rq0QBHMTdX+8DAuTyqi9WGBAEzSOyfQpPioQTtgdbiJEee4I9vrTmT0XHirI6bQ2lDypHd86iBOKn4V8qrqEoQns8AcDR9iMaPLg7/bHzDwwUa+msIt2m1Xu3eJnhmKrBmKqxgLIzbitD7jd/rnZ3fFibwsETlvEyjbJD/NQgNcM9IyDwLl+8+7OEPObnvNII+D3B6MBDjKcKzNW4byYLhxq4pXbWBDXH8/tMM9pIJrdyZIjSEpbNnBu5t4PAm6w4dXgBBcE/mw7yBY9XDNI6eFmKs0dpLEA2LtOkK96731S/EaptP40n4baJxMhgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0rWSfxrTiQmqaKrNrg2xOHaHBU+TB4lRxbZ/6fZr+c=;
 b=TttvR4cTi70dtcODhVgtQrISGBPD+g1C5DXPbnmGQ5ARIY9gne0vZzxriMkKrIBz1EFQ1xaViDIUSgMiBPGCZaiN6FavVuKkbHGVWzb+52LTtvdX6Mfh4R9sqEL78AyJBgBSBRXaJ/arBWm2m3M8nC7iHgPjpPNuvKiX4sFyhkHfIbjOYcRjTfF9aBpJkx5ssD23TxLa1pYv8ueSz7S9/xgato8i4FfJKj3J1SJJmo0FuxiQOS7HoInQJNOcd+PYS23mw1ur1J8XjqLJpnI0z0imNUkCSX2p4UFREKCjR+4GjOoFQJ3PJVy+FQ8u9TKuNjEGw4zpVW/rNmHxIO+tLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by DM4PR11MB6552.namprd11.prod.outlook.com (2603:10b6:8:8f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8230.18; Wed, 11 Dec 2024 09:19:24 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8230.010; Wed, 11 Dec 2024
 09:19:24 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 3/6] drm/i915/display: Replace adjusted mode with pipe mode
Thread-Topic: [PATCH 3/6] drm/i915/display: Replace adjusted mode with pipe
 mode
Thread-Index: AQHbOw5Zy0+2vz7qTEGyZlkM+3loAbLDvKQAgB0jCbA=
Date: Wed, 11 Dec 2024 09:19:24 +0000
Message-ID: <IA1PR11MB646714479D3BD0D39D37736AE33E2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20241120053838.3794419-1-nemesa.garg@intel.com>
 <20241120053838.3794419-4-nemesa.garg@intel.com> <Z0DjMj3ASirtQUD9@intel.com>
In-Reply-To: <Z0DjMj3ASirtQUD9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|DM4PR11MB6552:EE_
x-ms-office365-filtering-correlation-id: 281eb46e-dc6f-49d8-313b-08dd19c4e745
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RHNpandFYzI0SEt5Z1QrSEhUT2N6cGlqeUM0QXJrOGtncXJ1ODFxM1czb1RB?=
 =?utf-8?B?QkN6ZnoydXZZNXUxWUZOMG5JSUVKOHRFaEdBMVhYVVRyb25kVVVwbmhja2Z5?=
 =?utf-8?B?M3B5eWJ5UjFFMkNlT0dsWExjREVkTmtlWEw3Ym9kYXRVNW9kREV5Y01nQVJv?=
 =?utf-8?B?c3hnS0wycjd1YnNWaDlORHpDRTh5UldFdFQwS0Y4OWxoY1M5anNmU3lBaWJY?=
 =?utf-8?B?R3JBRkhiK0ptYkw3TFpVeitQVkFIdVM5VDVPRjZaY1BJYVEvZHE2WGtwUG9y?=
 =?utf-8?B?dTEyeTE1NWtxT0tiNHFKbHdwdm9jZ2F1TkFiSFRnTy9HZld4bjh5cGNJd1dX?=
 =?utf-8?B?N0d4VmZ0NlpCMXpjMU9uYkJncTlwa1R4eXhEdHVCRnBaZmlsZkRwVFF3NjdL?=
 =?utf-8?B?dDFmU3R5cElRclR5eTdTdGZLbkY2VVNzcE1sb2pScjRIbS9QRm9XL0IzWitM?=
 =?utf-8?B?OXVNQnJiemN5UjZ4U21xbDBjMWlGaUcxdHRCOEJISjZUd09uT0tXNkRNVUhL?=
 =?utf-8?B?UlVOdGFkeG1VbU0zNFcwNU9UMXprVm9DQUxVQ3htQ3lPYnZQcmh0QzJkWHll?=
 =?utf-8?B?eUszUElnV2VVZmg3RjVOSDVQbDZMbS92VlE5dEM1cjUrRmpuQ3N6dE1ZTVhX?=
 =?utf-8?B?OTlEN095RzVObmtHVHljT2R3OGp5dXBHYWhIM3JkRERqTDZSRkZFTWR2MUhx?=
 =?utf-8?B?VkY2RWQ3Ynh1L0RJWHpUU3RyN2kwS1BDZnlEL0o4RnVXejdDaWlXdkZhU0Zp?=
 =?utf-8?B?SkliQWRoemVUTm5ueSt3Z2lwRWtuRGVlSzlPbENSYk9TMTJ5MVRDY0hsVnJF?=
 =?utf-8?B?UDB1cDFsTHJuWENyaEJMZGFDa3pZYWZyUlAvSEV1UmpRYWROVjh2VWRFNWk0?=
 =?utf-8?B?L2ZoMk1nV1ZjZjlTOHcxK09Cc3RGRnIzSG96QjR6NElzSnRHYUR0YnhpRG1a?=
 =?utf-8?B?azZuZy9RTGJDUlhlK2UvVlprS3JsY0RDay9wa2tGWklzVjAweXJ5dFdDWlgw?=
 =?utf-8?B?NHdQRGVrUGlGNUIrM2h2UG9MaS92MnQ5QXF0QUxNZ3dOQ29HQ2l1dmtBV0NR?=
 =?utf-8?B?OEc1eGZGZ1FCaEtTWUJ5MWJ0UlJVeFRhM3diMzNEUmxjdldhRnFSM0FIVUV0?=
 =?utf-8?B?WUY4MEphTDFQZ0NiNEU4ZkR6dzRvMUxKREh3OWUzWjBPNVIzbC9JN3VmcVQ2?=
 =?utf-8?B?eUEvcnBHNklwVUFIRW0yeTZXMmN0V0dGd0NKajgyYVVXQ3hLV2xYMGNqb09O?=
 =?utf-8?B?TjBKV3RNemVQenM3L3BlQW9xNjlGRm5GYVc2VldjdDBEOTk2cUdxTGQvSkM1?=
 =?utf-8?B?VGF0dTBnWkc4VTV5cjVSOHZpVVhCWWI5ZjhHRTA3cjdvdFd0SmZiemFZRktl?=
 =?utf-8?B?OG5FTS9taERoZ3JYSFdKb3lTRXo0MnRRdHZWa3hWRkhQellsTVJPck5obFpz?=
 =?utf-8?B?TVMzdG5kak1pYTBTcldzZHZLTjhhcmpNSno0TXIwbGx6YWFFdmVscjJWQWp5?=
 =?utf-8?B?Sk9VOGtCajNSQnNaZjFicnphdjFXTEFUekRsb2dSbmN5a3F0amdibC9oL0lT?=
 =?utf-8?B?K1pId0hzeXIwWFdMQ3FyQWxiMG9aRUlIR3pkaUxPd1lyZVNYbHcyZkNhakJK?=
 =?utf-8?B?U0hSa3JBQlZmc3FiTUFRZm1ZRlV1QmVKZmJxdExQaHVTbzJram9haWZxbStK?=
 =?utf-8?B?WS84MnRlTzFlQ2hFOStheWpzb29xZXBDeC94ZTcvaFJBQVZ4V1J2dHdGNmtF?=
 =?utf-8?B?bTFzZEMxUHVlK2RWU1JBUjNIekNZRkpzOFM2aVIzV01XcEFOWHRBczJnTm43?=
 =?utf-8?B?QTNsempSaUJhOHdwTStmZjNHVWZ6dXdaUVpSV2VOdHd4anV5TzQxWmtGNUEy?=
 =?utf-8?B?blJhbEUzUDNCQ3h5QnJSdlN4YjNab3NDUG9Za0YwN0w5TWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emlQdytGV3FMRm1vZWV5bm0weWREcFZHYWRlVWYxMkxFc3Z3RTNMYzVUaURw?=
 =?utf-8?B?cEZKVXVKcUZ2dkZleUw3L0dYSXpVRE1jSklEU3YvSEJCcG51WTBNelRHbVZo?=
 =?utf-8?B?dTFzVGF5ckw0RnBQanpxcWpDdThRRFdJb0JWcW5CcWhENDlzWVFOV3F3MlA3?=
 =?utf-8?B?eUNBR0RyWWQ4dWFWbmN2NFVXSTc3N1dleUcvSXFHZDNxWGU2NVc5UGR2ajQ2?=
 =?utf-8?B?M2ZLOGg2ZDYySVFWVzlYdHR2RTUzSnUraUcvb0kxYUVVNGVVZzV4K3BZQ3ZR?=
 =?utf-8?B?N2QveVBNZThta2hmeElycjZoRUhRVjV6eTZJM0tlVlYyNTFLSzJxSUpnTTd3?=
 =?utf-8?B?MFRxL25KdUN3bkdlbkpFWTVxY0xMUVhCZ1U4dkk3Tko5VnNMbmlDMllFTU8w?=
 =?utf-8?B?S01BMlRBMDBvOHY0U3NlV0lJRm9Ockp1RFpHZmFtMGM2TzZjamZ0NEhnRi8r?=
 =?utf-8?B?RFVXMGRKdjNQWlpYdVQrOUpqZzVaaVkySVJlK0Z5ZzVqZ0pLdEtvVTIvVisx?=
 =?utf-8?B?bnB4ZERpbWo3bHRHQVR5M09NOHFSem0xMmlONSs0c1pETnFINHZEVnRGeExE?=
 =?utf-8?B?NENGRnB0MmwzLzRoMGpHSjJqVlZscmRrcXRJZTVyRzZ0cHdGK1RvL3pQVDh3?=
 =?utf-8?B?S0dRRE1yb0JwTFpqTmpiVm94WXFIMXJtcG5hMFVpa25uWmpKWnh3amJEeVgy?=
 =?utf-8?B?MTNuc1JmSWxpMHZCMnRIZklJQ0pPT1FSZXE0cTA2Qk1XT1FOU0FaVElFZnFQ?=
 =?utf-8?B?cXFWVmJQVUJMMXBqcC9yazRJS0REbEI1d1JndGVEYTVZTE5uSEZTSUtEOEtn?=
 =?utf-8?B?Y3liUjdBcCt5SlJ5L2ljWWM4Q1ZCVTF4RTJjM2ZablhyTGR2YmNOcEhDZnJM?=
 =?utf-8?B?bDVkWkkzUFRCeDJNRnZIMjV3bjcxMlhKZFBHTXF4bVRySFJSQzE1ZGpMQjlo?=
 =?utf-8?B?VEZNbkdjMEVGTnljbnB5NmFWTjlBTFNleUhOc2xBekUyT1k1RkdaTnUzKzhx?=
 =?utf-8?B?cVUvcjZkTURGeDEzcGpWUmVyK2JSWUVtdWh6MUp3K1BOczlpcmtraUZsNHMr?=
 =?utf-8?B?Z0FmYXlEYlBGUHlvREdLSEVpV2tJRE1BQ3MrOWV3SU5GdzJHakpCb1hackdU?=
 =?utf-8?B?aUVlUGM0NlNHTDBOZDdaYUs1MWsrajNEVjlnWU55K3lkTmoxVHVNVVcxMnRi?=
 =?utf-8?B?dGdHc01TcmFPYXpWdDNtd2NNRi9SaUdGek9xYUlRTUthS2p4ZXl4V21tWjZR?=
 =?utf-8?B?WTNPMEZ3Vy8zOHptNDN3TDFuSWphMU4xdlNjbjlTdzIwWGNTbG42T0pqRVBv?=
 =?utf-8?B?Y1JmY1JsY0hQVHdjSCs0OWRYVXhKMlE3cEZhejBHanpqVjVId0dUZHZ6SHhj?=
 =?utf-8?B?WG5tSkQ4NTUrY0ljeUxEZDJXZFZxY3VnUkNBZWF4SHptWlFwWGRsTFd5NXkz?=
 =?utf-8?B?MFc0VmxUTzJ3VjFYOXZFdzdxSTdpT3dyMXp2VGVLTE1sZWdnUE5PcnJGMHhI?=
 =?utf-8?B?VDhJZ0p2NWZWTVR1WWU0TDlrK1JLeGJUV2NacEpDTnJ6amJLMkRvNjJqOGxD?=
 =?utf-8?B?Tmg1am0wdkpZak13Rzl3K0cybGVNNk9SSkd6b3ZpUTJpa3VWTUNxLzRMNkEv?=
 =?utf-8?B?TTFjWjE2dHhTK2RETHg2aVpSQTdRRXY2UlkxUnB1Y2ZsMDl3Y1hka00wNzN3?=
 =?utf-8?B?cGJlb2trbnlwWXZJcTRrL085SVd2cE16VU9JeEtoZ2VNL21aeUhqMUc1ck1r?=
 =?utf-8?B?R0FyZGhNdG5wUXRyVHNrTnVwWHFhakZTZzB6ZXg5YW85OG1nZk1FUnozUWl6?=
 =?utf-8?B?Nm9KTlg4WGNnL0lGWnhhMGdYQ2dRa2h2d05CSmp6VmdwWGlqTXM1MjhKRUVF?=
 =?utf-8?B?S1BxdGxsYjR1VGVPTDA2OFpwaXBERndQOElJOWQ1RmVXUEg4OGxVbFA0aStm?=
 =?utf-8?B?SFpGeEFlZDNwTzNkakZDM0RqSzN6Q29HNjZRR3FDUWV6U3V4U2pzVmF0S0ds?=
 =?utf-8?B?cjdQYVRIbU9Kd3UxZllmd1A1Yi9JQllmbmpEb0lSOGVZbUJWTUJCRHVuMkl5?=
 =?utf-8?B?QTVCdmhQZzJDRTFsWWU5ZFdxT1dlOEFSYnMxSzBvSE10QUpkc3hqRXljVG5k?=
 =?utf-8?B?MTI0WEVzK1p6aXdOMTRNRUhqMGp6bW9SaldSNWRZcFVQekFFd0RkeUJXdVdi?=
 =?utf-8?Q?gFxXjaqKcH5gKoJiClDhslNiOLvVxYPZVna1lyWSMQOL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 281eb46e-dc6f-49d8-313b-08dd19c4e745
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2024 09:19:24.0208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M9iKhStETB2QD/8Y1sjBBcmMOdXgN8uzotSkLXf55PsQqqoKE67LZwyvjXvzOS4cTflYlBB9WBqDVsyrNlIWcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6552
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogU2F0dXJkYXksIE5vdmVt
YmVyIDIzLCAyMDI0IDE6MzIgQU0NCj4gVG86IEdhcmcsIE5lbWVzYSA8bmVtZXNhLmdhcmdAaW50
ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMy82XSBkcm0vaTkx
NS9kaXNwbGF5OiBSZXBsYWNlIGFkanVzdGVkIG1vZGUgd2l0aCBwaXBlDQo+IG1vZGUNCj4gDQo+
IE9uIFdlZCwgTm92IDIwLCAyMDI0IGF0IDExOjA4OjM1QU0gKzA1MzAsIE5lbWVzYSBHYXJnIHdy
b3RlOg0KPiA+IFJlcGxhY2UgYWRqdXN0ZWRfbW9kZSB3aXRoIHBpcGVfbW9kZSBpbiBwY2hfcGFu
ZWxfZml0dGluZyBzbyBhcyB0bw0KPiA+IHRoYXQgZmluYWwgcGlwZSBzcmMgd2lkdGggYW5kIGhl
aWdodCBpcyB1c2VkIGFmdGVyIGpvaW5lciBjYWxjdWxhdGlvbi4NCj4gPiBEZS1jb3VwbGUgdGhl
IGN1cnJlbnQgaW50ZWxfcGFuZWxfZml0dGluZyBmdW5jdGlvbiwgb25lIHByZS1pbGsgYW5kDQo+
ID4gb25lIHBvc3QtaWxrLCBhcyBwb3N0LWlsayBwY2hfcGFuZWxfZml0dGluZyBpcyBjYWxsZWQg
ZnJvbQ0KPiA+IHBpcGVfY29uZmlnLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTmVtZXNhIEdh
cmcgPG5lbWVzYS5nYXJnQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAgNyArKysNCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wZml0LmMgICAgfCA1OSArKysrKysrKysrKysrLS0tLS0t
LQ0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygt
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+IGluZGV4IDlkYjI1NWJiMTIzMC4uNmFkNDdjZjBkNDE5IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBA
QCAtNDg2NSw2ICs0ODY1LDEzIEBAIGNvcHlfam9pbmVyX2NydGNfc3RhdGVfbW9kZXNldChzdHJ1
Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCQlkcm1fZHBfdHVubmVsX3Jl
Zl9nZXQocHJpbWFyeV9jcnRjX3N0YXRlLQ0KPiA+ZHBfdHVubmVsX3JlZi50dW5uZWwsDQo+ID4g
IAkJCQkgICAgICAmc2Vjb25kYXJ5X2NydGNfc3RhdGUtPmRwX3R1bm5lbF9yZWYpOw0KPiA+DQo+
ID4gKwlpZiAoc2Vjb25kYXJ5X2NydGNfc3RhdGUtPnBjaF9wZml0LmVuYWJsZWQpIHsNCj4gPiAr
CQlzdHJ1Y3QgZHJtX3JlY3QgKmRzdCA9ICZzZWNvbmRhcnlfY3J0Y19zdGF0ZS0+cGNoX3BmaXQu
ZHN0Ow0KPiA+ICsJCWludCB5ID0gZHN0LT55MTsNCj4gPiArDQo+ID4gKwkJZHJtX3JlY3RfdHJh
bnNsYXRlX3RvKGRzdCwgMCwgeSk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICAJY29weV9qb2luZXJf
Y3J0Y19zdGF0ZV9ub21vZGVzZXQoc3RhdGUsIHNlY29uZGFyeV9jcnRjKTsNCj4gPg0KPiA+ICAJ
c2Vjb25kYXJ5X2NydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkID0NCj4gPiBwcmltYXJ5X2Ny
dGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BmaXQuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wZml0LmMNCj4gPiBpbmRleCBmYjYzODdiNTM3YjcuLmIyNjE5ZTFj
NDAyMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3BmaXQuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGZp
dC5jDQo+ID4gQEAgLTE4MSwxOCArMTgxLDE5IEBAIHN0YXRpYyBpbnQgcGNoX3BhbmVsX2ZpdHRp
bmcoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUsDQo+ID4gIAkJCSAgICAg
Y29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpICB7DQo+ID4gIAlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0
ZSk7DQo+ID4gLQljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9
DQo+ID4gLQkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+ID4gKwljb25zdCBzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGlwZV9tb2RlID0NCj4gPiArCQkmY3J0Y19zdGF0ZS0+aHcu
cGlwZV9tb2RlOw0KPiA+ICAJaW50IHBpcGVfc3JjX3cgPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19z
dGF0ZS0+cGlwZV9zcmMpOw0KPiA+ICAJaW50IHBpcGVfc3JjX2ggPSBkcm1fcmVjdF9oZWlnaHQo
JmNydGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gPiAtCWludCByZXQsIHgsIHksIHdpZHRoLCBoZWln
aHQ7DQo+ID4gKwlpbnQgbnVtX3BpcGVzID0gaW50ZWxfY3J0Y19udW1fam9pbmVkX3BpcGVzKGNy
dGNfc3RhdGUpOw0KPiA+ICsJaW50IHJldCwgeCwgeSwgd2lkdGgsIGhlaWdodCwgaGRpc3BsYXlf
ZnVsbCwgc3JjX3dfZnVsbDsNCj4gPg0KPiA+ICAJaWYgKGNydGNfc3RhdGUtPmpvaW5lcl9waXBl
cykNCj4gPiAgCQlyZXR1cm4gMDsNCj4gPg0KPiA+ICAJLyogTmF0aXZlIG1vZGVzIGRvbid0IG5l
ZWQgZml0dGluZyAqLw0KPiA+IC0JaWYgKGFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXkgPT0g
cGlwZV9zcmNfdyAmJg0KPiA+IC0JICAgIGFkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXkgPT0g
cGlwZV9zcmNfaCAmJg0KPiA+ICsJaWYgKHBpcGVfbW9kZS0+Y3J0Y19oZGlzcGxheSA9PSBwaXBl
X3NyY193ICYmDQo+ID4gKwkgICAgcGlwZV9tb2RlLT5jcnRjX3ZkaXNwbGF5ID09IHBpcGVfc3Jj
X2ggJiYNCj4gPiAgCSAgICBjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ICE9IElOVEVMX09VVFBV
VF9GT1JNQVRfWUNCQ1I0MjApDQo+ID4gIAkJcmV0dXJuIDA7DQo+ID4NCj4gPiBAQCAtMjAwLDQ2
ICsyMDEsNjYgQEAgc3RhdGljIGludCBwY2hfcGFuZWxfZml0dGluZyhzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gPiAgCWNhc2UgRFJNX01PREVfU0NBTEVfQ0VOVEVS
Og0KPiA+ICAJCXdpZHRoID0gcGlwZV9zcmNfdzsNCj4gPiAgCQloZWlnaHQgPSBwaXBlX3NyY19o
Ow0KPiA+IC0JCXggPSAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oZGlzcGxheSAtIHdpZHRoICsgMSkv
MjsNCj4gPiAtCQl5ID0gKGFkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXkgLSBoZWlnaHQgKyAx
KS8yOw0KPiA+ICsJCXggPSAocGlwZV9tb2RlLT5jcnRjX2hkaXNwbGF5IC0gd2lkdGggKyAxKSAv
IDI7DQo+ID4gKwkJeSA9IChwaXBlX21vZGUtPmNydGNfdmRpc3BsYXkgLSBoZWlnaHQgKyAxKSAv
IDI7DQo+ID4gKwkJLyoNCj4gPiArCQkgKiBUaGUgeC1jb29yZGluYXRlIGZvciBQcmltYXJ5IHNo
b3VsZCBiZSBjYWxjdWxhdGVkIGluIHN1Y2ggYQ0KPiB3YXkNCj4gPiArCQkgKiB0aGF0IGl0IHJl
bWFpbnMgY29uc2lzdGVudCB3aGV0aGVyIHRoZSBwaXBlcyBhcmUgam9pbmVkIG9yDQo+IG5vdC4N
Cj4gPiArCQkgKiBUaGlzIG1lYW5zIHdlIG5lZWQgdG8gY29uc2lkZXIgdGhlIGZ1bGwgd2lkdGgg
b2YgdGhlDQo+IGRpc3BsYXkgZXZlbg0KPiA+ICsJCSAqIHdoZW4gdGhlIHBpcGVzIGFyZSBqb2lu
ZWQuIFRoZSB4LWNvb3JkaW5hdGUgZm9yDQo+IHNlY29uZGFyaWVzIGlzIDANCj4gPiArCQkgKiBi
ZWNhdXNlIGl0IHN0YXJ0cyBhdCB0aGUgbGVmdG1vc3QgcG9pbnQgb2YgaXRzIG93biBkaXNwbGF5
DQo+IGFyZWEsDQo+ID4gKwkJICogZW5zdXJpbmcgdGhhdCB0aGUgZnJhbWVidWZmZXIgaXMgY2Vu
dGVyZWQgd2l0aGluIFBpcGUgQuKAmXMNCj4gcG9ydGlvbg0KPiA+ICsJCSAqIG9mIHRoZSBvdmVy
YWxsIGRpc3BsYXkuDQo+ID4gKwkJICovDQo+ID4gKwkJaWYgKGludGVsX2NydGNfaXNfam9pbmVy
X3ByaW1hcnkoY3J0Y19zdGF0ZSkpIHsNCj4gPiArCQkJaGRpc3BsYXlfZnVsbCA9IHBpcGVfbW9k
ZS0+Y3J0Y19oZGlzcGxheSAqDQo+IG51bV9waXBlczsNCj4gPiArCQkJc3JjX3dfZnVsbCA9IHdp
ZHRoICogbnVtX3BpcGVzOw0KPiA+ICsJCQl4ID0gKGhkaXNwbGF5X2Z1bGwgLSBzcmNfd19mdWxs
ICsgMSkgLyAyOw0KPiA+ICsJCX0NCj4gDQo+IFVnaC4gVGhpcyBzdHVmZiBpcyBnZXR0aW5nIHF1
aXRlIG5hc3R5LiBJJ20gdGhpbmtpbmcgaXQnbGwgYmUgYSBsb3QgY2xlYW5lciBpZiB3ZSBpbg0K
PiBmYWN0IGRvbid0IG1vdmUgdGhlIHBjaF9wYW5lbF9maXR0aW5nKCkgY2FsbCBmcm9tIGl0cyBj
dXJyZW50IGxvY2F0aW9uLCBhbmQNCj4gaW5zdGVhZCBkbyBzb21ldGhpbmcgbGlrZSB0aGlzIGxh
dGVyOg0KPiANCj4gam9pbmVyX2FkanVzdF9wZml0X2RzdCgpDQo+IHsNCj4gCWFyZWEgPSBwaXBl
X2FyZWEoKTsNCj4gDQo+IAlpZiAoIXBpdC5lbmFibGUpDQo+IAkJcmV0dXJuOw0KPiANCj4gCXJl
Y3RfaW50ZXJzZWN0KHBmaXQuZHN0LCBhcmVhKTsNCj4gCXJlY3RfdHJhbnNsYXRlKHBmaXQuZHN0
LCAtYXJlYS54MSwgLWFyZWEueTEpOyB9DQo+IA0KPiB3aGVyZSBwaXBlX2FyZWEoKSAob3Igd2hh
dGV2ZXIgd2Ugd2FudCB0byBjYWxsIGl0KSBnaXZlcyB5b3UgcGVyLXBpcGUgb3V0cHV0DQo+IGFy
ZWEsIHJlbGF0aXZlIHRvIHRoZSBvcmlnaW5nIG9mIHRoZSBmdWxsIGpvaW5lZCBvdXRwdXQuIEl0
IHNob3VsZCBsb29rIHF1aXRlDQo+IHNpbWlsYXIgdG8gYSBjb21iaW5hdGlvbiBvZg0KPiBpbnRl
bF9qb2luZXJfYWRqdXN0X3BpcGVfc3JjKCkraW50ZWxfam9pbmVyX2FkanVzdF9waXBlX3NyYygp
DQo+IGV4Y2VwdCB1c2luZyBjcnRjX2hkaXNwbGF5L3ZkaXNwbGF5IGluc3RlYWQgb2YgcGlwZV9z
cmMuDQo+IA0KPiBJJ20gYWxzbyB3b25kZXJpbmcgd2hhdCB3b3VsZCBoYXBwZWQgaWYgd2UgdXNl
IG1vZGU9Q0VOVEVSIGJ1dCB0aGUgcGZpdA0KPiBkc3Qgd2luZG93IGRvZXNuJ3QgZXh0ZW5kIGlu
dG8gYWxsIG9mIHRoZSBqb2luZWQgcGlwZXM/IER1bm5vIGlmIHRoZXJlJ3MgYW55DQo+IHdheSB0
byBoYXZlIGEgemVybyBzaXplZCBwaXBlX3NyYyBmb3Igc29tZSBvZiB0aGUgcGlwZXMgb3Igbm90
LiBJZiBub3QgSQ0KPiBzdXBwb3NlIHdlJ2xsIGp1c3QgaGF2ZSB0byByZXR1cm4gYW4gZXJyb3Iu
Li4NCj4gDQpIaSBWaWxsZSwNCg0KVGhhbmsgeW91IGZvciBzdWdnZXN0aW9uLiBJIGdvdCB5b3Vy
IHBvaW50IGFzIGl0IG1ha2UgdGhlIGNvZGUgYSBsb3QgY2xlYW5lciBhbmQgc2ltcGxlLiBJIHdp
bGwgc2VuZCBhIG5ldyBwYXRjaCB3aXRoIGFib3ZlIGNoYW5nZXMuIEFsc28gd2l0aCB0aGlzIG5l
dyBjaGFuZ2Ugd2Ugd29udCBiZSByZXF1aXJpbmcgb3RoZXIgcGF0Y2hlcyBhcyB3ZSBhcmUgbm90
IG1vdmluZyBwY2hfcGFuZWxfZml0dGluZy4gIE9ubHkgdGhlIG5ldyBwYXRjaCBhbmQgY2xlYW51
cCBwYXRjaCB3aWxsIGJlIHN1ZmZpY2llbnQuIA0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpOZW1l
c2ENCg0KPiAtLQ0KPiBWaWxsZSBTeXJqw6Rsw6QNCj4gSW50ZWwNCg==
