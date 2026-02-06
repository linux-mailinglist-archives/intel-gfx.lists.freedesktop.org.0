Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MEDJCZbhWnNAQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:08:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E21F5F98FC
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 04:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E478E10E00E;
	Fri,  6 Feb 2026 03:08:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iyyb2Heu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6346E10E00E;
 Fri,  6 Feb 2026 03:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770347299; x=1801883299;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JO9yECQKN/KFed2PWdLvnAnyDGPD+VKUzsEk/Uciijg=;
 b=iyyb2Heu9/JpYkt60Srui//LtSYY7meEFl94aFKWuuArrNNKgFmIIGe/
 kJVatMP5Zg1CUPxFxdsBZw+HVRU6gHTcwmeIQtGrBGS9Hi6Ur+9T0CqTg
 XfZiFMMhhML4Be/wN0sAD1fLEAo4pHfhtdgtlfyevo29JFh6d9enrT9q/
 9wlrXS3TjIUShbI3uR2SD/fNx1RGKL5KMDQVfhmyqXSHZ0Hv7JZeERb6i
 yJG5G3El1V5yRoXJF2qMWANmMGjD9H8KTcw+q//Yb82PFb+Q9ZagO/pMf
 iblcJuFCDXd5MB0AeAu7zvcEYuVuuVL+DtV8PNCHIGowOPq5QNpxmVRUp Q==;
X-CSE-ConnectionGUID: dwXcYXP2SVaL6dFoRXjWTg==
X-CSE-MsgGUID: S5t/1QaARuCRm0k4Do0T/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71594462"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71594462"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:08:18 -0800
X-CSE-ConnectionGUID: HnLdEutPTh29BUOgRVLJMw==
X-CSE-MsgGUID: ru4IhWg6T3m2zUQ7RzJSOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="248356559"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 19:08:18 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:08:17 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 19:08:17 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 19:08:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oVUD+IfaO7JFXgYFU3hiDtIiQxTNAlhFF4+1GyF5hSdW1rgpeG6XZmqRea27ttkg6XQdQvouTvG1S4c1X00XyUnxkD/w3ZsS+MxmW3cYUuaH0mg6ml1mjYvndAoKTUhH9di9Fht8VIaLhDfs2z/F8Emih7N7mrnxAXmNE+ZjYX9Z1/ZaszTJOo42XQBMdoveu3V+NCHnmWq+hsp59/Hi92gOCWO08+Xc7blH22O8W13aMP1V2R5N1DghpSUrE7Pg5uBcPliLzgO+VeAcvaDYiJtWVyRk5EU577RSuM4GdZmGeIYqOFUSjYXrePC1sa6IxxCms62WvcOgAhO2/SXIrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkHhZAbJBT6ci8Dc545AL5jPt9ZT4uUxn8PNYvneFPM=;
 b=jiAHEMNVyis8JDSEz8YUPxMMbQNP5OE2Hnsr5IQg1XG6IXOv4nIQ5VpzWvw8if2H0QyRMT7kv4bpO2j1cXBoEQDTCOcvDQ6k3C8zqTnM7r+/KHD5w9roqIU2G9/ckvM3ZrjRRr+Z5xj4eSrWCEuxYEEY0NeTcgg0WDhya9QtgVTi5RrNXc3mXYKsI8P+x2uMvCxtSPXiYeQ4k+08gJjDg2sDVsaPg2X+9OuThQYoxTHD7WS2l41C9NJbqu9/n7tIgkF6Ls1XG8Ywi3JWGclP+wD/5JEBqTCaYdFj4QkyThIYxxVdTLZvxkn0zjllWgVEHxi4miYaBRFqXxLan75CBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS7PR11MB6293.namprd11.prod.outlook.com
 (2603:10b6:8:97::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 03:08:11 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Fri, 6 Feb 2026
 03:08:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2 05/10] drm/i915/cmtg: program set context latency of
 cmtg
Thread-Topic: [PATCH v2 05/10] drm/i915/cmtg: program set context latency of
 cmtg
