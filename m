Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBW+HyFa3WnYcwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:03:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F7B3F3580
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:03:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A03010E12C;
	Mon, 13 Apr 2026 21:03:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzU8/N4T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA1B10E121;
 Mon, 13 Apr 2026 21:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776114205; x=1807650205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YU//PYl1RbccDcWvHvgKTlTjlJSOjomSh7eQG4YHl7g=;
 b=bzU8/N4TbsIy49Xj0f6iNN0fwttx4RQSmAj3oD9yUO2beB2MWmdJ0cuW
 WvhvPi7ZUVQShN2SxTPrcFAkF9G4kynxaVOp5WMbZ2ZxeysH3rTsHxOYu
 WslIPXJPKGtEvT4z+UCwKuwTSnX8uG0sh6kZNVaItUKET5zfSpsIJISVY
 U3qeNb4xvlohKMwkmrlRjlrF5O8/tbSyHZDr+5y6nV0I2oall5WrddbbM
 uhAmcWkbLWPzhWBy8XcjtN6HxoFOA7Sq7yR5jRBeKoD808GXx741oC5mR
 V5/7HToEaCOrvAUD459fVu3usqIx3L6Qvu0fXJnTfetSvUZyREiyahlzZ Q==;
X-CSE-ConnectionGUID: CA343X4nTNSF0j8mWoNv5w==
X-CSE-MsgGUID: NZI8aA8tRNidFmChm5jtgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80946107"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="80946107"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:03:24 -0700
X-CSE-ConnectionGUID: 4C+I6kTZSMWVaM9seYQnEg==
X-CSE-MsgGUID: jfUSdeObTvCwUfaovtzENw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="234295603"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:03:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:03:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:03:24 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.35) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:03:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i6KmrHp5S5ngXjxWe4s0Ss6FP5/xsq3QqVW/mlG9rWnu2yGBirKeQiIRvCflW8CoT90RbFNC83x+NhQs2oTlx1PY2feSrTOcN3fXhTSiZyb961mcG9utEu5OF910mjTKWT8GbOetTTLv4Yyf6vm6KKcRosB/czXpfDCrgeaeQY98n77w9HESNcuHPJSCbCqCZ4dWBOt3RhgSDBAq5BZ8sdL2u3xgOYxQZzgVayEMsmrShQxwrquZYsu0bsTeCJSceLqR4KfjDGKTH2t4SbjhcqMZgUZ9NpDzq+fvczhGzK8W4S7FxpV0isG9lMw73/M+c6b8ScuWn0f0v8buTP/vPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3mEGsA6D7Ych7wKQLAaCQJY8F6JFgYI+POgTIy94ddQ=;
 b=MzaLyRfGUdrSR0bPGOmOvqHix86fYrWfruTV4RiTAu9bbtF/EbAPh4vdXR4xo92cMK8UCqc78WyuncIMp/vFhAbHBqIq8dX+R0DNbVk32QPRoBNLOV7o3oxksEk3kXqS5dvxeFxDsf9p9VFydKKUjJ5DJ+YWLrvJz/Aaon9k/cyQVbV0pzhvSvpj/9bac4xoL3iPfmXixP3uJ72L4vWFxWj15S+o9TV0jpls3uwidJ3SVsyupYLRTUMOFKGL6Eosn6LJDHYXEQ/zd3iJ5KdrjoIU2BnkZ+Z9V7p0OXpg+XuH/8lzR1ggxuzE2d6/vZLKyiMjljYjCJAaW57oMLDOCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB8069.namprd11.prod.outlook.com (2603:10b6:8:12c::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9818.20; Mon, 13 Apr 2026 21:03:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:03:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 04/19] drm/i915/display: Add DC3CO DC_STATE enable/disable
 support
Thread-Topic: [PATCH 04/19] drm/i915/display: Add DC3CO DC_STATE
 enable/disable support
