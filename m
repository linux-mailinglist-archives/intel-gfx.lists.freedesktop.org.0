Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHSeI4pr3WlPeAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:17:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28C23F3BE5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F407310E15E;
	Mon, 13 Apr 2026 22:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RNywVYUt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D46BF10E15E;
 Mon, 13 Apr 2026 22:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776118663; x=1807654663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jINIStMZLg5FJY2/fwU1nryc3YbG/Suc2RcxhVLqZeY=;
 b=RNywVYUtw6ELLIoHaYfM6YZP/K6jvCaEYBue6ibZ9OqEHDnv7bRV6Mgf
 ELAWx5T39JE+fdtgCJqZ1bVw86VA3rPY1ai0LVKnc4apv9C2itY0SqYUQ
 ITlOGM+BJ4GpeSOPae25OGB5r+3P3Q5etijl48zszXKcRAPkulxodBBx6
 2wHzgEB/G7F0w9fqyXXpzlpXIIxU2i/ra1ikjs7sBoU0ecAPUHfr/Tljn
 AqSJ0v5GQ5oT3+QXV/VLnNjLF1qvK8bOYu90ygl0A9pRqiubNZ9wVWqTt
 PmNqKapF8Gil8Bhz3INhOeD+H5lpufba+gzj9v7TzJgVyWqoHh2k6aawo w==;
X-CSE-ConnectionGUID: 4hQNzk0MRg6/SvsG7lbbeA==
X-CSE-MsgGUID: NjZ9DHOqTa+AGQ09b3rrrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="94634570"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="94634570"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:17:42 -0700
X-CSE-ConnectionGUID: IMUNRPnQTzmQs5GrP5heNA==
X-CSE-MsgGUID: DlWu1EJCTjChrORdvd/4Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="223413134"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:17:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:17:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 15:17:41 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.14) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:17:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DGiA3MEsQDYJsmfscsoNesA8PR4rgyGp2gxm85HGGtiiwK32iY1N3Kj+H3M3V/GChhFCsc5NyOjqBCAxUv0WQ/XPRk3v6qCCNw2OIXBybyIBp03Uwv82YZIkAxKTc2/Wk82rsVwgnx0peen/YiCEKnAH1soo5E08uyg843X1KfBNKcYdUK7QsE732F8x65wheM7HcLyYZXi0xBaZ8uLl6kzu9Wt52tp2ZcezkJocJY4J7jei9d5w6pODEDyPNhY5E4r2eFpq1mcu/HEd1nBAYL9MbWKFYp+zvBBQ+ZfHuktv1xaEHiTc6yJGIAztx8IUVgBrpf0UtDOekyaL+kQhkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aEV2S8bfARSQA1va0UcUCEg9HKNBnXmObyzgzGo+6Qs=;
 b=ZhnBwS+62xo58bWK+XF2ba+/Rxp5qBsBSIVNV2mgyCQupNRNFN5SGr5gS5Gnh6Mt8vk7XRmKv9I+gxI9EpqVlhgVEV2+50idzcxgqwT2nIfLxHOjx1LQb2DR9BMTkcwVvwUoW1H9oSGLGGiYmn1Nm2N3vraNGcn/Pf5X9S0qKnQ48WgI6NcIFqA/Un026UE/takM4gfrhvzzJHMwKU4doHPD9sUf65VsMqy1eupsvZvAM9lGDMvH+U4WV0kKCGJkRzkzFmkIxf8Et+ETa4MnckvYbaQ5IluqWxWzvVXlS6OqNc1GzDQ4pT3mrKW7rgUXpZ/D9fnJeVTrRnB9Rk2XNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9062.namprd11.prod.outlook.com (2603:10b6:208:577::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Mon, 13 Apr
 2026 22:17:38 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 22:17:38 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 17/19] drm/i915/display: Remove DC3CO DMC debugfs
