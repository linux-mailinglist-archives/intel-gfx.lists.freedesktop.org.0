Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QjrQD4RLKmosmQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 07:45:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7665566EC4D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 07:45:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Crf5N5OL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D2910ECC1;
	Thu, 11 Jun 2026 05:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF9C10ECBA;
 Thu, 11 Jun 2026 05:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781156736; x=1812692736;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G/R5Qw8sQMTeTF3ZH9L7cI/qBjEK9XwJppp9i54uN6Y=;
 b=Crf5N5OLSPrw+KC3A1sQo3bMMWrT0jPtGfhjyGQEF+y8C+3GLP6o0myQ
 GSAXbkfwBzyo4xL63WArLYiFWAR03vujJkuhUdTArrm+cbskIKKHjbJ1G
 S+P39lZZTcCT6iqnF4sa0GnRyBpzY9kYZqKcyepo/qF/0N8WJJFVvCzdy
 2t6UHax/3Fr8A0zrgYGxTRdOAE/fXzk6OS8RstBCOR4UynBGTfKtkP2MU
 /zP7Y+3sE2e5jkv2cFAGOlaeXPDjABtjeu6IF3/osNYVqXs4BtCqTc4aY
 Qvh/Iwh9/iaLuoT0alEjsN8ZB2REGOvpY8QxhZjOI9Ii4r6VqIvL1mbpm Q==;