Thread-Index: AQHclRdWvuDwOrO8tkqJWkqZZEtm+bV0/l1w
Date: Fri, 6 Feb 2026 03:08:11 +0000
Message-ID: <DM3PPF208195D8D9978D98FF6113B768B72E366A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-6-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS7PR11MB6293:EE_
x-ms-office365-filtering-correlation-id: 568f4b32-66fc-4ee3-d3f2-08de652cf631
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?hHKf8bLBdpbKrQI8rnuTUd+8xFRWt44Me7iMtE8fKaC4nJX1Cw1lKAJzGY1z?=
 =?us-ascii?Q?iTJDGfv5B7XBW3yxS4qoty+DRjMvhj1kj7WEyrlTJntyCCHZY34iJtGHIdeN?=
 =?us-ascii?Q?7XPU+j6QlzyYplzsb5h1J3FZ+X693gXxvMAwYGJjThrMTu4EJIReHjLgI1Oe?=
 =?us-ascii?Q?4vsO4AYW3cR53OpYZtp8T24SBsKjF1RzH96KmHAV0BDQsxHpKldF4R3bakBP?=
 =?us-ascii?Q?RyEnn76U+ojphQP5iY/2Edc5ul1yhDLBf2C+B8rE6vJZI2GERGwVHnyiW3K7?=
 =?us-ascii?Q?SUvOhpWulXQDl0n3c7Yw5wuIGrxL2zo6igPOUvgGxuJ6kyGa/46wkVgRSBCd?=
 =?us-ascii?Q?qKFiay3VYNOdJG+/NeFD+eCNXjyMy1X/B9hTXjEBGLYjnFOwE6XKnpgHbQ1g?=
 =?us-ascii?Q?qAauj8ST+3JBcXgqPxTilRKdSPHRqFeIkQWt+FygVfyRJHkfZ1w4u7lnUTTT?=
 =?us-ascii?Q?sg1F4oGojSlQ6fXq3vYO/DeV9cp+S3iILDEfAtUl7Qk64zgTtlDbfUz41Gfy?=
 =?us-ascii?Q?bA57eW/1dE9z+zIrCxn504Nww6qzGWIQ3mKsBPkUrjHa4cvtFrYprlGmnX2S?=
 =?us-ascii?Q?VHYg4D1VlOmZXwWncy1T85AQ4atsB8gwKYi0BAv+Klb+rdSS4Yo/BHSdAHbA?=
 =?us-ascii?Q?DDK1cfRjrr6I4Ph5i9HtMPZYSAyZS/Xt8X5rEK8ehKHCrAEa2p9sMyyo3MIq?=
 =?us-ascii?Q?REHg3YCUZ6Dk+lttWUSdXxamMnMdo+jFa3rzHnDImNBv0H36WIUCnXAo0BMZ?=
 =?us-ascii?Q?iRupBj9Hvi+LYIXAX1Jm81Y/+24ZFnYcMqnckZvygzbwRT028p5gk465Xzqu?=
 =?us-ascii?Q?osr3lvkFhGoIosH24TGqp9DVGUW45DgFIP6E+RLbNi6P7/zSJlsKdqQp8rMC?=
 =?us-ascii?Q?MYG3ErSI/D39bjwlP2jfE79Oa97/cPyGimV/lARtNjYAmhJgEuROmtLhR75L?=
 =?us-ascii?Q?tBS6pNLX9CnuDeOpeESVjGhX58hMQbK/aYwm20FYCHOkOBevZPpQpP5RfhZh?=
 =?us-ascii?Q?qGUii4rNoLzu5Ffr0KDzTSONJIAQTc1xBMm1Xt4h3PYhAvlOjjUaMeD5Fcp2?=
 =?us-ascii?Q?BUVvEDopv0GKGafiLR0jHUMtcFVDoPP1ILwc8Os+mQ1afVSxL/ace8LqHimf?=
 =?us-ascii?Q?3ndG1AMfg46FNjKCB1TMpIzkuznPj3+huAvVDMllx6D2WHu4c08oKSNUpv3X?=
 =?us-ascii?Q?+q1WziQEVWufHJz9BdbXBQq9NzMOC9SfctQu4dYks9Q9LSpGGxZAyD9zAMEm?=
 =?us-ascii?Q?zmXQA5e5iPDDiF9h3cwMRQJmXzG3CEUS9I1I8pwZPYdjIX8JZpO5GRE98Dph?=
 =?us-ascii?Q?n0jW3nrZXsfLVrvD8ZlmdA5xlokvhTzhttTgcWJ5lE1ki802VMP3DTBHJTaO?=
 =?us-ascii?Q?6T5vKjOAXVwr2ev6CIOwQYTJRXMCOhrnFEBcyfp9FyEgWIp8+M81fuscwRri?=
 =?us-ascii?Q?fpdpGFO5sDjc9cHiaySroDIlhlDKBnZYG90itdwbPYJeCflOF6rowpt2g/CP?=
 =?us-ascii?Q?2Sf2frnvis8zW1mhFDFhYxOW0aVHw+X5gErNIx33wtioD3PFftfnRm3+0TMb?=
 =?us-ascii?Q?NppA0SFF306JbhtTjZnz4wisE47bX7uEeq32kdhSH3L5+ctDgOY6kww2Mgbr?=
 =?us-ascii?Q?4S+NTW/3d8SxLP66z/OcUp0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UnV4RzFkTTZuaclsW6LEsXBUeOvWqdKsvt4KKPjNJOM9jK/3kdfOg9KgF0UD?=
 =?us-ascii?Q?9pJoomQHmI4cmKLkOl8sPp4zCmruXenu4WeNJUMvzXwgXCb8g/vZOGy22fr5?=
 =?us-ascii?Q?KP3zF6B2Q8GeOViMjaX7X6ICeq9Zn892nFl+p9FVAKmMd251Jby6A3pw7Gct?=
 =?us-ascii?Q?h71vfU28Vw0jCGNatCUGcLyCsDldbl7LFYg+WCuiUiht+vGfEtcPfYnFAA+4?=
 =?us-ascii?Q?BOjc3WfaGcC5Ap0RFevpSI9U4YrtqSlSff6Td4yjb+HiUu5pjlwHcS65UWMh?=
 =?us-ascii?Q?mMT9YK07yJmLVYqV8NShBfHqzaKEJnHuDqwmJ/Pq+NZ5ojHfMSAKoxKC/T+m?=
 =?us-ascii?Q?MN/q9yNmA1wvqe3xjq8sV1rdQ5QM8TlTrsMiSYjPZBwZW20tcXEmYDn+5kR0?=
 =?us-ascii?Q?OjWmKgeeUBQz0zTeIMo8l6lGFZmeyDz906jlVkSDnl4ebLANS3ZOPryJ8bGJ?=
 =?us-ascii?Q?+Uj+hjwVE+HSm2k5CcQCld+gP18Frh3TCw62DRR2x28WXQD2tgxnLxW12sDG?=
 =?us-ascii?Q?fmrsN6uQsMP/8ztTBJjH2cQiPFpY+pAgaKvwV7nkUIBTJnwgweoGOq4tPeBF?=
 =?us-ascii?Q?IplMeUbAm+4jvXQcnO24Gu/A6XFPeXQ3QHSevtmx/eTFusx1wkvwCDt9mdyp?=
 =?us-ascii?Q?/JTjrDOugbtVE6arKZ1ou0bgSiXHwhWIPuqZ8lOoqk73By5AnU32kK4Yhfww?=
 =?us-ascii?Q?Y19Z1HuowiV8OsL2a5ONX1boCePcb2ReOodVb4OBuo72Yrz+At4FCgY4GgXL?=
 =?us-ascii?Q?AdFhAgZ4JlizxkIDpacq3vsY2djPgLq3GAzBacn58vbxkUb73HPygpThIr/C?=
 =?us-ascii?Q?OYsVUkIEGytEOXYEBxpablNJ0r3S/dGRecxINFX7jOTkVrvkVJS2oWQJo3ZX?=
 =?us-ascii?Q?HsaZk8eDa1F9AOpSHYgv3g2mM9/LviHRrJbaMxImG7//zaFqorYC7yAGOCzs?=
 =?us-ascii?Q?1NVj+5hOPRJ3vJYwz1ERuTfA0s5lMinjgCG9qrjCEPYrYc03PYJTC8g5Ra8n?=
 =?us-ascii?Q?bg/mluFq02kCSmu95RnkrTQks7hr5OkaO5Lm5vRVe9DgQLzbqbg7fmXYJrjO?=
 =?us-ascii?Q?pOWF/DozjK9UM1GtqEHxXnho8bwzGMl5BBzTXya1dacn9g6hXWOZnUG4jJmO?=
 =?us-ascii?Q?0JPzFgDk96v/mcMnNhvjZE7Qvd7iSEKef9mim4jyEFnuHEGPPbhQeNpMU61n?=
 =?us-ascii?Q?BsVdH9A6RcoGeNrZLhMqMztI6MIxO2mt3hGinyGb1IZ2C/XBZ6xZt3gAjO4E?=
 =?us-ascii?Q?ZHhSCnxAvMJ7MWV8aRJQh4lkzmkmUTGGBXOwRBRpDZ9j6aU5vMXLqOxmQtHo?=
 =?us-ascii?Q?FwK2PRi3PT7BErUMPOdxoEFPx7edt8aCYzPLMiVNL6mtDkzfT2HDTBah/+tO?=
 =?us-ascii?Q?bKAn3C58Sl+wi6Mg9XoWqjbhqzSKnlOR38UBUZkP0725ImR7/Shopi2FeqNR?=
 =?us-ascii?Q?t8xJsb+1wPjzaNYwNnWI1hAWmDPgveV/6ntuS6L+G6W6fUn51EUznM7b51JU?=
 =?us-ascii?Q?r2sJ4A/+K0nphl+etjehyFOXnPrdO05uPEBLRYmzaA753HaiSDFlIYyJ1ZQ8?=
 =?us-ascii?Q?a1N3/VTEIbRdhQM9tYgZkwew62m2HdqOPkZqvViIeQgyGFfCVe0USnSHISGs?=
 =?us-ascii?Q?cZ/Iup3mJHPDPrhYBKG2sqbUaXe8x0hrbMI5nk/4JNrDz5HmweiSQc5cdsQl?=
 =?us-ascii?Q?swSEW5pVlHzhuHeso81wRsvUjxxDfkMwtaU5XXkx9v6wQZU/weqEfanmQdgc?=
 =?us-ascii?Q?sfiJZ1fO/w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 568f4b32-66fc-4ee3-d3f2-08de652cf631
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2026 03:08:11.5521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SrRqW6aI+iYxid1RkcowWoCwDtTF7h5a4d0xTMszdlxniIrRAWvridBjIozbEiBRnODrJPQP+slXry26Gzebog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6293
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E21F5F98FC
X-Rspamd-Action: no action