Thread-Index: AQHcvUQqYY2lAuuCwkaQJbctCoAYurXdlzhA
Date: Mon, 13 Apr 2026 21:03:15 +0000
Message-ID: <DM4PR11MB63606AB44048CDCE2F8B33B4F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-5-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-5-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB8069:EE_
x-ms-office365-filtering-correlation-id: 57a459a1-992f-4ce1-a1ca-08de99a01511
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|11006099003|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: LDzdcuv1+QIhyWBJHFJ4ZWBEqczAHeDyT9lBxXcLv0jUVOX5zfnTgW+GwQQeK9s/Y1huMtSW4AgjyIPWEBeOs6wXBrAOZM5qNjSxXfxVMyVlgExc5PekzpKKMnAgW9CW8lMuuj9CpErfvFoO/+HBg5Q+6u32530sbUnQEksRRnbeHeuMLj77tOaN46H4UQgXbXgMGe6ZUYSC/d5iCWl5MNjw6OMY1ZEStWdWXtO7sA2JCi4t5zKiNtQsP3CTD3LCCqma2S3cHVGncWPjl7s7vmmrmyl4uZbAZo4Q5yyQL6UK/ifNwjejoHmll6aFSV7wdDr+D8+11gYzj8aIx+QGYEr0O16oVOcPzbeM2iV32Chn0ALLgDan85MoMnastDt7OYXYuIm36HNLabG+FqSJ0DLSGIILEDHDPT+X4gTdWkocuEc2KWoLZaD+Oy+UDhBC97G+pNT8vxW1DKbc0DXkFuggxi6pWU6JRut8uVF19C+xQkngK+oeCtJkbySqxqk2fTzXYdcN+bWDo9WLk2kzGNEXJg2OB8XJYNQgwyiSxHneXg5MgkaU83x8kLSbuMsmEGKe255DiK+sz6cEqQGxPYeVo3M1FEh8EjICnkZkBOrmtvLgIEsPn5i/fbQl+792eOQQCZzjKLNgJHcEz7ifLRzbRDJ9mymnwAxXnk8fCIU41E50f7Xeq4jKjcxz+gU4yfr4mre0wNrBaakHwpk/wYJRgz94/13nXrGEi1oYMuTmHLP9weBz5d3kyu5ZHH7reqFTdeqloYHY1kHmgVqRiSIu3Um1UlQjzN3uQZ1NG9c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(11006099003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IvwGknyxUFIll5KHEaR/FSbTvXGSzcbo5oiZhIAgV4S/H3GMq2JwGtvh+i2+?=
 =?us-ascii?Q?S0GWpbruHnZIV3SRnnQ5YMuh/x3pB0ZgfYqf+ErHxfJPaXNO6lkzSrEX0TwF?=
 =?us-ascii?Q?VRGyGLcx3NZSD/6LDMeSm0VP4A+iAhzUcSHVWwV36cdjRWk48Lgj7VKFcSxu?=
 =?us-ascii?Q?tnyOrd9rNww0WJMkcOF530B6DUPeLpplwTu7ItYYDvc7d77uvE4sTID6LKC4?=
 =?us-ascii?Q?AXq5LoZ+DE1XUq6x8B5gbTTYtHJfeBTPTu/I726faXA0Kdh5iG0NvhoukUMB?=
 =?us-ascii?Q?KrfBghtQP+xGEc+21jkjuhtLuG+c8c4rYLJy0wcxhsCUJMBop/Bt+2SK26eY?=
 =?us-ascii?Q?Vp6U3NU06V1UsAzZlhf0doXbTg2KCBDRKhyc39OQ3OYtBvVTVWNbczRG+/ZO?=
 =?us-ascii?Q?IoqTxLgUJnv+5slX1sEwupfd7T9m7L26f7rZG6ukH6YuDmaM03zXN4zIneIh?=
 =?us-ascii?Q?ph0UKqp8CZex7CTekcwE5ZJntkuBZJausPrJkNmC8P4tRwhXG48Mp9ysbrU9?=
 =?us-ascii?Q?cN4jTzLAQQCP0rT+EM1UrPyotK9ykGeMNhO8ktqNOX9YAZ9fTgYFgDqrL4zc?=
 =?us-ascii?Q?bm0nyNnn2hPYJJ6RA4LY0HIGaC/D969MFmGlKMTMdHmNeOe8wuXYQJOQHW2b?=
 =?us-ascii?Q?UA1VHyAmTnCbyBwq5clVWn4EZgc4AYBG2JixerhnUf0Sn+YXv3tvjF6DmAOO?=
 =?us-ascii?Q?FeRh/GfUTc42nMUQzIawPvwD6OfIEIRGNSCzICffJ5oEeLJ4E0lQveoXNCtU?=
 =?us-ascii?Q?28xLSQVf0cV6lpGHU906vxiZYH/hhZaI0mIK6goy/AchbKM9iuRPuzZn+RK5?=
 =?us-ascii?Q?qdqKqMQmz5pJIzzeCXzUj4wsX6iyoqaj6PJM3UBWvivGfPfSwRm9GjIsqEpF?=
 =?us-ascii?Q?DmupNTSNqBXBH2kUGKwMouNO4KajPP+0nMhwySisILJ8we7qw1MDixoB9dMk?=
 =?us-ascii?Q?PsYS6AwHrG5y8/uKu8e8Xv/4HwNlZprj6zVDrljx52kNZ41FtecREH+9yIDH?=
 =?us-ascii?Q?qPGYO7l0YJwND66aXYdszfS7hnQFtLPjvZqGJdHO2tnTAWSNRwwNqTmGOL/B?=
 =?us-ascii?Q?Rw67PVNmxZMdEE3GQStpzPDBbZVSys3Loi0jvh26//QVhhBjE5n9wGp9fOc2?=
 =?us-ascii?Q?KPAfPiqrV19K0QsStiBaCq/dn/B6pnd7RSnMEu6Esx3qtcHunD8DHNbRitjI?=
 =?us-ascii?Q?H3VvQumBtqqcw3volZwWcAKWIrkTHtPvudgxLQrGZbrmFBjsm/6sQifTQ/C+?=
 =?us-ascii?Q?Dx+S/fdAKjIDGR6G45yBbSXLLhb6XI3NkgRoFuMESOlbjHIsprJ8pHp/pGzN?=
 =?us-ascii?Q?KZZXGuQwP2BBQnU8eLSDS6o/Ux486zyXgWzC8Ig66OmM+I7DVcO/ruNLdzfn?=
 =?us-ascii?Q?7Ar3b0bt1VvaWXcQraX355d0ZgWFHmhCWlY/dYW/dgeKEqLgA9wh1El4HPAY?=
 =?us-ascii?Q?Y8VBSN53v5KiKnC+rw8T3adoUfGRQxNlGNzf9ZJ5QNMh0mr55Iamq5k12bVj?=
 =?us-ascii?Q?IkMQdslodA4o91cdLFYcvwaDcL8PytYqsoS7dxPvoWDK9D3JNkz1wQz94x3M?=
 =?us-ascii?Q?XUvisvT7sF7Gg5sjAjtswFMNTOysBHR3tFaikFyIXMpOKK5LiEx3EYJDLxrz?=
 =?us-ascii?Q?fhjXH1JFv+7ug58BoPUgpl8BdHGR2fvBKISAiBath+PwRkWgoz1A4X2L6v1p?=
 =?us-ascii?Q?tY5NUPRSkJTfAQyUsKlQmoK5Hx0Hpr5CvLEa+VUgHNn4vJbz49rCs/GPHWW3?=
 =?us-ascii?Q?OCwJ5bKVAw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nU+sbWRoj1D/eEnAGugB4VOkUAX6jU8XUbNBcPnt0G6exTCNl2XAiCqvkylI2zuDIVe7evXjjEg1yoCSD4HR1hgAguU8C+VtrdXEOCNEFHr6INu3CNnHaeggOmTjo2wNoywp9GzAUDpe1TxagjPgiAzJDsbaFaij+3ZGpJO+HH1H03CFfq8FsqcaMIlGa1QcpUt9ZhFnm6nbF650GwzwWm+aHqlM5PdPo8ZHNGNAtl39HDMYr0Bcj1z7419ctytkVO1LAIIY+qQip0i3pAbO7NxbCu0f9gkSEVkEWEwuvr34ap4M3jxI/FhRsI9EG1lmtaba5DdX8QxCeBD0OwndPw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57a459a1-992f-4ce1-a1ca-08de99a01511
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:03:16.0331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FU9huKjgnkQNYGOcr6rJZ9zH1fu9y/YcE+gB3dGcgOFipqq5Thv1/Xe7w3PQI3VBqzHAFjldYwRC+A7SqgxR8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8069
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,intel.com:dkim,intel.com:email];
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
X-Rspamd-Queue-Id: 98F7B3F3580
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
> Subject: [PATCH 04/19] drm/i915/display: Add DC3CO DC_STATE enable/disabl=
e
> support
>=20
> Add DC3CO handling to the dc_off power well sequencing and disable the DM=
C
> wakelock when exiting DC3CO.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> BSpec:75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c  | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 9a948f5e2164..cb3dcd1460b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -867,6 +867,13 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> +static void xe3lpd_enable_dc3co(struct intel_display *display) {
> +	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
> +	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC3CO);
> +	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC3CO); }
> +
>  static void assert_can_enable_dc5(struct intel_display *display)  {
>  	enum i915_power_well_id high_pg;
> @@ -1055,9 +1062,13 @@ void gen9_disable_dc_states(struct intel_display
> *display)
>  	}
>=20
>  	if (old_state =3D=3D DC_STATE_EN_UPTO_DC5 ||
> -	    old_state =3D=3D DC_STATE_EN_UPTO_DC6)
> +	    old_state =3D=3D DC_STATE_EN_UPTO_DC6 ||
> +	    old_state =3D=3D DC_STATE_EN_UPTO_DC3CO)
>  		intel_dmc_wl_disable(display);
>=20
> +	if (old_state =3D=3D DC_STATE_EN_UPTO_DC3CO)
> +		return;
> +
>  	intel_cdclk_get_cdclk(display, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(display->drm,
> @@ -1093,6 +1104,9 @@ static void gen9_dc_off_power_well_disable(struct
> intel_display *display,
>  		return;
>=20
>  	switch (power_domains->target_dc_state) {
> +	case DC_STATE_EN_UPTO_DC3CO:
> +		xe3lpd_enable_dc3co(display);
> +		break;
>  	case DC_STATE_EN_UPTO_DC6:
>  		skl_enable_dc6(display);
>  		break;
> --
> 2.43.0

