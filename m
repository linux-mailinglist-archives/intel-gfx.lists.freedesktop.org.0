Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N1IKDpBqS2o0RAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:42:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B68770E3AE
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:42:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jh+HOvMF;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F63810E822;
	Mon,  6 Jul 2026 08:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB33110E822;
 Mon,  6 Jul 2026 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783327374; x=1814863374;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Lq/oxvnfhGu2veWYpHofxEgHb5Oi53sMu0lHim9BOXc=;
 b=jh+HOvMFZVYba3Ipsc9MmTefobNJOWjJy33/hi2JX5doWt49bUip5Wlu
 z40jcEmayk2bOMS6fZUHLfEbiYHVzmVFKEi4FVMrkDFoNIqqwzYGie5Br
 RLZTTbn5wYV9PQpexrKKojENRdZskwmZtR2oyUF9Oi+6W0H+RE60GlKZj
 3Dm0/ha6mrmtYhxiZLl9i+kxfJOKCLfTnpPGj5VQ9r11QJKVBjusZT8vs
 eWKY+JqrUUSLxOpVnPQp4egE4WVhjlNIhip9mhw0raEx0zPOPPLbil7Yb
 ffqoHOm0psJyfa2IFtKoqRxCfNgREuhNhW+Ym/cRDFGc8pOstQRF/bW3/ Q==;
X-CSE-ConnectionGUID: NfBuWhEBRnadE8kJzqMDzQ==
X-CSE-MsgGUID: Fhz7eJOkQBmcf9howEIyRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83935060"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83935060"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:42:53 -0700
X-CSE-ConnectionGUID: ZgbiNlzrROq3CF9qBzelcg==
X-CSE-MsgGUID: DrkOXeYeSyueOyheE9acYw==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:42:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:42:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:42:52 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:42:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=esP3boFnYiIYTIztAaldzAd90yxecZCMv8SSgOm1hhOkaEkB6JTYYdhePWg02v1FAmhKrpXVWqZcy5yqSjTnrFCFipKM9DR2hs5Vl84ZSiVTmCrjxdykxBVtY1fItWdfz1HA3rHpE89IwzRT16ho+pPahdukqOxoDDrAojG+Kf73oszcIjJc7BfY4TwvMmFu8xEA9XZJXVzrD3D6LUmDVnynPjq288dUcwm8zjigoGmcnH2Y4r5P+Kv4u8CgPoD5xGpOSED9aE3XMO3JoEPLgvjvxetyjEB3z2hC6+9Y/PrQDJEbkoMNxAu+GGKLrxbK8K4nIblN4PuhylhuW103bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lq/oxvnfhGu2veWYpHofxEgHb5Oi53sMu0lHim9BOXc=;
 b=Akjp05NsMOxw0K0VAwQbklvcfz20Pv14YUAxhLxXKC9S67lopqmnGgJq8OdoRKbkLORFatpGi1RpggkDIM/mLiuC92f/zIZcauUDKKhZ+812H8yrkZKXAqzL0mfZSjqJxmPxf+uri2Smr+b48s9/DEroqJKb1W+7iaLVwa/5pJwrh/7W6tjLTVDnpyEEoFgyR9gz/waWclFcZjra/wjcM3QtAOcu+gUcYYUpeBYO7Ax14pgx2slFT71R6iAsCdz/c+pjsCADdHbIrhEUYicNq8eEi0jGvu5tmb/4B+SbL+FSLA5qjS/B3xqdUpN/0duMv3YLW31zLydJcqkZut3DIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Mon, 6 Jul
 2026 08:42:42 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 08:42:42 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/6] drm/i915/cursor: Program secondary cursor planes
Thread-Topic: [PATCH 5/6] drm/i915/cursor: Program secondary cursor planes
Thread-Index: AQHc9xBf2os/BYnRm0GmfCLiXU7FobZZAEMAgAdYLDA=
Date: Mon, 6 Jul 2026 08:42:42 +0000
Message-ID: <IA1PR11MB6467FF2E41319CC267973E01E3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-6-nemesa.garg@intel.com>
 <f7acea16-e3f6-4c90-b1e2-92126ea63de0@intel.com>
