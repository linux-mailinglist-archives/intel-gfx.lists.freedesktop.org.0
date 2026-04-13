Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QA7QBARs3WlNeAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:19:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0F53F3C04
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:19:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19F710E53E;
	Mon, 13 Apr 2026 22:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E/LCY8ZJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EAA510E53B;
 Mon, 13 Apr 2026 22:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776118785; x=1807654785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pTRxrPIsGF1bCk/K75US6BB4AuG56Rjucrtg+mmRprg=;
 b=E/LCY8ZJE8BF+jpAW6+1POngcee6k9G8eL6dCmhDzjT/QM4fznuhaqN1
 jSwgi95NudYuDwmBiJdMABK6hc2v76UCXnjH5A6IUDgowdDoPtKT95IZc
 uZc4Mao8k0G+2RaRMwYB5gdgjoSyGZ5uMP2mylOZs/E80WRuCyqUimFlY
 dkxx1LkeVjXd/AMwp6wbYbZmqCpkEXDBqvtirC/00kZfaj2Ahi9GxBLJH
 /5uhTxsjm51aUcDXk0M2RH8nDnv4U8NcHGyUxm6JcjW4+FHFZGMWfPCMY
 mP7W7CLjWvosyfUi9dPd70EM8i2Vh2dYQIDyWbCQwIYgfWBMwAebjOnrT Q==;
X-CSE-ConnectionGUID: HaQp7FKYSxqpf146NDHsMA==
X-CSE-MsgGUID: qWracRIzSZGRKikQwseEPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="94463989"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="94463989"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:19:45 -0700
X-CSE-ConnectionGUID: H2iAwwphSOCczszOzqHZ+g==
X-CSE-MsgGUID: j7ndWgLkTnyVoQNrZfg0lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="228869115"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:19:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:19:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 15:19:43 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.64) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:19:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jtiUm+6h6UIk9VGsjmfYbxh/SDLJYF+cGSxGMGfCI4sXGF/CAaglbFlDAKVRxge2JIHyidWMP4LvEnLBom5qpqz81muut91eKnc0KIhVO62ThDQ8LbSzGqSB+COw+2nv1zSpfowJpDoplLlNYAAwUPZg7ACVgEU7NCC98/jP+XwSTIqaA45LCSbgAYh96DvMEdRzAXNyumQ73/QtslxoJJN6G0tbhYOuVV57NJe7byibovil97Dhx2XRCh7XeCBdBgOsb9KwE/b5Y+GLF5YUxU+YosHN807tJmLiWkAZ6PsmsWE9JG0xp5I4SmKRL9f6sDelcSGzGji9kqgm9qV+DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lwrnr6bqPVM+cGbCYTjOtXagzgOt56Rt3ZQppcL/EHY=;
 b=ZBDjdI9myVLcw/GWMos2n48dSF1FR9su07q/E3kcovuO3EiVNlZuBYL6pD3qTssKrSI3Fl98EFnx4tErJkTMPIZzz+F0Mz3cw9EJKZuuhzh9H0V4wjkv4dEiuPLSMbS+G02ZHPurGqGBq8eQgE3HrPflPmLxOMJ9fWVzWcIFx+meD6czvjpabVIjUW3lJdD5gKmycSnEjWmfckh6g2KLGU3GvGU/qktUOu6FMXtIh+NZX/s2PHdHgZVr9/rVIhDHISC7E0QjUGbYXzz4qpcYLqEHllHpHK7bjHKtsBNezW2BZ5W2Hl7C7RFqYjEaAcX0AvMfe82hdjy40kCvVp5KjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9062.namprd11.prod.outlook.com (2603:10b6:208:577::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Mon, 13 Apr
 2026 22:19:37 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 22:19:36 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 18/19] drm/i915/display: Add DC3CO count and residency in
 dmc debugfs
Thread-Topic: [PATCH 18/19] drm/i915/display: Add DC3CO count and residency in
 dmc debugfs
