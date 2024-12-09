Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ABD9E9316
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 12:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE27010E2A4;
	Mon,  9 Dec 2024 11:59:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMwUJdrv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B28D10E2A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 11:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733745563; x=1765281563;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AH09BWt2PISpaZc6I8FNH+uC8+cpXXpr9cI4jOlYI0g=;
 b=gMwUJdrvDY+jIKhLChlsIBnZ3AEC/eJ3i4NKO7nsjMH5NJX3AZaPKl3K
 jtvGRD+nSbyDEhJ6raA6iZ7/h6yOTx4R9x9EVFU5S74TZzXlF7IdVz9HL
 67bSpUhzLTojljc3zElxqVPuSAHaFdBaa4ZXezuEFX+A4ABIlUjt4pCUd
 KOlybCacwgy6EXm2G4GJxtko+Z8t9gk5c8yG0XQJ9ZCzvM9ZJS6sIbPon
 F/CyQbDBBr+VPrNWrD3/0eUCFwjLDUqFw+vtexuJlxq3yWPKhxiqUFmI+
 8Se5Z8CmHtx4doDpHXyu3AYj3GB54fWSQ9OgM1cTC+0N7UuvydAraVTxW A==;
X-CSE-ConnectionGUID: k45sf6UxQVu4mEpZPUHPcg==
X-CSE-MsgGUID: VvkPaLadTYinqBG3mh9bCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="33376154"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="33376154"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 03:59:23 -0800
X-CSE-ConnectionGUID: D5qGr7pcT+OLJt9PSI+CSg==
X-CSE-MsgGUID: OwBUoeLnR+C4Tg5uQsOI2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="95398491"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 03:59:23 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 03:59:22 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 03:59:22 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 03:59:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lKYVt64g41A+qPIgQHCj3N0AArmexwlbU6xMwnT5AVjAQ9bthXw/iogFvdWjZRjP4sSFiODW+qpuDECQYH3cBH4oql+Ms+di5WhJF/aI9uA5BCyqDznqAGpwfC/FC9T0WWqMiPLRrbTyAaAgAXwJF8ucwT9G8SWzODe4eQaDmMzXlJvopOtCM1JdqSaDoViSOiHK5BcUfmBa4Lhdmv7xNs64LeUxrGpy+JesOETgyLeEcgzOkvT9qShYZwedaK77E1z4Tnk4V/GPfTyp5wH2l8sDOr99QVy+pUklQTcQLrUP1tMD1LER7eqjkqiSVRJ8DY3MgZcOAXfdDNdV4pZbXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AH09BWt2PISpaZc6I8FNH+uC8+cpXXpr9cI4jOlYI0g=;
 b=Sv2ZljLDAQc8044c+MtyaKw0QtEhkAvkaePGWmJp151NOC5aRhWmgbeyy34XD9rw/wiq0xBFnKZhZ0XzWiaqhPhJ3fgPhP1lETBW5sBKCW1Ifg5Ia9UK8fmgkL2XtnGvx1zJsl+i4acNVl1vu3Fd/xMsRAWscGadE0MRMKVQy2uY1tbz4Ps22ExVzgwyl+o711b9HMVBK1DLdC15lMePJosDX4mJpWjFbEUjNmyW/vBfUWehx1T3OYNxoIIl8al+o3QAGUMZ1glk08ck++ICm5XdQiAuKnfUMvPmms6I5BtUA9a4uH1lru6StQKW1BhEgaBhtJnFkpKo0EVQNBiQhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7837.namprd11.prod.outlook.com (2603:10b6:208:406::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8230.11; Mon, 9 Dec 2024 11:59:18 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8207.024; Mon, 9 Dec 2024
 11:59:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbRjaRKSlunFADfEeolfd13XUnBLLdnj0AgAAt2ICAAAP7AIAABaoAgAABYwA=
Date: Mon, 9 Dec 2024 11:59:17 +0000
Message-ID: <4bc12e74c14c5acc5fbea556ba4ad41f206ee54e.camel@intel.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
 <20241204100328.3738778-2-animesh.manna@intel.com>
 <59438896581fbd20a460c6243c1116bfec31e480.camel@intel.com>
 <BL1PR11MB5979ADA574A73E61AE34E2A2F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <891038f168e400cf6fdedea89be4264959242281.camel@intel.com>
 <BL1PR11MB5979323382ECE7A6F3E39E41F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB5979323382ECE7A6F3E39E41F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7837:EE_
x-ms-office365-filtering-correlation-id: 10543e84-9189-4ac3-e20a-08dd1848e8d1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MGk5T283ekM1ODZQWGhqUmJlelIxSUJ1UlhpNVdCTjJzSWtwdlFSYkd1Q05l?=
 =?utf-8?B?L2kyWkFERVVLRFdhZVFWNTZjWm5VM3A2dWhDUTJON3grVHpDMmV4OTlwM2Z6?=
 =?utf-8?B?L3pWREZlVVVvc1IxSkt0Q0Q5SHgxMnVDc290T1E0VlFZMEhQdVRLd1ZvWnBl?=
 =?utf-8?B?NWc2SThpd3pPZWFWVjVNQzhyWVVWNUhVOE9pWEtYRnAvOGhyUkVTbzdhdUhE?=
 =?utf-8?B?YzJ2L2UwTHZCVUNralRZUHJmOGk4UlFLemRqOFVKeTRzVlY4bWlIOGcxaDBM?=
 =?utf-8?B?UzhIVmtnNGxRYVlzSnFhUkJRS0JQQ3htOTI1b2hTamJsVzMvdTVGc2dqS1BR?=
 =?utf-8?B?MGhtTm52K1FtejJha1ZZb0ZGNThvb3VPRDh2ZHdiVVlsWkZpVFFMOEF0WGF5?=
 =?utf-8?B?cE1pRGNIQTNNUVR4YXdtMm5aRWVwTjExcWpjd0lrR2VrV3JCSTczcEtGbTB2?=
 =?utf-8?B?cmZGUVZGSDB5UEM4Y2I5cWNLWmlYaWlDQlhRblFXZUV2NzZ2ajhVRDYyMXJO?=
 =?utf-8?B?RW1CVkFwbHVZY1g2ZzhBK3BtbW9OME5zU1dmbUNxc0NESWV5ZDUzNDd0U3Ux?=
 =?utf-8?B?K0NnSDdkRTFZdFdnRzdPRTN6Tnk5WnBvWUxQL0ZyaVJNU2kyeVdST0tRcFNa?=
 =?utf-8?B?YS95YXVIajlGVXhxVGUxVWtGcDVHS1ZQczdYb001czI0dHlLa2paMmhtOGEz?=
 =?utf-8?B?Mm1kSzlWWTV6YW41S2IybkFzQy9ZM2ZsVGRlU0o0aWJjSU1ycld1dDlGWUU0?=
 =?utf-8?B?TW9TNHVQc3RXYVZHdHhqTHRycDFoZmRlME9DNHgyb0RXVEIwR3ZEaTZraldp?=
 =?utf-8?B?NVNUNmR1SUxPdHNHNzZ6cWIwbXZ4cGUwSWI1ZHErbUxETzhMaWpYMVNXYWU4?=
 =?utf-8?B?aGRSbWdHNWh5SWcwWGVGYzdQcCtpODluTUJaOTA4b0ZZM2xhTjlFbitlMTZ3?=
 =?utf-8?B?WEFMU3JRVG4zdDA0YzVKVDlwZ1ZQd2dIT0hoaG9nT2l3R01ObGJPOGQyUUxE?=
 =?utf-8?B?QXJIRUJhWG4wckVsc0ZwaHB2MDJ2NXAvUm5GVXFCQU1LQjJ0anJKWjNsQzNk?=
 =?utf-8?B?NnJKd1JQTlMyVU5XM3Zpci9CY2FJNUcvcVF6S3hoOUxLZ2dlYWdUTWV2ajFG?=
 =?utf-8?B?L1hSQUxlNURmZWJpK1RwRmxONmk0eFloUE54TDRlTEh5NW5nZTZBcDQ1eDRx?=
 =?utf-8?B?VjN0QllxSkdURmlVVGVHM1VDK1V0b3NiUkIvbmlXdVBkRkVrVlFuNUR1bkNa?=
 =?utf-8?B?RVY1aXlkOG1vdWVOdEdLSHR4Q3V5N1gxMytIWk1BRE0rYlNqQWViT2VxQ2lW?=
 =?utf-8?B?cW1TOHpxN25ISXpJYjdzdHhETVZDcmJ2RWRFL2F1aGZGNWZuU2gxa2loVVM3?=
 =?utf-8?B?REV4Yy9HaE9uTnNuZVFUMlFGMFFlVENIY044KzFZemU1ajVoamU0L2dMN1RL?=
 =?utf-8?B?RmNLeXIzbzd0ZllhQU5sWjRrUUtPb21uUDhrbmxLRjBJa1FQSFBYOXp2MzUr?=
 =?utf-8?B?U2U0SDIwdnpxcG05MWxDbHJvTnZ6dEtlN3BIWjR1TVZjRXA4bDdCVDFINkMx?=
 =?utf-8?B?Z1RLa0JwM25BTXAzWFhTM1luYkp5UHJNM0s5NnVKWlh3ZHRLNzFkaGNwMTZh?=
 =?utf-8?B?TjdoRURxODNYcFVJMjVZZjVsSjBua0ZtU1V3eDg2QUcraDI3eEhlMllJVjMr?=
 =?utf-8?B?ZUY2NTkrYWJDTVdkc3VHLys3ZTZ2V3hxeWRiN0x1amliaVY1c1JPL1Z0aWtv?=
 =?utf-8?B?a1A4eEZGQUoxNTRNaXAyQ2FCNUFzdEZOM1pjekxBWDArMEZXK1BoQmg5Q2VL?=
 =?utf-8?B?blh2MDEwemR3c1ZKT0dRRG9GRFBodFJOOVFocENUSThsaUNuSUdmcE5EMitj?=
 =?utf-8?B?aFVYYXMwbzNxZ091STVQcWhLWGV0eU9TVmVFcDlqYStnWEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YytJekhPOGJNbzhoMmdpTXR2QzFUN3BJL3Z6M3BWOGo1ZDVCVUZsdWpiSThR?=
 =?utf-8?B?RmQ0cDhxRjlZOGJaTDdDYWxxWXVNRk1DaVh1L1JsRjJXVW9heks3bkx4ZkxR?=
 =?utf-8?B?c1FDc01HM3ozc0JvVi9mVVI2VVRUVHhycENMb2NtQWRmb0ZYa0t2ZVIyUlNT?=
 =?utf-8?B?eTlUNW1NWDA4THcrNVVMYThrQ2UvM3U4eXhpejNnejF2bXd1bW9NKzFRMmk5?=
 =?utf-8?B?RGp1Sk9Ea0g5R2hnODVMaDhheHlHd1hGaXNoeXMvajdod2Z6L1JNSG9iNkxK?=
 =?utf-8?B?VW0zZFRTbDd2MC9sY1pKSUxSV1hxSkZiVDdwem13SHFKTWdpZzJaQUd4TzZC?=
 =?utf-8?B?N1Z3MFJMdndKbVQvMExCUUJMbHpUTmNMN0NMK21pQ0V3d0NRblpRb1Z6NTZE?=
 =?utf-8?B?bW5GQldaOWZLaDMzQzFmc1hTcXFiR0pmVDJrb3pBT2o4Mk5WS3RCZmtVcDZu?=
 =?utf-8?B?UVlPMWVMcE5FbUJ1VStGSEJQaHpQMis4NFZha0NDOVQyaUQ5SWFxL2ViTGE0?=
 =?utf-8?B?RzNiVTRIUEhRcDBJRmFpNUJpazVtMXVWRVRLSFl4S1pIK3ptNkpwTDJOMSty?=
 =?utf-8?B?ZWt2a21FdlgzaWt3TGswVE5qUXNsUURaYWNvVWcyaU9JQ1BvNDhDSGF5SjIw?=
 =?utf-8?B?bEMvV0pDUlNYYVFIWUJKSU5OUloxMytXVnNRTk5hTGdRYndPOXhnL1BUbmtP?=
 =?utf-8?B?aXBLRTBTRTZ4TlB0VFZlSlhHZWRCbXlzSVo4K3UzY0RGVkZkcHVET29QZCtB?=
 =?utf-8?B?UjQ0emd3U0VQTU02akJQajZCZHltMmlpT2h0Q2JQYjNtTU9PTENSR0hsWlhL?=
 =?utf-8?B?SFFrRFhiN1ZJd2JZZ3FaVSt3eVI2N005cStCWkFQa1h0ekhPeFhlQ0kwamRx?=
 =?utf-8?B?WmxSY2t5K2xXZjE0VExIRXBUenBXU0pBYkhncGlCSXlYazVmTTI4SUdST1pQ?=
 =?utf-8?B?TVFSNzVZTDNqdGNUVTVTMndVL2czanRZUkhMWEd1aUowa1lXWUZYSFg0OEha?=
 =?utf-8?B?WDFuZ0ZXU29rVjhuMEtzL0ZpUlRmNkJ6UVhsbVN1RVNKMk5NMTl1NlBuSXQ5?=
 =?utf-8?B?bk9ibllJeUFCR0JHbWZSazFkVHZSR1QvTFlVZlpKTW5XekpxY1ladGpFcmQ3?=
 =?utf-8?B?ZGhjSFZuWjVBR0hFNi9ZbUxnY08yb1ozSWRwcXoxSitTL1RUSVBGNWRMREc2?=
 =?utf-8?B?dFhCS1FnM1ZUTXpoTUdoMzdGOTRwdXhhVitQRmRZVk44eVNyaHhoc3dvbzQ4?=
 =?utf-8?B?emN2MEVTV1NxVUVLeUppMG5EZklZaUFKeDZ4NGZseWtSQTRvMmtTYjNhajV1?=
 =?utf-8?B?S0VHSWZ2SFZyWGRsQXUwZzRqSC84R3NWRlJPVk9GM2ZxOXJiTXJIVDQ1aTh6?=
 =?utf-8?B?c2Z1c0o3dkMrVU5nSUN3Q1RQTEVETnBrdGl6aXJHNWo3eVNvekJXZHM4MURU?=
 =?utf-8?B?bzdXcUxmaWtoUHk1d1U4ODZ4SHJHOTc5L2dMZk9VT1RnL1F3bDdHSmgvcVVn?=
 =?utf-8?B?bjNIY3d2a29ZRHV2bzNKazgwWWNXVHRJZnZzVGZtcDdmN1cxdkt2QzVpTS9j?=
 =?utf-8?B?eFBPWGVGbjVQMWVYYkVWVnNwNnh5dzg1VlhYTWwwb1ZRQlFrdmZoRDBGbXgy?=
 =?utf-8?B?eXh5YzR4bHdvazVaM2ZjNUROUlA3Q2FGZFNTb1liU2hXZUU3WWZnck00cENJ?=
 =?utf-8?B?R0NLcWpNM1liaG1mcEc1bjhieHlibmhtUkZPc1RxQ0x0R0VpYk1aWUhqbGRO?=
 =?utf-8?B?QmZwVEhJMzRrNWExbEFPZGxScGp4aTg2dFZ6MU83Q21oQzlYQVFZNmNFYmd3?=
 =?utf-8?B?WXAxWkFoWldpZWxxYVhHVHg4cFB2TnFpaVJ6R1pRTk9FKzB2WHlOaHdJSmd0?=
 =?utf-8?B?TjBXSFJjandFdjk4TmJxK3J0WVFpdWlObElKak9ScGtWUjkzekNQUUJyYncz?=
 =?utf-8?B?THN5RFpxcDNDbHdvY0ZGQ1dmYXhncFh3REN0YmdnS0VLeDJtNnFKaDFPK2lj?=
 =?utf-8?B?KzhOQ2RPTzErME9jbkpHZ2NrdDJXdmZDUjVJZVRMN3VydWlrb2ZUODVEazhn?=
 =?utf-8?B?a3NJQ1AvbXhWVUxSK2dzVkFaaU55b2dFd3doUm1tbStURnFHRFFCVjRaK2g1?=
 =?utf-8?B?eDJhTDJHTEMwWWVCNFFLZWJJTjMxQU5GNWZ2S0YxUWR1Um96VUFiekVhTTdv?=
 =?utf-8?B?Wmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6C97B2918D3E754FA458EF2E14B4C1EA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10543e84-9189-4ac3-e20a-08dd1848e8d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 11:59:17.8863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 32FiDgoYkR4hMGWSy2DXdQha0aLYlf7V/VC+PEJHnhZpjDp16M2ZCCJQEvpGQtFhjeDl7e4XZrQFc6GshF3yqnbL9bcUTffBHbbM8QcBcCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7837
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

T24gTW9uLCAyMDI0LTEyLTA5IGF0IDExOjU0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogTW9uZGF5LCBE
ZWNlbWJlciA5LCAyMDI0IDU6MDQgUE0NCj4gPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPjsgaW50ZWwtDQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEIsIEplZXZhbg0K
PiA+IDxqZWV2YW4uYkBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzJd
IGRybS9pOTE1L2xvYmY6IEFkZCBsb2JmIGVuYWJsZW1lbnQgaW4NCj4gPiBwb3N0DQo+ID4gcGxh
bmUgdXBkYXRlDQo+ID4gDQo+ID4gT24gTW9uLCAyMDI0LTEyLTA5IGF0IDExOjE5ICswMDAwLCBN
YW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiA+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDksIDIwMjQg
MjowNiBQTQ0KPiA+ID4gPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPjsgaW50ZWwtDQo+ID4gPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4g
Q2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgQiwgSmVldmFuDQo+ID4g
PiA+IDxqZWV2YW4uYkBpbnRlbC5jb20+DQo+ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIg
MS8yXSBkcm0vaTkxNS9sb2JmOiBBZGQgbG9iZiBlbmFibGVtZW50DQo+ID4gPiA+IGluDQo+ID4g
PiA+IHBvc3QgcGxhbmUgdXBkYXRlDQo+ID4gPiA+IA0KPiA+ID4gPiBPbiBXZWQsIDIwMjQtMTIt
MDQgYXQgMTU6MzMgKzA1MzAsIEFuaW1lc2ggTWFubmEgd3JvdGU6DQo+ID4gPiA+ID4gRW5hYmxl
bWVudCBvZiBMT0JGIGlzIGFkZGVkIGluIHBvc3QgcGxhbmUgdXBkYXRlIHdoZW5ldmVyDQo+ID4g
PiA+ID4gaGFzX2xvYmYNCj4gPiA+ID4gPiBmbGFnIGlzIHNldC4gQXMgTE9CRiBjYW4gYmUgZW5h
YmxlZCBpbiBub24tcHNyIGNhc2UgYXMgd2VsbA0KPiA+ID4gPiA+IHNvDQo+ID4gPiA+ID4gYWRk
aW5nIGluIHBvc3QgcGxhbmUgdXBkYXRlLiBUaGVyZSBpcyBubyBjaGFuZ2Ugb2YNCj4gPiA+ID4g
PiBjb25maWd1cmluZw0KPiA+ID4gPiA+IGFscG0gd2l0aCBwc3IgcGF0aC4NCj4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiA+ID4gPiA+IHYyOiBVc2UgZW5jb2Rl
ci1tYXNrIHRvIGZpbmQgdGhlIGFzc29jaWF0ZWQgZW5jb2RlciBmcm9tDQo+ID4gPiA+ID4gY3J0
Yy0NCj4gPiA+ID4gPiBzdGF0ZS4NCj4gPiA+ID4gPiBbSmFuaV0NCj4gPiA+ID4gPiANCj4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jwqDCoMKgIHwgMjUNCj4gPiA+ID4gPiArKysrKysrKysrKysrKysrKysr
Kw0KPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmjC
oMKgwqAgfMKgIDQgKysrKw0KPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfMKgIDMgKysrDQo+ID4gPiA+ID4gwqAzIGZpbGVzIGNoYW5nZWQs
IDMyIGluc2VydGlvbnMoKykNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gPiA+ID4gaW5kZXggNTVm
M2FlMWU2OGM5Li43NTA2MzM0MmExMDAgMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ID4gPiA+IEBAIC0zNjcsNiAr
MzY3LDMxIEBAIHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0DQo+ID4gPiA+ID4gaW50
ZWxfZHANCj4gPiA+ID4gPiAqaW50ZWxfZHAsDQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGxu
bF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gPiA+ID4gwqB9DQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gK3ZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5lX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4gPiA+ID4gKnN0YXRlLA0KPiA+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSB7DQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gPiA+IHRvX2ludGVsX2Rp
c3BsYXkoc3RhdGUpOw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7
DQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7
DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghY3J0Y19zdGF0ZS0+
aGFzX2xvYmYpDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
bjsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50ZWxf
ZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwNCj4gPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiA+IHVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHA7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAoIWludGVsX2VuY29kZXJfaXNfZHAoZW5jb2RlcikpDQo+ID4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsNCj4gPiA+ID4g
PiArDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwID0g
ZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+
ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwNCj4gPiA+ID4gPiBjcnRjX3N0YXRlKTsNCj4g
PiA+ID4gDQo+ID4gPiA+IFRoaXMgaXMgcmVjb25maWd1cmluZyBsb2JmIGV2ZW4gaWYgaXQncyBh
bHJlYWR5IGNvbmZpZ3VyZWQ/IElzDQo+ID4gPiA+IHRoYXQNCj4gPiA+ID4gd2FudGVkPw0KPiA+
ID4gDQo+ID4gPiBoYXNfcHNyIGFuZCBoYXNfbG9iZiBhcmUgbXV0dWFsbHkgZXhjbHVzaXZlLCBz
byBhbHBtX2NvbmZpZ3VyZSgpDQo+ID4gPiB3aWxsDQo+ID4gPiBiZSBjYWxsZWQgb25jZS4NCj4g
PiANCj4gPiBoYXNfcHNyIGlzIHVucmVsYXRlZC4gQ29uc2lkZXIgZS5nLiBjYXNlIHdoZXJlIHhl
LmVuYWJsZV9wc3I9MCBpcw0KPiA+IGluDQo+ID4gYm9vdGNtZC4gaGFzX3BzciBpcyBhbHdheXMg
ZmFsc2UuIEFMUE1fQ1RMIGlzIHdyaXR0ZW4gd2l0aCBsb2JmDQo+ID4gZW5hYmxlZCBvbg0KPiA+
IGV2ZXJ5IGNvbW1pdCBpZiBoYXNfbG9iZiBpcyB0cnVlLg0KPiANCj4gQ3VycmVudGx5IFZSUiBm
aXhlZCByZWZyZXNoIG1vZGUgY2hlY2sgaXMgbm90IGFkZGVkIGluIHRoaXMgcGF0Y2gNCj4gc2Vy
aWVzIHdoaWNoIGNhbiB0YWtlIGNhcmUgb2YgcmVzZXR0aW5nIHRoZSBoYXNfbG9iZiBmbGFnIGFz
IHdlbGwsDQo+IHRoYW5rcyBmb3IgY2F0Y2hpbmcsIHdpbGwgYWRkIGluIG5leHQgdmVyc2lvbi4N
Cj4gSG9wZSB3aXRoIHRoZSBhYm92ZSBjaGFuZ2UgdGhlIGJlbG93IGNvbW1lbnRzIHdpbGwgYmUg
YWRkcmVzc2VkLg0KDQpQbGVhc2Ugbm90ZSB0aGF0IGl0IGlzIG5vdCBhYm91dCBqdXN0IHJlc2V0
dGluZyB0aGUgZmxhZy4gU29tZW9uZSBoYXMNCnRvIHJlc2V0IGxvYmYgZW5hYmxlIGJpdCBpbiBB
TFBNX0NUTCBhcyB3ZWxsLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFJlZ2Fy
ZHMsDQo+IEFuaW1lc2gNCj4gDQo+ID4gDQo+ID4gQW5vdGhlciB0aGluZyBoZXJlIGlzIHRoYXQg
bG9iZiBpcyBuZXZlciBkaXNhYmxlZCBhZnRlciBpdCBnZXRzDQo+ID4gZW5hYmxlZD8NCj4gPiAN
Cj4gPiBQbGVhc2UgYWxzbyByZXZpZXcgY2FzZXMgd2hlcmUgbG9iZiBuZWVkcyB0byBiZSBkaXNh
YmxlZC4gRS5nLg0KPiA+IHJlZnJlc2ggcmF0ZQ0KPiA+IGNoYW5nZS4gU2VlIGJzcGVjIDcxMDQx
Lg0KPiA+IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gDQo+ID4g
PiBSZWdhcmRzLA0KPiA+ID4gQW5pbWVzaA0KPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBCUiwN
Cj4gPiA+ID4gDQo+ID4gPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoH0NCj4gPiA+ID4gPiArfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiDCoHN0YXRpYyBpbnQg
aTkxNV9lZHBfbG9iZl9pbmZvX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkDQo+ID4gPiA+
ID4gKmRhdGEpDQo+ID4gPiA+ID4gwqB7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG0tPnByaXZhdGU7IGRpZmYNCj4gPiA+ID4g
PiAtLQ0KPiA+ID4gPiA+IGdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YWxwbS5oDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uaA0KPiA+ID4gPiA+IGluZGV4IDhjNDA5YjEwZGNlNi4uMmY4NjJiMDQ3NmE4IDEwMDY0NA0K
PiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5o
DQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmgNCj4gPiA+ID4gPiBAQCAtMTIsNiArMTIsOCBAQCBzdHJ1Y3QgaW50ZWxfZHA7DQo+ID4gPiA+
ID4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gPiA+ID4gPiDCoHN0cnVjdCBkcm1fY29u
bmVjdG9yX3N0YXRlOw0KPiA+ID4gPiA+IMKgc3RydWN0IGludGVsX2Nvbm5lY3RvcjsNCj4gPiA+
ID4gPiArc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4gPiA+ID4gPiArc3RydWN0IGludGVs
X2NydGM7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gwqB2b2lkIGludGVsX2FscG1faW5pdF9kcGNk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+ID4gPiA+IMKgYm9vbCBpbnRlbF9hbHBt
X2NvbXB1dGVfcGFyYW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIEBADQo+ID4gPiA+ID4g
LQ0KPiA+ID4gPiA+IDIxLDYNCj4gPiA+ID4gPiArMjMsOCBAQCB2b2lkIGludGVsX2FscG1fbG9i
Zl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gPiAqaW50ZWxfZHAsDQo+
ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QNCj4gPiA+ID4gPiBkcm1fY29ubmVjdG9yX3N0
YXRlDQo+ID4gPiA+ID4gKmNvbm5fc3RhdGUpOw0KPiA+ID4gPiA+IMKgdm9pZCBpbnRlbF9hbHBt
X2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+ID4gKmNydGNfc3RhdGUpOw0KPiA+ID4gPiA+ICt2b2lk
IGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0K
PiA+ID4gPiA+ICpzdGF0ZSwNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0Yyk7DQo+ID4gPiA+ID4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gPiA+ID4gKmNvbm5lY3Rvcik7DQo+ID4gPiA+ID4gwqBi
b29sIGludGVsX2FscG1fYXV4X3dha2Vfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4g
PiA+ICppbnRlbF9kcCk7DQo+ID4gPiA+ID4gwqBib29sIGludGVsX2FscG1fYXV4X2xlc3Nfd2Fr
ZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ID4gKmludGVsX2RwKTsgZGlmZiAt
LWdpdA0KPiA+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+ID4gPiA+ID4gaW5kZXggNDgwNWJmNjgyZDQzLi5mZmQ5NmIxODdlNWUgMTAwNjQ0
DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYw0KPiA+ID4gPiA+IEBAIC01NSw2ICs1NSw3IEBADQo+ID4gPiA+ID4gwqAjaW5j
bHVkZSAiaTl4eF9wbGFuZS5oIg0KPiA+ID4gPiA+IMKgI2luY2x1ZGUgImk5eHhfcGxhbmVfcmVn
cy5oIg0KPiA+ID4gPiA+IMKgI2luY2x1ZGUgImk5eHhfd20uaCINCj4gPiA+ID4gPiArI2luY2x1
ZGUgImludGVsX2FscG0uaCINCj4gPiA+ID4gPiDCoCNpbmNsdWRlICJpbnRlbF9hdG9taWMuaCIN
Cj4gPiA+ID4gPiDCoCNpbmNsdWRlICJpbnRlbF9hdG9taWNfcGxhbmUuaCINCj4gPiA+ID4gPiDC
oCNpbmNsdWRlICJpbnRlbF9hdWRpby5oIg0KPiA+ID4gPiA+IEBAIC0xMTkwLDYgKzExOTEsOCBA
QCBzdGF0aWMgdm9pZA0KPiA+ID4gPiA+IGludGVsX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0K
PiA+ID4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0
Yyk7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfYWxwbV9wb3N0
X3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9mcm9udGJ1ZmZlcl9mbGlwKGRldl9wcml2LCBuZXdfY3J0Y19zdGF0
ZS0NCj4gPiA+ID4gPiA+IGZiX2JpdHMpOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqBpZiAobmV3X2NydGNfc3RhdGUtPnVwZGF0ZV93bV9wb3N0ICYmIG5ld19jcnRjX3N0
YXRlLQ0KPiA+ID4gPiA+ID4gaHcuYWN0aXZlKQ0KPiA+ID4gDQo+IA0KDQo=
