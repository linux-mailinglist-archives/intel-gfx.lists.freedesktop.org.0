Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Nj9kEoOrxGnl2AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:44:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 876DF32EE1F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:44:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB62E10E8FE;
	Thu, 26 Mar 2026 03:44:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvCSQlr3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B9B10E8FB;
 Thu, 26 Mar 2026 03:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774496638; x=1806032638;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KfhY7YOMS90++o4YzFyJPz8lRf07GBt/cFh04iuG+R4=;
 b=IvCSQlr3hfi0sQ0aW17q+KqsGWGXCCfZ4A0CCo1tAoVjz23qRL+wBt1i
 pnv67kK7/HAWkv7/4WMtbncHMle7iKd3K+sDrAzA3rq5S5k+zA5vWy0+I
 x3THp+65MgHbEi6LEDoHvmamEb9GvCFWVtRaufwU652ELL47BHxqDQy9P
 z+dDjnNAEnhWyAtM+/Hp+j8xKts4oaL09J5u9+mPmXysvqBqMxQjrvgUo
 QmHeXe2ss09pgf3zVusUtsBdXvheW/ofYDuKaZD69FDX31pDySL8u9a4d
 44nOwcK3ZnTjUidtNeoACVtkRSI5Q3twB2jezkC381ogrPaoGm43ORtmy A==;
X-CSE-ConnectionGUID: FM6w6spwTYCanCtHvSWYzw==
X-CSE-MsgGUID: 7HdrO+rQTT2TgTpDLpCZtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75566647"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75566647"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:43:57 -0700
X-CSE-ConnectionGUID: r/AtFuO+TRCwENG4Ev0IiQ==
X-CSE-MsgGUID: 1Uhg3dcYS9yLFZt0ZvgGfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="221981661"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:43:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:43:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:43:56 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:43:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TierbxVLcE9O2Dvj1lPzIEAD182ih5UgTh+nnMtWh/gBe0gvh43qggvtj7dUmKOwxd8Yo/s8bmczqChN68LaHpscPf4icjvO+6K9UZ+zmlcRyR72NlWXXt2UupJzH/vwGb06QWp/E3/pXS0X4//EXBvRZHZ1uEAmNW4hrVSk/1Gb2gz+INmxcVSkH64QIzJQ8NEnt/E/tPiSbXtLF7VD0zcsCbaOrbnPzZb3YdLgYxFD2YCACWsE4FOwcEnRbWvL7I4xn/On3fBjJcKiCgXYZw924CKjCEnYHQEIpa7mkpIahzd9J0QHltLOqO05o6q3UjVEGdyR08LybB4BCg/L/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6oZt2O+ctdLdvZd1//+ooMlHKZcxj9apFa00d8qd9oY=;
 b=K5GsvgSH6TqDA6rPeLdxTZxnpWuij3E2v3O/3XqWwlI6zB3E8+855KJkXcmiXm5M+VMmJHDaEwAhr3s4kz596N0C7rbnw/ZD8SPC8b1w5GecrpTrM8uFZr8JRAn3Q9YNFDma4tRZftzZgqiIVEwUTd5VlbstIv0v5R4XD06ZyX1Tu3DBpLREnwxtusT0edYsg6TkMoO7AkhteM5QjDHpvqoLYPuayeDUc+5AXB03jqGWInACip5bzSXqHhcJUjF6VdqNgMVMV3VB4kV5jU6JhZrDVqjwBepQYEgCvWOoN6E8nAPaW6JD2AoU3L4CSirYJAbjheyTQ5rMfkwsjLCj5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PR11MB8758.namprd11.prod.outlook.com
 (2603:10b6:0:47::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.13; Thu, 26 Mar
 2026 03:43:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 03:43:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 15/26] drm/i915/writeback: Add connector atomic check
Thread-Topic: [PATCH v3 15/26] drm/i915/writeback: Add connector atomic check
Thread-Index: AQHcvEe84qaNWIspqk6eaSDLUlbgH7W/LEEAgAD/6wA=
Date: Thu, 26 Mar 2026 03:43:52 +0000
Message-ID: <DM3PPF208195D8DB2F5C2F1EC8E9013F6BBE356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-16-suraj.kandpal@intel.com>
 <acPUIGM9Sox4YS77@intel.com>