> Subject: [PATCH v2 05/10] drm/i915/cmtg: program set context latency of
> cmtg

* CMTG

>=20
> Program context latency for delayed vblank timings to create window2.
>=20

Bspec link

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c      | 4 ++++
>  drivers/gpu/drm/i915/display/intel_cmtg_regs.h | 2 ++
>  2 files changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 26adf70cdd00..cb1376f4c13f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -236,10 +236,14 @@ static void intel_cmtg_set_timings(const struct
> intel_crtc_state *crtc_state)
>=20
>  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
>  	if (cpu_transcoder !=3D TRANSCODER_A && cpu_transcoder !=3D
> TRANSCODER_B)
>  		return;
>=20
>  	intel_cmtg_set_timings(crtc_state);
> +
> +	intel_de_write(display,
> TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> +		       intel_de_read(display,
> TRANS_SET_CONTEXT_LATENCY(display,
> +cpu_transcoder)));

So at least three things need to change here:
- We are actively trying to move away from doing inline intel_de_reads like=
 this with arguments passed to function.
- We also try not to read from HW and write back to HW . We need to write o=
ur derived S/w value to HW. Readback needs to only
be for verification purpose. We only use H/w read when we are sort of out o=
f options on a viable solution to derive the value at that place.
From what I can see since you are using the exact values that is coded in T=
RANS_CONTEXT_LATENCY your work can be done by crtc_state->set_context_laten=
cy
- This belongs in intel_cmtg_set_timings (which I said before needs to be c=
alled from intel_set_transcoder_timings ( Also I think you should rename fu=
nction to intel_cmtg_set_transcoder_timings))


>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index eab90415d0da..3cfd8eedb321 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -32,4 +32,6 @@
>  #define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) *
> 0x100)
>  #define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) *
> 0x100)
>=20
> +#define TRANS_SET_CTX_LATENCY_CMTG(id) _MMIO(0x6F07C + (id) *
> 0x100)
> +

Usually we call this index instead of id

Regards,
Suraj Kandpal

>  #endif /* __INTEL_CMTG_REGS_H__ */
> --
> 2.29.0

