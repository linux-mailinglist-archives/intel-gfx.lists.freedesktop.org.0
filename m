Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3sG8HFORL2qaCgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:44:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606F16838FA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:44:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OtLGNATo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A2910E1C2;
	Mon, 15 Jun 2026 05:44:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D047E10E1C2;
 Mon, 15 Jun 2026 05:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781502288; x=1813038288;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+CXOiuueL/cXtWuafk298ANfahSyJNKRzdynKNRb5nc=;
 b=OtLGNAToXeQPhqA86LrHcorLGzDIkV/H6bYmfKSZljifoIeuSq7UPyX+
 c60hXawxlhRvhdDFOQG565FtT+fCvEkPesON7EAae+GEE+uZJ0yhP2rg/
 Fbh/i9Rgvad5ghbWZUgeRx2LeGhTP7Q9hZAKLPOrdqPW6jdzx5mvRFUlj
 37KZcJtgAmfklEZIM4VAZXYAu5H4HnQCMABSP4648ncoSzqowhn/Ic427
 VfMFQYNJ2xybX0/e0TsA68qxXrHEevR5bJAl62UzEd87glyVW7CUpcFbv
 TCoKnarbURtRJ1/NpfrvV+25PobpB1zdRq6mu8swzgGkGrJUBEyWmVT7H g==;