X-CSE-ConnectionGUID: VG746Dg+TfSgdeWNsVtcvQ==
X-CSE-MsgGUID: Y/r/YaWnQ4q+ffP2OCqT2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="92638693"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="92638693"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 22:45:36 -0700
X-CSE-ConnectionGUID: uxRlAG1KQxWyPy5NwLh4Pw==
X-CSE-MsgGUID: eNrw6TUgS7ONX6NJi/Yelg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="240035942"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 22:45:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 22:45:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 22:45:34 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 22:45:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B9WvhNRqSbrMuHpg0zsHD9CTkIUek4Ir0A9fpOFuTBRTkMn+W08qJMeJbyUleQm9s4LcI+eeU2UVrJq2Mfeel0S7Iut0ywhLB7aAp/hW6ttMofdgNFI4G/xtoy9wI8vmjwSfLQ/yYLhfpUtBeStmpZOAymG8dy0/Wnqr0tJH68rGDMQMUdkoZnNsB0EPAWyToL+aTr0AfaamWYDHjpXQOukLExe2lO1aU339aXb/z/TzEWXDCr405J3k6By8Ny6agN2D+jOv7OgBulPl/qTvVzQ1ORs0IhgIh0ak36PUMsNVu3GEudGPxCNADEUiD5v072HkrDmwo/XRRs4Y4NsrSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ZkHTKK3BwvWPRi6Ly7yMCX8NsEeQJ+sZvqv+QKAg84=;
 b=oK6appPjnBUWslVELiBaTSc7eEIMVb1NeciLW1W3BtN16uOKycE+pim2JVbLbkiHTQ3q0WPn5s6Nmbvy/USoTHHBWOdOfkxyJCU5SmTt/A5qgJpZ1RU6qXSUzQLvKHRh0oLBOs04LRERgLxB8Ys66RHYtcRA3l+5G8CoteT9bekmM6CoEChltlbshP34mVrq+LBIFfX74ykuPDKshe4t1c+FdQ70kfRUB0C7cSSL4JH/pclHOnlhrhOM6JbSGDMOPrx5aiTp297WeYEFHH5df7ujgghVCaQMh8W6j9xawdf6o6JFzLyMfLzSepPCVyb90cD8E5UxQWUx0/uoE3BvNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7994.namprd11.prod.outlook.com (2603:10b6:806:2e6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Thu, 11 Jun
 2026 05:45:32 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 05:45:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Thread-Topic: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Thread-Index: AQHc85dFgikMYldt0E2BqkNow0KeSrY447nQ
Date: Thu, 11 Jun 2026 05:45:32 +0000
Message-ID: <DM4PR11MB6360CDD4A647B4D8EF049C32F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-5-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-5-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7994:EE_
x-ms-office365-filtering-correlation-id: d6aff7e6-f524-49fb-a913-08dec77ca6ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|38070700021|4143699003|11063799006|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: wKCg5ybTrmjow6XsQoRmJVYISX6KJdHStSZtWYk8Zqupuux/rU5fppPmI1kedAnmtNpWoWMjnT5zbIxB6yCYsRM0VV41xaaNLNHQxrS0awPzjHMF1Yr7LYuBFOZC7n5IPmSnEuUcsN6rWzn9I7qU9Hlk9A91/3wKPBU9RcX6V9+TPDNkZJ6f6BRg0wkGDLpw/IRco6CF9hOX0Trhk2oAnf0pEk2hofJaotr3+3EYyA+ca3tzUcs7b4lg8/D4RBz7nNdhlW1wq+vXJHr/osa+phKC72pNt+JYByey7FYkgl+n1j8TjUgj1Ev+affbxEm4UL39bxnUfCi8hyQquItrIVrRBZSVJGTFoqYi9s1a0Pxf6q24RtdHo3IB8KKow9lxdl72+/5YqmqBahtP6TiOiouyiJ4lvRCBngZnCcb6I182z2DRmrOiHxhIiEv9QbXMNibiTaCwxasxcyrodf5muBnQrHUnfvO6UrYarp0T6zeaRkZwsR3rQ1ffwMcLTH3u1pIjMPsEh1ZeBRrLRhbCPJb3jtV/1L/Vj+3w54SvH+KV5OVXdeRyMZe1yKaWbO3OVrVbCfr/97bL/NYLV5zyGZ0lGSt305k+ytvXf1O7z3nm6GDeylAVQpMO05BIo8s2b6WsPyds3RNtoEdxIsZoRCxly/1DoAn+GHU2bi72GEuhed2W2eNROQdffTcBPV8jYI3N2T/HZHncwLP7Txd0i49oSAztbAfuQqO6Bhc8e7V74SGxgsY0PO1FU405Q3xs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(38070700021)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8v0jvh4+0TiSepR3vs1b9xQcngkMymFwYfcfusLRBo+OG0iYx+GjHL8KSHbT?=
 =?us-ascii?Q?gZccfTdPD1KdogeMuGi8OsU+NRDZ+1/BRe/Zx61f9WNJXhHcBQFymzyy8S89?=
 =?us-ascii?Q?NA4LI99cBXuqlRJz0pyohik6YThqvYXjR4YQ/pFzQZJBCc0seou/IxjZmz3Q?=
 =?us-ascii?Q?Bo7orbXkMImYwtqDwj8lN8FRTJCxmGKvHXHroZWJoAThcVfFayM6S2oS4UoB?=
 =?us-ascii?Q?u+5sKV0iRV3MFNl7xojChQMtFe/ppvuv5Y+QmxHtnJ2HgCytfdoJPANx8GDi?=
 =?us-ascii?Q?geMirCMohOWmgZ5Wd3Kcqk0i5ug5G4BvIyLk3JsF4N2spe+8aTUza9kGYXiS?=
 =?us-ascii?Q?4dnxAaYojX4lI0GIrTRX87NOFna2Hxg2rvFpB1lWzXW2TTfrVkIewWuzG9hw?=
 =?us-ascii?Q?RpDPrJj7xKkviePk6HD/mf7FmQB83+Zodor1Fz0riZHwO4CGljxztLh2bK+c?=
 =?us-ascii?Q?YMjfAr4U81LAydb0hIXh1tAh/uEn4DhP5wLAVXCc2g74U7Voo0PkwmtliTUi?=
 =?us-ascii?Q?2tlC+iKQtHp5QcoVo3qUTJesHsIGS3SyvIaHo+krAxvh03dhZZ7IvIa0LHvg?=
 =?us-ascii?Q?+ghf0Y1fh9LfVQyLclPEcUZvyVxv8P5Wi0fYzYhPtxkoYiB7mJLuOmXojtjd?=
 =?us-ascii?Q?zFyO+PcDNGfZVLF3rY8QO3dAH8pxjp3eN9/FoRcLQ+hSF7UwRRaySqrJRjed?=
 =?us-ascii?Q?RDZw0ttrmtSv7OzR0oUEH6m7RLKnvya7x4jb9TjqX5lIjuTYJTMEx8TDMCWy?=
 =?us-ascii?Q?TnCIq+Sp4p1Pjcz9MaizXt8vNDwoLzGZe3fLF8ywcoV4YKJCn4kbRBlVRfmR?=
 =?us-ascii?Q?yhPFwa618fyIE6JddFgE5XsrZEd8DFhm6rdMfhzCjA/4Rhne8clxip/yUEQp?=
 =?us-ascii?Q?JsXw1Z0mRKrrI9XaCFAgPUqNDAPVrNDEc85cRHaWl5GNQXZYI5BrUy+gdreS?=
 =?us-ascii?Q?laq6QK8KO1gjcR28C4wCfOBhawG+oeWbXWNrWVI/F71mDCkwsdXlP3NcD6nH?=
 =?us-ascii?Q?x2/z3u+FoZsNVXgz3/UMEiRI9JeVcbFeSLLTAfYyGmex2JkcIfomOeHjHv+y?=
 =?us-ascii?Q?2XVQCyQje8uVjaXHJQPauzg2Laq8ezEp5U4vJB5gm//KG+2yZWmM7Omm+O/D?=
 =?us-ascii?Q?bxlAGZXaPOKf/P/4kQ+OMF2vGSuM1SEW0W40mVg7qqKbWOKRBdBm1PkWljtV?=
 =?us-ascii?Q?6gy+l3h+J5UYJstOCXWq4A7sxr+ggQPpB+zPBaFBTWb8feNj0ZIPb06iSk2Z?=
 =?us-ascii?Q?1snnMEbVKMxfFIiPvMgWsfh758rjhofzvOPFtAsTak2Liq6VxrIFSqdjD31u?=
 =?us-ascii?Q?1eAToxzuO1AMKxqrf9isLauNNdEQOhBw+QzigYrtV3p2ywOjWikUtoLUjVV1?=
 =?us-ascii?Q?FXB5Uz6NAcPLilQFAK6bpUyH29WseFlzq9jm8smgO9ljP7pF5oiwwIWtHzFO?=
 =?us-ascii?Q?hkRGXmx3kt6k1q2eJ6j67P7Ql1DMHtV5sR0vgsh4okIF5aGCOwk4qm0FtU4M?=
 =?us-ascii?Q?K4pIdCMOOT2HO7I4LzZeabo+oIRDJ3meSrptWaoPF7mfOwaY0BNDanN/06AU?=
 =?us-ascii?Q?J7m9cCl5NSg06VHvd+UeJQzQZiQBWjYRQmSyTXQ0z8Q2SFq6uctJjz4n2X1a?=
 =?us-ascii?Q?SeCbwWTrphK9CUlbzn9yRHi0WxdDYjlZk/mvq5N84pi80bPmI6UVEAN5m3mo?=
 =?us-ascii?Q?dV/gGokb3Rt3CuuSBFq8wj3heY1hgH4lbz5gS5TvqrUp/OpQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: n/k7TzvVTM1MoGmndQGgopL8CNPaqYVC3cqfIiQAd14g9Xt4aoQIWLq8gxGkV8I1Le+9zrmE9Rt64zR9vJdpKdLBc1sJHod4Cbtq1QLx/QHck9tF0x9FuvbxzTtCpaCTe2UPEm1Qr0SibTlNHiPxCT6oR2NfbXWpLlA/QDYe/5LXMQImJwwRzOimsTXMd+7xJkDSLm53+H/K4xkX72cpVAkVjpiRZHWjhWO1HJZ2N7HNdYHaPQGEY65XrKjSDnun7e+CGf7VpU63S0MfttRmMPntY5nQpZVb/vm3WSP25U9ZOFuxlWcarZAnL5SLs48NV3pc2PLn28kokUoc+SAJ/A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6aff7e6-f524-49fb-a913-08dec77ca6ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 05:45:32.1280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bttn5l6NuTWzb/0yOSE0s+ML8NNr3lAjjP6MLauC+IWhSFH+3aAC70MxdpbxUMKnvvYQeZiawycXkEpMJIXv5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7994
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,vesa.org:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7665566EC4D



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
> intel_set_transcoder_timings()
>=20
> Let intel_set_transcoder_timings() take the target transcoder as an expli=
cit
> argument instead of always using crtc_state->cpu_transcoder.
> This makes the helper reusable for callers that need to program timings f=
or a
> transcoder other than the CRTC's CPU transcoder.
>=20
> Update all existing callers to pass crtc_state->cpu_transcoder so there i=
s no
> functional change.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 35 ++++++++++----------
>  1 file changed, 18 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 8e269b71f18e..9031264a34fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -132,7 +132,8 @@
>  #include "vlv_dsi_pll.h"
>  #include "vlv_dsi_regs.h"
>=20
> -static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state);
> +static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state,
> +					 enum transcoder transcoder);
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state);
> static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);=
  static