In-Reply-To: <acPUIGM9Sox4YS77@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PR11MB8758:EE_
x-ms-office365-filtering-correlation-id: 3af97782-d73b-48a9-691a-08de8ae9e62c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: KkcYor2kyjoEcapdRshZMw4O9s4FQyYyCRUkCBiXGTTEkEZ6sjcbytXqpRmqd+xn0atlsPTBrIzAj81jTobUWCoWiqw4ZcJgqGH1ngDSwXaFAdoVjbkzfFiysAILLqcvmo9sZuzaOEvG37gNbSVI+jlShxRxssPgOEl7v2KlzeRDRsQkCzrYkdPfRmt2shew+Z1UckAOtLQ1M3G8yPB5z17LIuR9zM24kL4UjyrLhumBWWf8YIai5dQAH6l6Ah6gHV63GAertMT0BzZZOF4RFOM7Z4D6S8LFAHnVOHBsV2C+GaaBpgDWeEVJ0j6nRRZ7NjQtnwrPYOJJJzWq+VwYjC8mRGfdu7qLP3k7a3fXfDuEeYoIXslFhbIzJEDwNFidw+0NRD4sVwSENZY4eeETLnvLHl37cSb0WLY8F8nlpFg8YS0s//j0U/xnoZ0xSWqtFTbIvcIhjXb+cvAUW+rry+zBW0ceVOPFIIsH9lXXhNOJY/2q2bBCdzQa0H6BD4G/Wp3oTAOQ4gP1p74zrHxcVVLtOC6rz62LVUH+RqXsTNUyBrU0Bv7GkYsE6rBILh9GUlZHIoSdZOuzKlEJrly5aQGwQQgvwT+44CTzH3Ucf90x6gmSMqJj7k7lnckWg0LaYYIRylWiuMybExctS8+sRp0A2e6A9D7J5Sqzfut1VPJbvPE52T+WIDfS+nw5a0F1rOxePKC7v5SnmdX/+vU+7s9I8C7062tnI9CDL/f7Mq9bzjOxv0z//ryjzSarJOlMRU9OjfI22VT63eTZaZNc8n/W1PuFvtUqSCfFNrLiLyg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Kig7p7j57W3Zqr7q7718NUGhJETNo7x2hqK59Qbg12EOIlJxwJIsrIyxZD?=
 =?iso-8859-1?Q?I791GfMoGeHLQ0AHyS1PkgrNb8QPn2Om/a1WHzAHTqMMe04mUdsJWp0p/4?=
 =?iso-8859-1?Q?2l1mOVfCkSNGVWnVNngPHPj1GYDDaY/XluaHAvANs6oRvViRGy2kHkAV+l?=
 =?iso-8859-1?Q?Hkd4zX3rpF3lgPo9b353X2CON+DyAi51D9aEBPN2Z39ZzeDstlfPPx15vA?=
 =?iso-8859-1?Q?zBCiRclWi18EfcRMd1O1qBWpsTX/j8G5pXv2N57wf6ufoqSTgTFRQ11qF3?=
 =?iso-8859-1?Q?N0iSY3eql6ijlcPjKh5f1vdtmzhmI5Znyltgqa3WFXa37yH+7lIqivzzvl?=
 =?iso-8859-1?Q?rfUsT6iWgg6e6oet/q6uItAeE0xYUzJKdb+WprF3hu3AUmtlclfU2qBmi5?=
 =?iso-8859-1?Q?nL3Ff7wncqxBpue8ZWfl8IEgtAUbDPG6sCG6UHvbP/q9ZX22Fs5mked9K+?=
 =?iso-8859-1?Q?CUx25HcZkFrrO5aqGOGam0pQjUwp6ELzqLbRlsCLB4FvdKiBUcamm+XVp0?=
 =?iso-8859-1?Q?6guqazEYpcbmKc7dZOk02uQSTm0a7EZPSMX0EMiV3eHgzQ/kOQpIBg82zF?=
 =?iso-8859-1?Q?NpJS/Kr0KT3mjjK0OJQKH4x7z61KMR8dm9lbUbpAw6ZCj182nMb5PaEGvC?=
 =?iso-8859-1?Q?tki+uovZed56fWloA99BWIcAsbDXW/5kMGmQUPzki7vlxUd1j1Nym7TNxZ?=
 =?iso-8859-1?Q?bkgt6vSuJKW8gQsQ1cRsD4tTKUEVb5sqSN2CAK9DRRQAPnQ8f9Ud6Fw4Vj?=
 =?iso-8859-1?Q?C+FrDcKLI3vDDbdrU4XPa8V6+nNGDOuEB+qJrXVbGGiGJty8l87u2V9VC8?=
 =?iso-8859-1?Q?DckXBlST2wsojSuzHdTkJXevY8uSz22jburoQQaQX4vgPGAzJX/wE4EXUE?=
 =?iso-8859-1?Q?uXKEdHLJMFiwZA3D7uj9oQgiOAFc+PfXNn8ZC3la70dfO8nSgEvQBbzFrM?=
 =?iso-8859-1?Q?z5ib2fvUghjrJWkeNBgKiXl9hwXVw8GyyqIh2SZQrRHp03e+m+mRFaEhOz?=
 =?iso-8859-1?Q?40J/ORPtECeNq07pBuKYo84xxDexS+PwOtV8llCsdrClA8eqk1pNw6ZmrC?=
 =?iso-8859-1?Q?si5TDCjizxJdyeMGNRnMiRhxZfrdT5keoRO3hZLkBkCVqSH9q+F9NoJU54?=
 =?iso-8859-1?Q?RMHQcwAyXnRJopa912HLv7vF3piKT5xOy9ZqVazcwMdn8FjwMX6xYcZiig?=
 =?iso-8859-1?Q?F1MqeK+0dl9O+rkJG3mh6i7Y7g4yQZrEvjdDAmFeN9V7gTpjALWy5l7vGE?=
 =?iso-8859-1?Q?6TtmlJSwFSVM6iHabrvssBCvFuI97U+czzuzzux2Wh/N+fIcMANn6ooZ7U?=
 =?iso-8859-1?Q?hfLuxkCHKTohUE4S3qhxVb6fqUS3PAe+pOJUGs9yc0vxDqcey6i8IDjFn1?=
 =?iso-8859-1?Q?bUIQg/xxXdlCcoBnDb6YMCly+vcgeWJjdkqZQW7BbviijzqSbrgq/LaHvx?=
 =?iso-8859-1?Q?9PKvPhIhG7Jzw45L/vl8h1LqbkyBukPzOqG3EqUX5KG0IkTmSKmb4gLtUl?=
 =?iso-8859-1?Q?tze7pGwc7bMpSgd2IByQfPhA3JwcHdi7DUGoqG37Twx2cf0xy9JxB3WY+v?=
 =?iso-8859-1?Q?7fesamVIebYMkHsIQ3qErIJvhJ0qbOKzThZ53ZHbT1zLtbvFvc+AZXljac?=
 =?iso-8859-1?Q?ea5QrKrfHMnJq7+Le2qgYIyAxl+cmWBe8jVN5pOlvFdCw7qoSbtI30TQ/7?=
 =?iso-8859-1?Q?8mf3VL8H3P3clZuEhCkAIY9tJHxqzYpTHVIkMMV8iuO4KakFd0PGb1w0at?=
 =?iso-8859-1?Q?A9QT9vghb0simWg/ena7xBRjCle98+cQ6AI4ZeKfgCvrtwD7nhSdbbkzax?=
 =?iso-8859-1?Q?xpyl3vfa+w=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KRPxO3DNVdoQ91vxzLtIraBkusI+h9RfEl20HmrYvClwJlmD8QbRpxs0jrOWagR4qOKihKYICFvGOM8GV0OrgwvGT96Xf438no5f2pKFx167WWMkYfX2hkvmQYjlI8+2RUllBFt9QVhpN1GO4umgZeJB3V5dxIXTSonSmu8uE73ch8b2m1DZdTYeArEdF/tDWA3FuN0JR19ybGBu75fTwSEjPJEbWLg5c+R2bbGZGNsinWy1QyIQsLvFtagDQ2m23kTHd8jKi/mh+oPvr9JZvY0EDR4zGufXfdh+V27aykjbefty1qSRAutn401UG+W6bfQaVrbsSGI6jMwkrEdrpA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af97782-d73b-48a9-691a-08de8ae9e62c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 03:43:52.6252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjZMrk5XEVIKZ8e57KVa2pf4zn/CQr5pMca8XmfJU4PJDjHwhO+iKpfd8l+vqOnjMB3Cls0xiFlyZ58Ty2NZQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8758
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 876DF32EE1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 15/26] drm/i915/writeback: Add connector atomic
> check
>=20
> On Wed, Mar 25, 2026 at 04:37:33PM +0530, Suraj Kandpal wrote:
> > Add connector helper function for atomic check which sets the
> > mode_changed bit and checks if pixel format of fb is valid or not.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c
> > b/drivers/gpu/drm/i915/display/intel_writeback.c
> > index 86b53e4603ae..ba4c162847c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> > +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> > @@ -167,6 +167,54 @@ static void
> intel_writeback_connector_destroy(struct drm_connector *connector)
> >  	kfree(connector);
> >  }
> >
> > +static int intel_writeback_check_format(u32 format) {
> > +	int i;
> > +
> > +	for (i =3D 0; i < ARRAY_SIZE(writeback_formats); i++) {
> > +		if (writeback_formats[i] =3D=3D format)
> > +			return 0;
> > +	}
> > +
> > +	return -EINVAL;
> > +}
> > +
> > +static int intel_writeback_atomic_check(struct drm_connector *connecto=
r,
> > +					struct drm_atomic_state *state)
> > +{
> > +	struct drm_connector_state *conn_state =3D
> > +		drm_atomic_get_new_connector_state(state, connector);
> > +	struct drm_crtc_state *crtc_state;
> > +	struct drm_framebuffer *fb;
> > +	int ret;
> > +
> > +	/* We return 0 since this is called while disabling writeback encoder
> */
> > +	if (!conn_state->crtc)
> > +		return 0;
> > +
> > +	/* We do not allow a blank commit when using writeback connector
> */
> > +	if (!conn_state->writeback_job)
> > +		return -EINVAL;
> > +
> > +	fb =3D conn_state->writeback_job->fb;
> > +	if (!fb)
> > +		return -EINVAL;
> > +
> > +	crtc_state =3D drm_atomic_get_new_crtc_state(state, conn_state-
> >crtc);
> > +	if (fb->width !=3D crtc_state->mode.hdisplay ||
> > +	    fb->height !=3D crtc_state->mode.vdisplay)
> > +		return -EINVAL;
> > +
> > +	ret =3D intel_writeback_check_format(fb->format->format);
> > +	if (ret) {
> > +		drm_dbg_kms(connector->dev,
> > +			    "Unsupported drm format sent in writeback job\n");
> > +		return ret;
> > +	}
>=20
> Pretty much all of this look like something that belongs in the core/help=
ers.

Sure currently some drivers allow blank commit we do not.
But other stuff can be pulled out and be put in a drm writeback helper.
Was wondering if we can keep this here now and I can then send a follow up =
patches after this putting all this into drm_core
So as to not make the whole series stall.

Regards,
Suraj Kandpal
>=20
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct drm_encoder_funcs drm_writeback_encoder_funcs =3D =
{
> >  	.destroy =3D drm_encoder_cleanup,
> >  };
> > @@ -182,6 +230,7 @@ const struct drm_connector_funcs conn_funcs =3D {
> > static const struct drm_connector_helper_funcs conn_helper_funcs =3D {
> >  	.get_modes =3D intel_writeback_get_modes,
> >  	.mode_valid =3D intel_writeback_mode_valid,
> > +	.atomic_check =3D intel_writeback_atomic_check,
> >  	.prepare_writeback_job =3D intel_writeback_prepare_job,
> >  	.cleanup_writeback_job =3D intel_writeback_cleanup_job,  };
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