X-CSE-ConnectionGUID: DAKn7waoRiCSjYeFGSIz2w==
X-CSE-MsgGUID: p258kwF5RpiKGzed8Pe91w==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="92793439"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="92793439"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:44:47 -0700
X-CSE-ConnectionGUID: WKhf838tQeKht8VL8TUKPg==
X-CSE-MsgGUID: LgUSBnQZSTae7pq3NsQLhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="243007491"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:44:47 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:44:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:44:46 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:44:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=weoSgGTSDE4/DnNIZwYx1OKmTaJBW8ST2KWHO2op/cCNQZIg9Fkf7PofMsdzVJsThsKijuadFKbD/Vp1xPHZqMY1SH4zbnO/YA+8TYeIfBxfXtxzpAS3B/HaWV4KHqx8/50hDVBREw401waykRVf+OAKRGLOI5oJKXx1yHsRTUVx7sMydFqz7Wzh5AIZ/J5fo18ZpLoCyb1QLMHklOiQBEpRyyMPk6xHTb5ixJfUSv7d6LSVL0SqyWgN3VTNwlhZkkx81IQxX6Nqr3EJRdnGW4w/Xgj0uQ4ylY/n8GJqsFY/mnLKQRORX9K4ufseSPdZNt6ghd0ltAyuePzGCB5D+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2IkYAaF21SxEqAIlyUd5Wfj3khf8YPJ76k6jAW5VZM4=;
 b=dAqS0u8apmXnkLTQuhD5If0NA3UdOfMG/0mre7T950l9Q3k5gv4PGNpx4geJjYoWT2Zwcz9HbkYoUbnKJflp6BOGQOWlROAD8abeadUn8RPd0T5WXEKZhCTjCOCHddJmdY5kV5aoGfEECH9TN0VNUyvHEjvSf8akt2s90tD7MLEhilEHBM3ewdz4WeicJqv9ImKRUAaeOfc+V8AH6XpVQC0IQ7gi+OSPeL679sCTSp7Q84IYqnVFKxBPql30c1+2Ek4Fbd481va6fQwVvRpVrb4NCglhBfJ9U39dAKTI4cWnHbNEyhwcLCBWMkJkIv9g4X7SmCkZMSdcekyIQ01uZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DSWPR11MB9763.namprd11.prod.outlook.com (2603:10b6:8:355::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Mon, 15 Jun 2026 05:44:45 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.011; Mon, 15 Jun 2026
 05:44:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
Thread-Topic: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
Thread-Index: AQHc85dhQP+eRGrVKkWyZnpqUST1xrY5tiyAgAV1CnA=
Date: Mon, 15 Jun 2026 05:44:45 +0000
Message-ID: <DS0PR11MB8049CE68C0C4269CE0AF5201F9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-17-animesh.manna@intel.com>
 <DM4PR11MB6360349828BFA4BED2C260DAF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360349828BFA4BED2C260DAF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: dibin.moolakadan.subrahmanian@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DSWPR11MB9763:EE_
x-ms-office365-filtering-correlation-id: 321e2c2c-0529-4e96-66d4-08decaa13491
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: lKHenv0p95Zoo4gjCw3Cw1lKhAv7w8aADRQ6Dh/OH+uPHbKXGL9iVXEuskN+PsqXDi2EfYlCUm5aG0VMeegh/Iv4oL1KkyyJ6D8Sb2iV9b6ZLQsl7KKX8HKU5T2esTuCQCcixm05Xd5q+LnWd3JTvjZldq8Cl89WgOsnv4tOT7oCdqGMUkQHUPOmlHgKcQWEFyTki/yEGa4BBlUIo7rqH8+LwSB8wbOXPgyusZa7l+NU0x7o1Qcb4sqVUtBv2x8/G28y92d/oeb95Aw0LspTKvK0EH7TfRl5JX9LAE4LTQ3oVJMoIxTS7yQ52BDI2xyo0Aa+huKoDLPEfYyYPltMiB1eS9djjzV/Yge+C5EJeU2Y4qtLSIBh5nlY0UJS4m3ItaH5jmqUMAdCqnuQgfMW4v6wSSmuzyumVQvXpUcPXUpWa92q5F99hLxOqDJF/t1ef8lJcYd2Ex+nfHK0BmPhSOYOC8YStT8j5MKpunPEK32zmJ7iz0ajtvrVhsd/7MqtfDWtPEPX6o9tJEnKZx4rJ49E907jPFMhxf5qBjwm23AitTGa1Enq9T47W8FieNa5srDgwcrHDn8mgwBHak+h3XF5FAR8jL0wcYOL0JbBlBnx2rWxKxdliryGDtyTpt4geeKseV8Z6ne+ZgMznG618mR9f9cPTJ4HvMoxJMpNt4mdWacwvbKucS1RMV8piPIPv2cBzmzpLHBgo3rKGHkmTcRPDEG63UcdFGqeVa0uFi53ZpXXlLCFli2Y9Qqonzy7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zNrWX0g1jb8T5g74xw/MM6OcmQAc9PM2jFkTau37WL3pLmAwKpB4S6wu/Cx7?=
 =?us-ascii?Q?qt9O5rPge5SojNB2mWeAmoUSFjiMU+zvoMRAsWZg4z9bJsgo/Oa0BGGmDqPS?=
 =?us-ascii?Q?ivdRcmbC1gSRXTeJqEvOXarrd476vcKtELL9YQFsR95lrOcHNY/xTeIKxd2L?=
 =?us-ascii?Q?MycQWcEw/6STzGfn7KwNClHBsWJuBvybdJQK0JhW3o8zJ4qb/6aZrlPOQWCV?=
 =?us-ascii?Q?epz3xLUMNyAidH3c0PGacDpxWXgO5BK39I50XDexWUrgzV3cfTuBEV5+hNJQ?=
 =?us-ascii?Q?WlNFRxtg0hSWBv77fC0SpxwLvIZDp9OSBaR9oG8cZdBfnHk1WwBjOWZStDxH?=
 =?us-ascii?Q?lvFjahSRe7yw8aZ5xwUOA9tbwf4Z6ZddOx72P5nRG9KiQzdJKmYTAwESHvkf?=
 =?us-ascii?Q?WCe/HL7lWFAfg9wA8hHJM7ey5dKZOeD3XjOMP5u5I5/A7NDQ7H1ndcXa37Cc?=
 =?us-ascii?Q?ubGNBWq0l67bgRDhw4bBdhza5Gix2B1bNckZVozCBqDmKMvNZfDXq99WTX+z?=
 =?us-ascii?Q?ox9orj2RvbDajb+PWTeTJZfSFOPSqEwIz5oKK2T8RyA0w5i5HLACNNBuaEDw?=
 =?us-ascii?Q?ISHui0Y5mUW6BAH5JZ3L3WOvfpyutWL0k6qP0A4pKp1SHiMUNdfdf7yjO6sS?=
 =?us-ascii?Q?QEVTw8RMpmL1WS3TVnt1P9hoBByFk197NZt11HfRjChpjvI0TCw+HudJA2O4?=
 =?us-ascii?Q?skrWEw87Y1rjkhvelHnp1VqFiwJLlxIPutVd9K9PshQrzc5tySgUiyFPmICE?=
 =?us-ascii?Q?hMUmBdHuCKWfuQrUKWmrYCqvuP10PyGPZcXSop+/vdpZC9a0UTed5XGSIImK?=
 =?us-ascii?Q?exbeLKiJckNHCTSoXoc5qUSq7imJXbPf1qC+cPiXkVRjV0K6PqkcFk6QfZgp?=
 =?us-ascii?Q?ixr6kJ8w6QiF3Hg4uzXKRgiFQtoCO/bj0xTt4DNEIYK4zx2BRFAKAs6LFvcN?=
 =?us-ascii?Q?XHPfiLM1jQuEBrja+FHzEqUjjQmH5QibW9nasmEYY46hN6p7fOt5Y3AC+Uk9?=
 =?us-ascii?Q?hVFi6FcN8yAuZ+fu8LFFGMVE52p7Gk5tB9htti17Ocu/7Om506FSLNvjKPFu?=
 =?us-ascii?Q?cQHN5sbm/H/Gti5smq+rimlQcGbxhnKt7PkKTujO/CzRtVKyvYUoaRxNtU9k?=
 =?us-ascii?Q?N2um2vXgJ48LFR3b1bXQ2TVHoCAOPGHTp5ZsBQ7Hg8AdfiYIJ7fIjpH+m1AO?=
 =?us-ascii?Q?z4Lgh6R7Uow9Xxg/YK+2fErRmxQoZNPzXAI4rCDJTElWgcjdpAi9+Z2Y8xii?=
 =?us-ascii?Q?XVHyBZX3lylZR9oiW9BVwxlghIzfnZYoiKkW8xChm1bmnfr74xCDCi91oWfL?=
 =?us-ascii?Q?kYl1yiDSlIntAkWsFctYN3PWxq09Lo1Wgq2vmobHQ96uZJlfNfc00zhdbKXS?=
 =?us-ascii?Q?bstuw7ZED8gHVcv8VYqkgLdS1frvFo2x0vBijsNVK3FiUXQv8Kp2yHn3u9tP?=
 =?us-ascii?Q?FrJ0LqVPRsOa0lujigL4h4iCVZ7Qthr+I6A25DINLwbHUtuCQKS9evDvJxfa?=
 =?us-ascii?Q?jz8xi0AYhoknc3Pxq3K41Q+oblbVDTRXfTRDNrDs4a2de/zQFQ95E7bGm2J1?=
 =?us-ascii?Q?BX4vVmLB+lWk4hlELip5I7vrDe+3oRck8JJ2aZhi347TmdwDWWgErRag7oOU?=
 =?us-ascii?Q?QUQpsUykSpwAHHkF2TPyRTZJFRHlgU3XTHFJL9jP4R3jQUUhGjgnNSKAw3/+?=
 =?us-ascii?Q?LXqImGaUpw9PJ+GFgBLSjPul3XNp85gyUfFAoZ9bxj3xrwsx75qktV1CaaoK?=
 =?us-ascii?Q?d7VymXN8+A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ohEhEtUYFUtwivb02LxMHtApO8e5YhY03UgT0UxLsV9kn5uYqF7tSMS/JBomIZWeatyl7Yiaa670E7D7PUgipcpOnRIUZDPV+/uwpLSpWziwyeqT2Tc8HM9X2BAOCBjEOgOdCGeOHVNl8bs7LJNx7IemfyF6BZrBooEapzKJPcVLeK276n457DHp9KhYFks78kyPUlgT5O6fyata5lDWsspr7XHpuKzLSH9iRcpFnjXdgY6tupTNABnqh5PwAUKhxdx5EwEhpCeZ0+8L55XbKTNZwD/HKZjPcZiCYZrX8/uzp2TNwAt7CQaHAWXvvzE9gM1hMbfCbgecC821SLZjZg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 321e2c2c-0529-4e96-66d4-08decaa13491
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 05:44:45.3474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pjwv8WF64rY+cU/7Grd7/YQZMCgfoT8rT7ogXJdE/YsG36S+ozDBAfbPFhWwlclQX7PO9nYBnZyO0fsRiXRRuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9763
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 606F16838FA



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, June 11, 2026 11:48 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB
> programming
>=20
>=20
>=20
> > -----Original Message-----
> > From: Manna, Animesh <animesh.manna@intel.com>
> > Sent: Thursday, June 4, 2026 1:24 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>;
> > Manna, Animesh <animesh.manna@intel.com>
> > Subject: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
> >
> > From: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> >
> > Program CMTG guardband to generate the Lower/Upper and early entry
> > guardband indicators to the DMC for DC3co control.
> >
> > Bspec: 75253
> > Signed-off-by: Dibin Moolakadan Subrahmanian
> > <dibin.moolakadan.subrahmanian@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 31 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
> >  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  8 +++++
> >  3 files changed, 40 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index fb57fa41f721..cc36784e5253 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -400,3 +400,34 @@ void intel_cmtg_disable_interrupt(const struct
> > intel_crtc_state *crtc_state)
> >  	intel_cmtg_mask_interrupt(crtc_state, true);
> >  	spin_unlock_irq(&display->irq.lock);
> >  }
> > +
> > +#define DC3CO_ENTRY_LATENCY	55
> > +#define DC3CO_EXIT_LATENCY	40
>=20
> Add the bspec reference for this. Also indicate what unit this latency is=
 in.