Thread-Index: AQHcvUQ5R79sl7IV2kyVDZDSmSqL+LXdrHkQ
Date: Mon, 13 Apr 2026 22:19:36 +0000
Message-ID: <DM4PR11MB63608032098D8678675EC44EF4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-19-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-19-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9062:EE_
x-ms-office365-filtering-correlation-id: 76d73f76-1529-4bbc-45ce-08de99aabf79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: lmq02hcqCdbIbcf4al0po73dGVoMLWqbGR3MSKHOpOBvEtUh3eS7XWiiEoi40B4lMnykZ4QuiOms0Y5JhXChv7wE2+GLDb594m8eh4wjQeKGuIwirHzvhy1laPxaUyAfpPVsGtWgS5JduoLqNBFcJ1Hy5U7mor2YG/FbYLzNAtn2zZuezq5/XnplIxfUbV1NiNL10mLANkwQEAprtHLoGgz57mKM7zkLw2N/eGDxNb1ZrNoYyOMHeOJ/L9JWTBwzSzLD1QXZn1DsXy/C0ccXZajuU99W79IvcH8M0C2vcivXq5X8ag6ntweav08/l9rQA37QE1lH76TQwxDeBdeJk6ACoEiYgkWe8qFe6AiNbKUShuIwcDih1vt5JRHdhMLZU32j5DHSNbac28Ck0A4s6P2/+V1xPdCpU9LsyTVXLmgHifDOycNvlVpOgA3nbhg+hxWXe4Nel1L0klGOtbmEIRXJn1gBge9h/U04rqxkIV4Jmp7OcnhyMQyGTpY+8mQNMQHGC/aShZJRMUXKGnww7g2lhrAZnqkSpmPC9hz7efAXHw2uwunHYb7VeZLllLpBCgMfeRwRCv3ngvjT/eO5iEbhcJQJKxFtEcfRKqrNPJR1kiw8J+OWh78CJbXKVAmMm+eRO1t6RbQlwfIy2mqojbyoviJF4Zjlj4gzn2ugmBPuIow5M6rBR6bHU/+0z6doS2LyhH9uYNfYxOM9W6rvPcr2470IfMQ1kyBcCPNSeilWRibcDfin88sXTeiNEdTzf8d4qm+99513E2xwR7XuVPM/a8MHoeLvENuI32LDA3Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z0eqo/mwQbz86tU2UpX2KHXp9zRrDAz7uI+ew1ODTjsI4c9kFN7DkPCAsj6s?=
 =?us-ascii?Q?8jUUbqKIBV8LoGWzIVu1mk56WNA+D1SutLF2LpnVQuV2E2UXRH1EC9egQpwD?=
 =?us-ascii?Q?CRn7N6zGb5OwrKmaZa8fBz88P1qj/96j2ArwgRX79U3f9Pi4/CEvS4cXn96b?=
 =?us-ascii?Q?bveOzMKyLGJBtehW3FX2d0ttdVSRfJozRHvHgD3Y82JVB4pgsYOWjtDOG+dR?=
 =?us-ascii?Q?bSvdOV48hWa+zV98HWdmralKoIV5/TQxjZVws/OtjL8P2UuyM0+hpNjna3Fm?=
 =?us-ascii?Q?2Hjt3nxeMBtSVxDDdvpEubfSzO4iTTM7yWW1fXo6Uaoel8X7ESUf9KgRWbYo?=
 =?us-ascii?Q?coC00Yr+il+Ch135bW1pOi3U5P3wCjmXut8X0Yz4IFEpyAihYYMSF1QMYmxN?=
 =?us-ascii?Q?E0Scsdl80yEMoiq505nHbYA8phopCGNOWpim4KAh7xVtY10VOh+OKINUtabY?=
 =?us-ascii?Q?s7nw/8IasF++EotobMnf1PzRds+7FYvmpLlteBMOyawYKY32/gkn0kErtVIM?=
 =?us-ascii?Q?k6rGpAYVna9OXtsK2uodafoQ3qlMD19RcGeDced1yClTkKKtuC2EvpY7uDts?=
 =?us-ascii?Q?mSRIiZEDybeft71dipASnA3E1R4ffShkM1MPW/W5Az1SvoE32hOQeISxUYWy?=
 =?us-ascii?Q?BHGj+mFBLNDxnNNtLCI5neqWxprr5rSlla3h/XJGN8UYyBtgpd8y41/NfzOy?=
 =?us-ascii?Q?fgyIBVQLYjp2OQfH+q8OwGziVdF1c1IScSM+U6hJU2qy4eO/FtuzCBh2Hewi?=
 =?us-ascii?Q?EWFPlxPyqhutsDXc+QacP4b4Ox7spH1XqboQruQK1yUjAwXpqcQbzJnWtgK7?=
 =?us-ascii?Q?sO8wSpFecW0soamM4J606T+EXO7gjko4Cwe4QYHdhJO5ttvVyYEoP34H/aOv?=
 =?us-ascii?Q?7J8yStFZLySj+r8gdF5RmaNcUJJgElWmYE+yL1pUuIYCdYIMqpHbOHq2YBFu?=
 =?us-ascii?Q?Ugwh5A2TbxrPN9p8f8fQacw7vL3lBbQbqqPgNbt2bYDeaZp/+XOjM0pCX+z/?=
 =?us-ascii?Q?5Kx/1elp3QoSWPbotQol3q5PRo/7WUcnDEfQiTCRZy32vWpPxaW5BvHgDpyF?=
 =?us-ascii?Q?T9cxVfgO92oIZWTyXRHO/XAqdalCO/tTwtNdO8DOoiro6sIf8pdRgfCUH5kh?=
 =?us-ascii?Q?k63PVybJGhrbXldFpn5ZLiIFe1fSElYZlNmaSpjUkDM9BkVg03AIxTleJlCx?=
 =?us-ascii?Q?mqe9BMRs16F9knR9mtAakQkFG+PAUmzl2LLH4lIhNn2QGq2N2+j9pO8RWuvE?=
 =?us-ascii?Q?K9qgX2gkF2+vMXh4wiwwYf1NsEKu8pAcHkqVy/bZu2oJ8pKJZ4ISSdtKftJZ?=
 =?us-ascii?Q?lCrw7xziAaBkoGTsqPYn/LDmfIi7UVy4xTcIhH7attLHl5GQa2Jtm3R8Mgmj?=
 =?us-ascii?Q?XgIaDOeuhBJlyGOcEf0cGG+r5GYGlx+uYxn1XefeMEdUh1OEP/cZvesUQ7h1?=
 =?us-ascii?Q?dusK1VgOTPG7iJ+0InVvB8J3Btz4siXpVweo1Q6fI/49VvklEifg6qz9u+rl?=
 =?us-ascii?Q?gqubj8Y/LxC9TV03oNSaUH8zvBQk6/Yh6+1CzeLfrRc8yNoGqBRKyj4lBhsL?=
 =?us-ascii?Q?trvh45hQoqeWeeuKqP9yHgAp9K5Dw6SnOLHkrsqD13MC9QOHBOi32rRzmIJh?=
 =?us-ascii?Q?BRD7InlNL6bkek1sUP/RHi/TXf2wEr2CQkHTfylDNnBdOiIiRqD0kKQcQ/9n?=
 =?us-ascii?Q?y36fv7aOL+n2fkmnl5QmO2Pk1+pYiGh/tyltVB9Av4OwUwYRUaTxWW/siPyH?=
 =?us-ascii?Q?WcGJWa93pA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tuEOGv0AEAT/Rnf6eqA83i126AF57ax/dVz9Rh2XIm+ibERtLdnwYMN2SpCDl7Tw0hPgX+TZ6KrJolSmPWKiN79lBWBnmY1DIAs0G8XHmC5LW99yZCSlb8x6vvRpUXzM9x4NurocZ1ySgAEpvR70HN8TaZBWST+eh0Eg7bg1tV9Z2G92H1QtiWSJiVcpEpu2yrD3aIE/RKTtZ9miaFKkZiIHQmvyPgigwfbWj49QWKB+za60v9Xb1iyVNPKGOBh1QznOspcq3/v6dvmxRb+JneuT5rC5Li/w8PUDzSqN2Hpd/XDNaF2QcfqmSas6JtNT7hAlmUCiJuo6DUabjWuc9g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76d73f76-1529-4bbc-45ce-08de99aabf79
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 22:19:36.9029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sM4a9EFLBWtS+nuWDTX8OKJOipi/m+KxCqsxhi+M3wiSqFnzQbhLaBd7LrwncWIxMGjwNQXiAeWgFfYy6Hmr7g==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 6C0F53F3C04
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
> Subject: [PATCH 18/19] drm/i915/display: Add DC3CO count and residency in
> dmc debugfs
>=20
> Expose DC3CO count and residency for xe3lp platforms via debugfs.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 8 +++++++-
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 2 ++
>  2 files changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index f0ebdab089ca..6f24ee620f2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1645,7 +1645,13 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
>  		   DMC_VERSION_MINOR(dmc->version));
>=20
>  	if (DISPLAY_VER(display) >=3D 12) {
> -		if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
> +		if (DISPLAY_VER(display) >=3D 35) {
> +			seq_printf(m, "DC3CO count: %d\n",
> +				   intel_de_read(display,
> XE3P_DMC_DC3CO_COUNT));
> +
> +			seq_printf(m, "DC3CO residency: %d\n",
> +				   intel_de_read(display,
> DC_STATE_DC3CO_RESIDENCY));
> +		} else if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
>  			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
>  		} else {
>  			dc5_reg =3D TGL_DMC_DEBUG_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 38e342b45af0..1998549b6318 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -531,6 +531,8 @@ enum pipedmc_event_id {
>  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>=20
> +#define XE3P_DMC_DC3CO_COUNT	_MMIO(0x8f05C)
> +
>  #define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
>  #define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
>  #define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
> --
> 2.43.0