> void bdw_set_pipe_misc(struct intel_dsb *dsb, @@ -1504,7 +1505,7 @@ stati=
c
> void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  					       &crtc_state->dp_m2_n2);
>  	}
>=20
> -	intel_set_transcoder_timings(crtc_state);
> +	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
>=20
>  	ilk_set_pipeconf(crtc_state);
>  }
> @@ -1635,7 +1636,7 @@ static void hsw_configure_cpu_transcoder(const stru=
ct
> intel_crtc_state *crtc_sta
>  					       &crtc_state->dp_m2_n2);
>  	}
>=20
> -	intel_set_transcoder_timings(crtc_state);
> +	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
>=20
>  	if (cpu_transcoder !=3D TRANSCODER_EDP)
>  		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
> @@ -2048,7 +2049,7 @@ static void i9xx_configure_cpu_transcoder(const str=
uct
> intel_crtc_state *crtc_st
>  					       &crtc_state->dp_m2_n2);
>  	}
>=20
> -	intel_set_transcoder_timings(crtc_state);
> +	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
>=20
>  	i9xx_set_pipeconf(crtc_state);
>  }
> @@ -2664,17 +2665,17 @@ transcoder_has_vrr(const struct intel_crtc_state
> *crtc_state)
>  	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
>  }
>=20
> -static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state)
> +static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state,
> +					 enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum pipe pipe =3D crtc->pipe;
> -	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift =3D 0;
>=20
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
>=20
>  	/* We need to be careful not to changed the adjusted mode, for otherwis=
e
>  	 * the hw state checker will get angry at the mismatch. */ @@ -2703,7
> +2704,7 @@ static void intel_set_transcoder_timings(const struct intel_cr=
tc_state
> *crtc_sta
>  	 */
>  	if (DISPLAY_VER(display) >=3D 13) {
>  		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> +			       TRANS_SET_CONTEXT_LATENCY(display,
> transcoder),
>  			       crtc_state->set_context_latency);
>=20
>  		/*
> @@ -2718,16 +2719,16 @@ static void intel_set_transcoder_timings(const st=
ruct
> intel_crtc_state *crtc_sta
>=20
>  	if (DISPLAY_VER(display) >=3D 4 && DISPLAY_VER(display) < 35)
>  		intel_de_write(display,
> -			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
> +			       TRANS_VSYNCSHIFT(display, transcoder),
>  			       vsyncshift);
>=20
> -	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HTOTAL(display, transcoder),
>  		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
>  		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> -	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HBLANK(display, transcoder),
>  		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
>  		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> -	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_HSYNC(display, transcoder),
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>=20
> @@ -2740,13 +2741,13 @@ static void intel_set_transcoder_timings(const st=
ruct
> intel_crtc_state *crtc_sta
>  	if (intel_vrr_always_use_vrr_tg(display))
>  		crtc_vtotal =3D 1;
>=20
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VBLANK(display, transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> -	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VSYNC(display, transcoder),
>  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
>  		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
>=20
> @@ -2754,7 +2755,7 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C. This
> is
>  	 * documented on the DDI_FUNC_CTL register description, EDP Input
> Select
>  	 * bits. */
> -	if (display->platform.haswell && cpu_transcoder =3D=3D TRANSCODER_EDP
> &&
> +	if (display->platform.haswell && transcoder =3D=3D TRANSCODER_EDP &&
>  	    (pipe =3D=3D PIPE_B || pipe =3D=3D PIPE_C))
>  		intel_de_write(display, TRANS_VTOTAL(display, pipe),
>  			       VACTIVE(crtc_vdisplay - 1) |
> @@ -2769,7 +2770,7 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  		 * followed by BE which DPRX devices are unable to handle.
>  		 * https://groups.vesa.org/wg/DP/document/20494
>  		 */
> -		intel_de_write(display, DP_MIN_HBLANK_CTL(cpu_transcoder),
> +		intel_de_write(display, DP_MIN_HBLANK_CTL(transcoder),
>  			       crtc_state->min_hblank);
>  	}
>  }
> --
> 2.29.0