Thread-Topic: [PATCH 17/19] drm/i915/display: Remove DC3CO DMC debugfs
Thread-Index: AQHcvUQ3KmrUuAXKqki3K9gGVG5JErXdrBGw
Date: Mon, 13 Apr 2026 22:17:38 +0000
Message-ID: <DM4PR11MB63602310786C7439AC230634F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-18-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-18-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9062:EE_
x-ms-office365-filtering-correlation-id: 23cbdcd3-c860-4985-541a-08de99aa78b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: bOHE8xJ5l6SJ2nWjuRHV29ADgUg+eFxHHonWRkpRgJk+82cvYpRppi813bsWQawRnX59gffSMJplPqeYoOcL4HI/QDYt/hRLFBTr3dPqqCP++DmQFqhbfHgFoM8Oqj8yZOfoJ95gel3JxqI/CrHMz7bIZFRxbpWNZtUOHdgYP3lv4bZZNC/ZhMnkVdyEojpVIZkr5qxNtj5s8gi5KSMElfmjeo3TeIRsFlZsCzgwoLkd5wR0/UWYcjnxQz/0+pzA8xfgLHKs9eqXUGApoBUBXMck1H3vvWYj6g5X1wCjELOYq67HChk/To27Uc2tq4nh0jQ35Wyp/Wyrt9DfFP8yyvT6BfVr+iDEKk9Yp9eeLbkTDEvXTzUStjPkLPFP3UIQRrRWnuwjlbzoCNZoH/oDacjoBhp7dbhMdecf6Z/TlQb3UHk1dTK2aQ1w2R18MJkuQKE673ZOr7RNsajhmfHkm4LuvOgJf0jX6tsh7I45W1/b/sUK65dXVYNRz+EVTTw31LJ7ODAsfhgkS8/niWfKsLcPQLeIuMo5kIYLkJfiQhCLGtU/223JhkkCzKu33pJ5Lio2rdgFXq6Po7KwDhZ0B/kpeT2lQOt3mAJVV/wb/NQ9pAAXM96HchA3NgFYT551DP5RgVs3UNojMwLSkHgc0E0H70zHbZ5fvPMA8VJ7by2HCY+9yfHhRLGJUe3DRA9Ds0eC6dMX5jOx8GjmQY5CQRuHRNat9cMyxifAh84i/B3w6kvUDuOqfifXGmIW9FSJg6phvhY1ERt56T9dkKREcM+XB3GoVwz+VO6+J5PTF6s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v+OEnNS71nA+Ai0WWNDX5HKNGqMH8ptHhmY0YCjj1vPyVYLOd1V3wSlkVjKW?=
 =?us-ascii?Q?MlCHanukkBdtQqhHcRgWVyLCt6eVkoONamyKXtqrvVVmCWLDm+JFMNl1bKfW?=
 =?us-ascii?Q?witxDnbUVy2LnKVKb7uEOvePwrWnmWyK50AoTlV/sLF43kLhHbMt+gb14218?=
 =?us-ascii?Q?VBdfKuec7bjTHAWRoac0djXKU+ZiTI8Pxip3Cl2PaclH4VegygfEckAbUPQw?=
 =?us-ascii?Q?k1/tb4uxFzEvUKbcodz2rSbXBUalh7Emvo2050C+Xm4KgfszucZnSXE1Epc/?=
 =?us-ascii?Q?xp7B8jPfvrhh/rpzNUgtm9owdATXLtTrOmCGVHFdG82kbRJ+GPjuTY/a8yuu?=
 =?us-ascii?Q?vC6ZOHDV02ggj37b3/Ksso827CZl/t4i9arxv5JqQwMh3lA7bKsM078VT9j1?=
 =?us-ascii?Q?XVR2kBvbM2dj9SvFrG8nd+IV91+BTXSOO5hmefrqEeMAKfbQurvMA7cwpNf4?=
 =?us-ascii?Q?cYN3+LeBoxQJFmYHhwj0o4y6InnIQDeATik6TzuzZsFpyp3wQdy18L392C02?=
 =?us-ascii?Q?eV2exdnU29eY3wM7GugdyBsCkf+nBjHtv6pY3YAvv/OZ2M/L7qO5TOUa5Eqh?=
 =?us-ascii?Q?QAIJ+p1y8NOUSVJVuST44DAPJIpZ6aG5FvCBFuzOi2Krth2685OLZYl+PlpL?=
 =?us-ascii?Q?p8dTEzx+7nHsEYH1/1d0BtxNrkGVHtMuEC4F40+R30QApFalFGIIvnFvJeGq?=
 =?us-ascii?Q?wolarOeJtfE9lDGj7G5NrnnL7tpk4I1VHZi+oTNLLVBp4k/YfQB5U3rgmcWL?=
 =?us-ascii?Q?KU1VcYW4zMzUD0e633hZBtwBCt7/Z3mNDq5r0Ukgz9QqblUpAwPc0HfSBJ6i?=
 =?us-ascii?Q?7N+kpjLz4ptPSZ5fcz2NoJrf67k9+yuBJ+sFzaXdvoyZBl3s3S7B/p+aI+nL?=
 =?us-ascii?Q?yhc9lfURE1izTDkbe5MRbhRAuaIvfXrt5sB2zfJOQt06f3ZzDVGpFtTAVY68?=
 =?us-ascii?Q?N1sxEMFZXti465omUuo5Dkmr4hFCaIw16Bq/8094odBUtLfovzoDDL+pNBm2?=
 =?us-ascii?Q?vaT2t9yl76shV3r6MBRw8bMQaAj1lr03xXv+NfNKR5CPQh9dw8ME12LsTFO/?=
 =?us-ascii?Q?u3+nhv2ihkCIl2zAgEhQyEaSHxceV4LJY2/Lq9UPPrIrl2gyBDjG3AJ/pHsM?=
 =?us-ascii?Q?zNjfTt0LWjmn8xiGDbvaSL3KNpWr/tyKIPv6rYGLcf/Df0Pr+msf6J4r+JHQ?=
 =?us-ascii?Q?doD7hiIGEpT9EUigp8y8TXZEywr/rm3QaWl0mp5QCerZdrIUBoAj5++0SI72?=
 =?us-ascii?Q?PJYHWOCwDc5m++RsUvCN8DPd1YLomKet/imNV3DqmkoG7gtY1IF9dwqpwPTx?=
 =?us-ascii?Q?8qbrghq4y9NKKNDlXtHT/sGnAYKclyP+A/ES3ByjUZoTCAADqhF4Izir1YfD?=
 =?us-ascii?Q?2dyMMp0DZK/84FWQg52AvkKzlOhT4r+WjKgdYU+TldheivUcNl5xhcJGSvuh?=
 =?us-ascii?Q?IcjMcOVfcH3JemA9c7FPo+cONYEfROZE4tCI0zexOS+Gr809+GU2Us0HYxTo?=
 =?us-ascii?Q?uAorVoMQ8QzBhTZCJiSDeGAcYOP4/PNdXTYpfBnco5Dm04iebYGi5SmJOSya?=
 =?us-ascii?Q?OqI97/iXIZKzCa3pTaLW12DqeK1AbtS+RylL+T3G92LGo5lPP6TIrtN0gNzn?=
 =?us-ascii?Q?F3kYNzgobhCtGTPtS8ZiCPCFikiMYF9VllkydPrf3GA/Nh40/p9cdTB5IKgQ?=
 =?us-ascii?Q?sJrPq2faVC2gUrsA7wYaeVPd7rc3gP4N2k3PvIaAdtgO/eYefrN0I2JRtOtD?=
 =?us-ascii?Q?X2JJrVJVyw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XdNyPGqTvYKFJ8HnfHn4oAyE6itD0X8ApRtj+9rQAmwBQdiCFwp6dXT6s16fULM1f11BAFox4enCkMOCT6+Tvrj6jX38TZAelPPvu66MnPuYUqH+nGLcB77MB6RCUZBESnF9PbYWC3DEMEeQ8ceIzLQfMosUEnPKKsZhK6kMwTmPH9rnlMP/ftoVZ92SbGKaGlLSxUSQ2KUtUNBfcV/eFoMJB2/TFvlt5FUENXfhsxjx9lFIoT7393KHF43VmOWTckX0lSy0I/q6TJ76jxW/9rFbixmOUYd8FU9e8GO0IAImrT3PrR0J1VBw+jxvOaIXCpqe1DBOUb/Ax1v14fvTwQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23cbdcd3-c860-4985-541a-08de99aa78b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 22:17:38.1215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YaJj/D66toHjHikyqYadiRxDbl9R3emw951dioo+rsAA6WSssdZFytK7uXPYDIl6Nrn+TqRq0V3z+csDJoZT9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9062
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E28C23F3BE5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 17/19] drm/i915/display: Remove DC3CO DMC debugfs
>=20
> DC3CO is not enabled on TGL and DG1. Remove the debugfs entry for DC3CO
> counts. A new debugfs entry for Xe3LP will be added in a subsequent patch=
.

Squash this with patch 1.

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 74d18806d01f..f0ebdab089ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1645,19 +1645,13 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
>  		   DMC_VERSION_MINOR(dmc->version));
>=20
>  	if (DISPLAY_VER(display) >=3D 12) {
> -		i915_reg_t dc3co_reg;
> -
>  		if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
> -			dc3co_reg =3D DG1_DMC_DEBUG3;
>  			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
>  		} else {
> -			dc3co_reg =3D TGL_DMC_DEBUG3;
>  			dc5_reg =3D TGL_DMC_DEBUG_DC5_COUNT;
>  			dc6_reg =3D TGL_DMC_DEBUG_DC6_COUNT;
>  		}
>=20
> -		seq_printf(m, "DC3CO count: %d\n",
> -			   intel_de_read(display, dc3co_reg));
>  	} else {
>  		dc5_reg =3D display->platform.broxton ?
> BXT_DMC_DC3_DC5_COUNT :
>  			SKL_DMC_DC3_DC5_COUNT;
> --
> 2.43.0