In-Reply-To: <f7acea16-e3f6-4c90-b1e2-92126ea63de0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA1PR11MB6965:EE_
x-ms-office365-filtering-correlation-id: 427bcf76-dc62-4d66-5944-08dedb3a8b5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|56012099006|18002099003|11063799006|4143699003|22082099003;
x-microsoft-antispam-message-info: BhLjsqAgrwKS8FFkS8JT+F1qmQyZS0kEoB7Ag0oigCch69/1kaQFXVf4NI49XB/GFUfFRlG+SVp3wkN9Uf9WSsB1qTKFmqhGbo7uoC7yuoRqLh9xRzGMFCByaepjLGVGsLYr82NC1l0rv3/VIcRyD5PeIvGQ/RjxVXjDNA1pVHCX2cWQqUBM6qZ0Po9j/kplwDW+K4Pbus7ljzHQ5Pza09WVxhhGSCwYOvaLoVhYqkFMmS+9yuOcEQGwIb2fgb0G8RvRLG9jGFVOIVfWaYhJ0+4b3L6b5wIgm65TSJNfGgWBDH4G2dlQUjhr0is4HjpO/z7YCdDUvlnkpvxX0pEhCWs7WGokW48KCuF/9Qxd3BrCNVT+11OY7xhqR/5m7Ys1wpR48jMxy3esCm8NIAvvd2WvdVhHc+9uY9kqP96DNKnKDY8cFAbC9bxAH5+6PoRrU7DbWqAv/mLiImbIths+/x5H/mYNQ1JhV3RDNQVUR/acjtR5rtxUA90LwCTCJ6ronLmQqWFE66h1bOebxAC8vb1Ed+R7v6zaq+V+PautZBW0FTQ1kQK4ROp4aE0cSof9RYL1kQQdavE0mJp5rpQfMHadeK6pI3khQ9IOQT0ufveJuPprklP5boCZ7bNOH80WwjIvuRs3rtmRYZ5tKxgLBvZd2xpyyNlAX1kMafxvAqURHx55y3U4LSoQQqffpZzQoUW4lizYq4gW3+T3rp4XkaV4Lc06iXoM9i7VGWNMnd8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(56012099006)(18002099003)(11063799006)(4143699003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Sk1rcHFYWkxEd25VUjh6TUwxdG9hRXlmV0VBS2RYS0VIaThteGJZcDRsR2pJ?=
 =?utf-8?B?WmViRUp5dWZVVXRjckJmZmJScG5uZ1pTZUtYUmo5cjZUUTh6bTZCZktnVEJl?=
 =?utf-8?B?RHJvWU9xcHJIRmg2dlpCamVxc2JxdDZSRDFQVE5aUWR1VGtYTkpFcEpOZStw?=
 =?utf-8?B?L20vUVlnUFg2NCtJYlVzU1BrSTcySTZGNnhBT3I2RkIyQWRhQTBhMjh1b0wz?=
 =?utf-8?B?UDBwSG12czVoVGJSSHA3VE5vaXdZOGw2eEJENC9ZVnc4ZnJFWVZLTU5ra3VF?=
 =?utf-8?B?dnRITm1ZRnErallLODhXV3ErZFpDSGl5ZGc3WlhRK0RUcFB3ZzdqTlJhUzJ3?=
 =?utf-8?B?aUxIVGNUemtYWThFeW1xTk9JeHg4L29Dekx4SXdBUHpkcVJOWS94aEZoVTZT?=
 =?utf-8?B?ejVKdUcvZmh0NUNSbjhuTzUxQnV6RzVObHRKN3NUcFV5V1RtVjZvOXlkU0R2?=
 =?utf-8?B?QWZEV1NCam9KbmlsWVplMFlTdmNoU3VIMkwvMk84WHhvbyt5b1QrNENZTjRF?=
 =?utf-8?B?Y1V2VW5vRWg0V0ZxenI1V1FpdmVpaWFjeUF2eklOV2o5elVVMjNCOUFkTkM0?=
 =?utf-8?B?czFHUzdLdGdrS21jZXNBSDBDRDNSRzdKNnB6Y3QxbkZDMGFjOWptc05sbVRZ?=
 =?utf-8?B?OTBad3BVR0ljUlgxUkpyWmVFRW9TNEJRQ2RkaXVLc1hRSTdkUGJGNThsRDN6?=
 =?utf-8?B?R3hkZmgzS2FGVWxQLzRKdW9JaG1wL0Y2VkpIWXpkUWlaTm5kWHdEZGUxZHhn?=
 =?utf-8?B?V0d3R1VGcklPM1ZMOFVGdmZrZ0JmZXpiWHhoNkpYV3JWWFZIdHBLbFMwamNV?=
 =?utf-8?B?eEh1MkJsd2NhZWNqZnBoN3ErTjFBVHFRb21veFQxNmdKWmdMWUJFNUozZUVj?=
 =?utf-8?B?TXVBYlZaV014bWRuYTRnZmVjRmdPODdSeDlNUXdUVTBGdVJlMlVNL2JocEs1?=
 =?utf-8?B?N3lDZUkycXhMS3ZhWnd0RnYwdVdUTWlpTU41SzhFZEVwK3VJNGhpVHZGWEIx?=
 =?utf-8?B?SG1lWFROUkxnRE1ncWpSQmt3S283ZFpHZCttd0I4VW9YUkNnby9iTHFKMGYv?=
 =?utf-8?B?VklCZ0NuU1VQaXVUZ1UzWVRuYnVLdHM5czRRMjErYStvQytZbnQ5ckE4aFRU?=
 =?utf-8?B?cDBhaXNmeStZYWVQaEw1djJrM1FJUS9HeTY1WEQ0WnJWREcrQURoKzZqV1Mw?=
 =?utf-8?B?T1ZJbEFjMGNoaEtiN0Y3VFljYUVGZGUyb1lTM0tiOHdzYS90akJUVFFoYVhh?=
 =?utf-8?B?REdFTHcwVzhtUE9aSitFdi94cVFTb1liTGVhdUowMFYvSXBFZEhCZzBxUnBt?=
 =?utf-8?B?aCtTZUpRU3gzOENUK01yLzRUWnV0d3JVTE9KZ0R3U290N21RMlRYSm1pUGxr?=
 =?utf-8?B?UHNlenhtalFTZ2Rwa2dJTno3YXp2cnRkWHl5TGtPaDFST3RKR051SzhpMzRr?=
 =?utf-8?B?OGtiUGZqekhFNXFGZXcyNC9laTZrVEozdFRabjFJZnJ1b2tPeW9jckx4Ukd6?=
 =?utf-8?B?ZkFWa0hJWkxNOGR1WWd3RkdkQkVmR0pFVU8xVU52bHdobVRFdkY3eExPUkxu?=
 =?utf-8?B?ZkJMb3FHVWJMblc0TTMzTVZoQ1ZNeVVic252QnkrcWVtcnRnMlBCaE5zQTAy?=
 =?utf-8?B?NERiNHZ1Rk1hNEszTm5xdWh3L1ZNdEJtL0NjeWNSRGlaMGxqcEdKaWloL21D?=
 =?utf-8?B?KzJVU3I1NEpGdFB3SjdDOUV6eEhnazEwSUVUcTRUVWRrY1kzTjhONnQxZEhJ?=
 =?utf-8?B?cER1bkhuTnpZVmFydTFuZVFSNkk4TUEyZlVOd21WZ3RPRGJjMVNQazU2elNZ?=
 =?utf-8?B?UDBEUVBBRWJ4SXAxUDRtMHBNajh2cEU4M2tJNE8xZDN4K20wZTh6TnlQZjBT?=
 =?utf-8?B?TTlqbjRzbGxFcENndmIyTHh0bm9wSzgwLys0VnhYZk9UZC84SHUvWlpDT2JY?=
 =?utf-8?B?UUk2SE5vQ2V2T2JkMGc3LzBYSGpuQTRocW1ML2ROMGttTzU3bG9DWVdTZWFG?=
 =?utf-8?B?eklZQzAvUW03cTl1d0JRakd2OXNpZkhRRDNGU0VUb09wWkZaUnZkc1dLbW5x?=
 =?utf-8?B?RzRncFB0RHM2ck1qUW9oOW03K05ybE5iQ0RRZXVRQUxWYldNYmtxUXk1eEc0?=
 =?utf-8?B?eHBqeG5XZ3B3QTdiMVlib1lrRGpBSWVjS1dvejU3Z2ZROFBCZDhrZlJvRWNS?=
 =?utf-8?B?ODZoWVVRaHlQbU5XQkFNS2JJZnYwODdxMG43Nllka2h5eDJzU0tCWjZNb1Y1?=
 =?utf-8?B?SXpTMkl2L0dMUFVobHBXT1VoTzVUYys2VXFJZmozcHZZREZIbGRuMjB5cnAr?=
 =?utf-8?Q?p4LyDUZ1s3QBcR/DKy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lZO5dKjpe3KlxI573lj8aJOupWyCeFJN+bv3RgZ2ii3WCtjf56YCuZ0NvuUwp2Ht1w7BZ8SO0lLw6o2LKhLDXYhOy3Or81HuP0averywqdf495umNCsP2/L1cS7IV3ZMGeoqJTzoYPaTXXDOXL/6GFDW8vCAOA4xhEfpofGPF8Olts9/6Zm1KKDxQbNFyFTLiWbjeYI2eef/pnOOjEJtpqWPF2KV6f893IrVOXjI4vlm0CEH+fhI5CPQ6fqtqRv7dAiBzVV7PqiDbck5Y4gHP8FiM3QSy0EIjzAsJfa7JiLStgWSyjuCm7SettV2RF6prIvjzt5QjtURBmro/TDgyQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 427bcf76-dc62-4d66-5944-08dedb3a8b5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:42:42.5340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uLnC9+erpCb6TXriQTDpK3D2DA+h2KKdYAcrWLIKm55tuv5cLqCvDtYEV7EpwBOR4B9y0+A6xEh00usa/FkFFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6467.namprd11.prod.outlook.com:mid,intel.com:from_mime,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B68770E3AE

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVz
ZGF5LCBKdWx5IDEsIDIwMjYgMTA6MDIgUE0NCj4gVG86IEdhcmcsIE5lbWVzYSA8bmVtZXNhLmdh
cmdAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggNS82XSBkcm0v
aTkxNS9jdXJzb3I6IFByb2dyYW0gc2Vjb25kYXJ5IGN1cnNvciBwbGFuZXMNCj4gDQo+IA0KPiAN
Cj4gT24gNi84LzIwMjYgMTE6NTYgQU0sIE5lbWVzYSBHYXJnIHdyb3RlOg0KPiA+IER1cmluZyB0
aGUgdmJsYW5rLWV2YWRlLCBwcm9ncmFtIGFsbCBqb2luZWQgY3Vyc29yIHBsYW5lcyB1c2luZw0K
PiA+IGludGVsX3BsYW5lX3VwZGF0ZV9ub2FybSgpL2ludGVsX3BsYW5lX3VwZGF0ZV9hcm0oKQ0K
PiA+IG9yIGludGVsX3BsYW5lX2Rpc2FibGVfYXJtKCkgYmFzZWQgb24gcGxhbmUgdmlzaWJpbGl0
eS4NCj4gPg0KPiA+IFYyOiBDaGVjayBwcmltYXJ5IGFuZCBzZWNvbmRhcnkgcGlwZSB0b2dldGhl
ci4gW1ZpbGxlXQ0KPiA+DQo+ID4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtc29ubmV0LTQu
Ng0KPiA+IFNpZ25lZC1vZmYtYnk6IE5lbWVzYSBHYXJnIDxuZW1lc2EuZ2FyZ0BpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNv
ci5jIHwgMTkgKysrKysrKysrKysrKystLS0tLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+IGluZGV4IDE0N2VkNmVmYjE3NC4u
Y2IxZmNhZThhNDQ1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3Vyc29yLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N1cnNvci5jDQo+ID4gQEAgLTg5Niw2ICs4OTYsNyBAQCBpbnRlbF9sZWdhY3lfY3Vy
c29yX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lDQo+ICpfcGxhbmUsDQo+ID4gICAJc3RydWN0IGlu
dGVsX3ZibGFua19ldmFkZV9jdHggZXZhZGU7DQo+ID4gICAJc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlICpvbGRfcGlwZV9zdGF0ZXNbNF0gPSB7fTsNCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKm5ld19waXBlX3N0YXRlc1s0XSA9IHt9Ow0KPiA+ICsJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKnBpcGVfY3J0Y19zdGF0ZXNbNF0gPSB7fTsNCj4gDQo+IEFub3RoZXIgY2FuZGlkYXRl
IGZvciB0aGUgc3RydWN0Lg0KPiANCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBpcGVfcGxh
bmVzWzRdID0ge307DQo+ID4gICAJc3RydWN0IGludGVsX2NydGMgKnBpcGVfY3J0Y3NbNF0gPSB7
fTsNCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqcGlwZV9jcnRjOw0KPiA+IEBAIC05NzcsNiAr
OTc4LDcgQEAgaW50ZWxfbGVnYWN5X2N1cnNvcl91cGRhdGUoc3RydWN0IGRybV9wbGFuZQ0KPiA+
ICpfcGxhbmUsDQo+ID4NCj4gPiAgIAlwaXBlX3BsYW5lc1tudW1fcGlwZXNdID0gcGxhbmU7DQo+
ID4gICAJcGlwZV9jcnRjc1tudW1fcGlwZXNdID0gY3J0YzsNCj4gPiArCXBpcGVfY3J0Y19zdGF0
ZXNbbnVtX3BpcGVzXSA9IGNydGNfc3RhdGU7DQo+ID4gICAJb2xkX3BpcGVfc3RhdGVzW251bV9w
aXBlc10gPSBvbGRfcGxhbmVfc3RhdGU7DQo+ID4gICAJbmV3X3BpcGVfc3RhdGVzW251bV9waXBl
c10gPSBuZXdfcGxhbmVfc3RhdGU7DQo+ID4gICAJbnVtX3BpcGVzKys7DQo+ID4gQEAgLTEwMzIs
NiArMTAzNCw3IEBAIGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUN
Cj4gPiAqX3BsYW5lLA0KPiA+DQo+ID4gICAJCXBpcGVfcGxhbmVzW251bV9waXBlc10gPSBwaXBl
X3BsYW5lOw0KPiA+ICAgCQlwaXBlX2NydGNzW251bV9waXBlc10gPSBwaXBlX2NydGM7DQo+ID4g
KwkJcGlwZV9jcnRjX3N0YXRlc1tudW1fcGlwZXNdID0gcGlwZV9jcnRjX3N0YXRlOw0KPiA+ICAg
CQlvbGRfcGlwZV9zdGF0ZXNbbnVtX3BpcGVzXSA9IG9sZF9waXBlX3BsYW5lX3N0YXRlOw0KPiA+
ICAgCQluZXdfcGlwZV9zdGF0ZXNbbnVtX3BpcGVzXSA9IG5ld19waXBlX3BsYW5lX3N0YXRlOw0K
PiA+ICAgCQludW1fcGlwZXMrKzsNCj4gPiBAQCAtMTA4NywxMSArMTA5MCwxNyBAQCBpbnRlbF9s
ZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lDQo+ICpfcGxhbmUsDQo+ID4gICAJ
CWxvY2FsX2lycV9kaXNhYmxlKCk7DQo+ID4gICAJfQ0KPiA+DQo+ID4gLQlpZiAobmV3X3BsYW5l
X3N0YXRlLT51YXBpLnZpc2libGUpIHsNCj4gPiAtCQlpbnRlbF9wbGFuZV91cGRhdGVfbm9hcm0o
TlVMTCwgcGxhbmUsIGNydGNfc3RhdGUsDQo+IG5ld19wbGFuZV9zdGF0ZSk7DQo+ID4gLQkJaW50
ZWxfcGxhbmVfdXBkYXRlX2FybShOVUxMLCBwbGFuZSwgY3J0Y19zdGF0ZSwNCj4gbmV3X3BsYW5l
X3N0YXRlKTsNCj4gPiAtCX0gZWxzZSB7DQo+ID4gLQkJaW50ZWxfcGxhbmVfZGlzYWJsZV9hcm0o
TlVMTCwgcGxhbmUsIGNydGNfc3RhdGUpOw0KPiA+ICsJZm9yIChpbnQgaSA9IDA7IGkgPCBudW1f
cGlwZXM7IGkrKykgew0KPiA+ICsJCWlmIChuZXdfcGlwZV9zdGF0ZXNbaV0tPnVhcGkudmlzaWJs
ZSkgew0KPiA+ICsJCQlpbnRlbF9wbGFuZV91cGRhdGVfbm9hcm0oTlVMTCwgcGlwZV9wbGFuZXNb
aV0sDQo+ID4gKwkJCQkJCSBwaXBlX2NydGNfc3RhdGVzW2ldLA0KPiA+ICsJCQkJCQkgbmV3X3Bp
cGVfc3RhdGVzW2ldKTsNCj4gPiArCQkJaW50ZWxfcGxhbmVfdXBkYXRlX2FybShOVUxMLCBwaXBl
X3BsYW5lc1tpXSwNCj4gPiArCQkJCQkgICAgICAgcGlwZV9jcnRjX3N0YXRlc1tpXSwNCj4gPiAr
CQkJCQkgICAgICAgbmV3X3BpcGVfc3RhdGVzW2ldKTsNCj4gPiArCQl9IGVsc2Ugew0KPiA+ICsJ
CQlpbnRlbF9wbGFuZV9kaXNhYmxlX2FybShOVUxMLCBwaXBlX3BsYW5lc1tpXSwNCj4gcGlwZV9j
cnRjX3N0YXRlc1tpXSk7DQo+ID4gKwkJfQ0KPiANCj4gQWxsIHNlY29uZGFyaWVzIGFyZSBub3cg
YXJtZWQgaW5zaWRlIHRoZSBzaW5nbGUgcHJpbWFyeSB2YmxhbmstZXZhZGUuDQo+IFRoZSBhdG9t
aWMgc3luYyBwYXRoIGV2YWRlcyBldmVyeSBwaXBlIGluZGl2aWR1YWxseSBidXQgdGhhdCBtaWdo
dCBiZSBhbg0KPiBvdmVyLWtpbGwgZm9yIGN1cnNvciB1cGRhdGVzLiBJIHdvbmRlciBpZiB3ZSBj
YW4gYWRkIHNvbWUgZGVidWcgbG9ncyB0byB3YXJuDQo+IHVzIG9mIHZibGFuayBzdHJhZGRsZXMg
aWYgYW55Lg0KPiANCkFjay4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KTmVtZXNhDQo+ID09DQo+
IENoYWl0YW55YQ0KPiANCj4gPiAgIAl9DQo+ID4NCj4gPiAgIAlsb2NhbF9pcnFfZW5hYmxlKCk7
DQoNCg==