Yes, done in next version.

>=20
> > +void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	u32 breakeven_gb;
> > +	u32 dc5_exit_latency;
> > +	u32 line_time_us =3D 75;
>=20
> From where this 75 come from, add a comment.

I feel this the maximum value and later overwritten based on crtc_state->li=
netime.
@Dibin Moolakadan Subrahmanian, could you please confirm.

Regards,
Animesh

>=20
> > +	u32 val;
> > +
> > +	if (!intel_cmtg_is_allowed(crtc_state))
> > +		return;
> > +
> > +	if (crtc_state->linetime)
> > +		line_time_us =3D DIV_ROUND_UP(crtc_state->linetime, 8);
> > +
> > +	/* Break Even Guardband - DC3co Entry Latency / linetime */
> > +	breakeven_gb =3D DIV_ROUND_UP(DC3CO_ENTRY_LATENCY,
> > line_time_us);
> > +
> > +	/* DC5 Exit Latency - DC3co Exit Latency / linetime */
> > +	dc5_exit_latency =3D DIV_ROUND_UP(DC3CO_EXIT_LATENCY,
> > line_time_us);
> > +
> > +	val =3D REG_FIELD_PREP(CMTG_HW_GB_BREAKEVEN_MASK,
> > breakeven_gb) |
> > +	      REG_FIELD_PREP(CMTG_HW_GB_DC5_EXIT_LATENCY_MASK,
> > dc5_exit_latency) |
> > +	      REG_FIELD_PREP(CMTG_HW_GB_UP_LW_BG_DIFF_MASK, 1);
> > +
> > +	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);
>=20
> Should it be cpu_transcoder or cmtg_transcoder ?
>=20
>=20
> With above fixed, this is
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> }
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 8fcb44d6398f..2c801a74acf9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -23,5 +23,6 @@ void intel_cmtg_sanitize(struct intel_display
> > *display);  bool intel_cmtg_is_allowed(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_enable_interrupt(const struct
> > intel_crtc_state *crtc_state);  void
> > intel_cmtg_disable_interrupt(const struct intel_crtc_state
> > *crtc_state);
> > +void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
> >
> >  #endif /* __INTEL_CMTG_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > index 240a02cd4a3a..a4a2a2fe6b66 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > @@ -24,4 +24,12 @@
> >  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> >  #define  CMTG_STATE			REG_BIT(23)
> >
> > +#define _CMTG_HW_GB_A				0x6fa8c
> > +#define _CMTG_HW_GB_B				0x6fb8c
> > +#define CMTG_HW_GB(trans)
> 	_MMIO_TRANS((trans), \
> > +							    _CMTG_HW_GB_A,
> > _CMTG_HW_GB_B)
> > +#define CMTG_HW_GB_BREAKEVEN_MASK		REG_GENMASK(11, 0)
> > +#define CMTG_HW_GB_DC5_EXIT_LATENCY_MASK	REG_GENMASK(27,
> 16)
> > +#define CMTG_HW_GB_UP_LW_BG_DIFF_MASK
> > 	REG_GENMASK(31, 28)
> > +
> >  #endif /* __INTEL_CMTG_REGS_H__ */
> > --
> > 2.29.0

