Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLl0OQV9HGo+OQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:25:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C3A6177FA
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F25112BD0;
	Sun, 31 May 2026 18:25:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LiwraM1q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD57B112BCF;
 Sun, 31 May 2026 18:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780251905; x=1811787905;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F5lZLd+Od2HN0tdtl2Yv2Y11n/ts2TTFqHHcwbeWYmM=;
 b=LiwraM1q4LgTwBdgwsdBBhIO0/4z7Ob+S3r/fWS7793WvyjJQHX+4F0a
 luI6f2FTp16pXASIqI4JQCbJjbyJErZpGa+E9LOtKhY8qgNRC6EkpPP0v
 +e44TsA6xrM+A8lCcjW4OnF3QpdpeFMIWXOislHtHriPh2JyF2kwyZtnf
 BM32Z2U1NqM+wOJReOGW8bPpYXY1xQ1u5NUL7PdYlowYDL5C/xqfPRxpk
 6DnoPsvG9QA7+qWIH+MqfKT5Pje0sIssRiVZwAWbDu18MMV/VKVev4PdJ
 M4QAplezg1ydW12ZmsD7I81PD2eBxJXOeKxBfnUUj2o2C8ink7z8pwjdx w==;
X-CSE-ConnectionGUID: US+ODUTHTaOzLtXmZM+4Mg==
X-CSE-MsgGUID: xs/JeIpITfS4+1sZN8bUVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84646606"
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="84646606"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:25:04 -0700
X-CSE-ConnectionGUID: QQWsEMYTTKeE8BbJhxu33g==
X-CSE-MsgGUID: VnEXtL7DQBCr46CK7N8gkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="242307701"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:25:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:25:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 11:25:03 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.66) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:25:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lbYlyQqbB/dGjFUbf7UBo3xC4w3PZJJr5rX+r5oMGFgg8YC7uwpU71zHVap44/fimVfTTXPAKL+Ju8tZbsShfYPVNpYBouZlrScku34b9sLZ8mu3RA0/D26wAwnrQEIRLa5krXjxyGYCYMwlVPIVlNtl3eJ+iAqJQH8rRQVzrIR23G8Dq3Nkj/+kvP7vDpKy2DcKWiMITpjERzf6HLMmjBDOBNgaYlBIEGSJoop5huNgMdtXPmJAh2B8T7DtN0NyIuwONJnb2C0OQW8kvxBcy/bMK5541V5HvtyOQ2UXuEz1KrKxR8FgwM3a/IZ0scc9ljqVqcjTrptSVkt+fEae5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mOmWgjPj2P1yp18FSc+Xoxf50TMbgmls1ZevimTUfwg=;
 b=O0XDkU2si+qYZWVucSq3bK1LfSm2k+HecQeo4IZH/Q8vkLPbNKkL+alacy8MFcG/JY/4WdS8IB478rOgV1kQF99wRZyI2qw6FdB7lS07JwVGMrcUNeNFS6CtVfKUr7ZVSybPjK12s/87nRzraK0PVB+XZvTg0vITIqDTOmErikicaEXm4UGTX7zYasqWvRLBuETPYEdlshsdCAveJaA7ydG988zWBeLZOFJ8TAz2IJpqRQXVeuny1CKkkiC/ihLBbQ1M1SNCxck6NlSLMBpEfAtk8vBmtypDTsLf+NWE1EX1oE0AsAOOTT1r+xgAi00QsxxAxleQWol68n18hHbLXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPFE90FA9325.namprd11.prod.outlook.com (2603:10b6:f:fc02::5c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Sun, 31 May
 2026 18:24:59 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0071.015; Sun, 31 May 2026
 18:24:59 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Samala, 
 Pranay" <pranay.samala@intel.com>
Subject: RE: [PATCH v2 3/4] drm/i915: Avoid programming color HW blocks for
 NV12 Y planes
Thread-Topic: [PATCH v2 3/4] drm/i915: Avoid programming color HW blocks for
 NV12 Y planes
Thread-Index: AQHc07CxbY1nY1XVYU+L5BWVRWjrQbYorblA
Date: Sun, 31 May 2026 18:24:59 +0000
Message-ID: <DM4PR11MB6360F005BAB454B0E066A2A0F4142@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260424054129.2148049-1-chaitanya.kumar.borah@intel.com>
 <20260424054129.2148049-3-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260424054129.2148049-3-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPFE90FA9325:EE_
x-ms-office365-filtering-correlation-id: 0ab2c400-b423-499c-ad37-08debf41ecb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|3023799007|11063799006|4143699003|18002099003|22082099003|56012099006|38070700021;
x-microsoft-antispam-message-info: c/hLeGbHVFrLUx7x/eK6CZcuMRZl+zYU3ItKhQxJTwJZkSy1HRMlHkOYzb8hkROzsO3ZA7hVFDUx3OCYF6TPDu30GKz/cWgtbfHclXvw7ys35pq5+hKaSOACsJUZtY4ewVfA3tiyrE5/qksrNEUOimfZ+vAFYTncC+6aT8/6DFxgT3Lm3JmN4cp2Eh64fQVk6GJ+KESardO6zd6q4ybGjernIeLBFkUKL+tmhzIRj62cwBsWZTNE6Ai0/yJKdSlAqUiHgNJuTY0siv5GMf5qYiswNHzY9PNOpCJFwFqms+sdXUEzxtyQpdds8msXbFKP2zavYOeJZ0zSln2EyP9xNTmdoNCE4bWAjd+vA3RkU+3i+O555M2+LMuyNXoc2uQpbFwv1dCgztBAlsuyFXdphVahhUM+O/5iP2J+4nCoEI7YtJBygwrssTN30EDMc96sqSLWOqw0Hcw2n1G8RyfhJJEecGQSoCWVPFxdFqAyrFtqoNNnTz1NUnk5lwtbTdWjfH+O0ky75dyN/1zuXfrrCjqYovbcwkWA0+5/U1YFiAnFFBrH5FswPS+KDUaL12kZ98/yrGN9iyDhFvSiDlqL6k0VT0HtL2uiopYKBaz6+hyPIIioXMIf/nlXnTRSMvVpueFf/GdO+/Xf5iv0+L5cH+25ED9+q5TgDVvYVuWnur9uArgyBg4VCQ8GMQLMEPFjyAUXF9hGafB930DTcK3BVbA880xxY51nBABgY++ck8/1KLRS7AX7zo3n8HsdXsr0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(3023799007)(11063799006)(4143699003)(18002099003)(22082099003)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C3kZArIgH/wr24O1h2NpwwSg3QQTxsIYMR+NglMFa+nkYf/1J7PVAbpedIN5?=
 =?us-ascii?Q?NnOshKLUyHA6Pz6D95m3NNrD32XekUNX23XaYZp3pdyancoEAcxcCOZp7U+3?=
 =?us-ascii?Q?CK4nQnxGvjCApPqHEyrDFh/98IT90T2heL5QM5j74JUurHgQyhxmqENW+ogI?=
 =?us-ascii?Q?SWcC5LqAAhgVOfoE+RUT66wxyXEdsM0XEL8vvEWyrEzkE9fvK8KNKnPNYbmv?=
 =?us-ascii?Q?dAwNLStndP9ESAjdKs6HthSs8x3xPGybhc2AKTaMmth1DFi5TDa2h40v77Xc?=
 =?us-ascii?Q?jj54kZNJjvVvC0Bjbr5YlFWXhMUNvudZatNl/2+pYtGsCzjuLVMStslgbJeo?=
 =?us-ascii?Q?MZgHL87ZUK49Ja1m8Ka6JBn1Bc8TdPpQ/QLh+DE7CwTwlalXZwy3xNWwisiz?=
 =?us-ascii?Q?mVr+Zpp0t/BPDn1c+Td+lSf1KOqEGkNgLGEkJGWdyRMWhsUxHiv7HlWLkBWo?=
 =?us-ascii?Q?BV8oVhbz07Bk003YGIlz6ci9WpPcMba9q17+m7hnxxGYXwv+m+U1JArAog1T?=
 =?us-ascii?Q?WVC9YBnRJvTGylpDomGaBvaZi4oc6KJGDF8KZrwqVcmGaYXPKKF1xkHQZ+F4?=
 =?us-ascii?Q?QytG0RsfxhoAETrneSVgFlE0FaK7hnXOy9Fp9oSUCFOXwg92oZkv9du/vXQU?=
 =?us-ascii?Q?GaNqgnLTBHnDjaFWNj6vfIEDfp+MsZssUgcdH5Ap3a66f1otlitnMnPAbbfv?=
 =?us-ascii?Q?SuS59xjMrP4GjdWpDddnCq2HnrsX7Lat3pYWtKV9hhiXrQfoRQTrN/adbvI2?=
 =?us-ascii?Q?YHbr6eMkgTxiWG65bOH+Whv6x3J0CARBEOp6QG/6ymoogv0Ks6v+4p+UbUfI?=
 =?us-ascii?Q?zXIEirGxZ66C6m3kqpfHGLyluI88ajbS0dKiYYOvgt9H+XcAcuvVE9LMUCYD?=
 =?us-ascii?Q?yrNjkhFoHZLhJCnvTlG+FRUnQzVkYfe+PBzUAmxBvBS3m3f5dVP5Ri7DazjA?=
 =?us-ascii?Q?lKZOLx9CmNDQGk0wKHGOBNIPVyidE2J1qnYidRuCXEcMA1If8xmHKa6L6bYC?=
 =?us-ascii?Q?XEuUORQqJlPJaHGk8kUvcjO7dDuPEVvivy05fgXWrYBPOPs0JH8k67DSukCL?=
 =?us-ascii?Q?rk/RaqPaHOlN67vACocKIXwqNmZI6jhZ+qWaAH4T/utZ6mtTo1xGbFT5Nl+e?=
 =?us-ascii?Q?7IpQ79eTd80yVHE/f+QbnQDPg7rPQ/sk/CA9HA5aN8c9edMEM1HPqSBHp52o?=
 =?us-ascii?Q?8aDwQdfo5CVV5tHZG7M5GUbLOoWBr0/FGDOW7F3WyHQ4T1KsPVOAu95f050Z?=
 =?us-ascii?Q?e3+Iw+OdEyDfq26EKBkLXv7dU/qqUEbgOvE0kSQCtgWt2b4DKC71pSBdQhYw?=
 =?us-ascii?Q?Oe0Z7BDREesjx8WJf2pzEoVTOX0kfOnQdV7xUIXNuf12KLes3W1w0Xf/jarF?=
 =?us-ascii?Q?3hZgY0zL8L1jDcG2CTVeLHACgulQQbvhViYOY9tYQzpQH5CBxTuE70j6IpPB?=
 =?us-ascii?Q?t7TkANd/W4y8hUDiMBwy5mLYVSrcXTNsoNUOT2RPbdA91bR5uAwlCojNdvyR?=
 =?us-ascii?Q?2WMw2n5tBICcKpS0prCIG8hTly/FOjaNurO0/+9RRexMyTly5IpqceEWF6D1?=
 =?us-ascii?Q?DIFPobGRj+ZmzjD6cQaHIO55e6tt+v1CIjorUtwEa7aI9QN2uurA6NNOocco?=
 =?us-ascii?Q?sFq9tprUBDriWYPq/rhxyeUWzN7cB3X5+tsLrNUunXZmGhVi9E/Ka08swobk?=
 =?us-ascii?Q?u0S2Bd9Z/gB9L0IZG9KFK5LlECdHjJPy03VKP7USepchKH04jLhJVwSPT6IF?=
 =?us-ascii?Q?ju0iRWTnKw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: TGvjdW8//MF43AANPOd9D4s62oyZXDF3gQE03WotDRUNvzuEZf0MAfIfANLSDd5jQfHbjSuIwdYX7u/86cd4n4SvMv85J13fsh5z+KQ2X1JtKYg2oHE1oiHMNBwORnxLYv2rgRHiC+BkbrFQWoL/dLhPaw5qHnoIHeL32IO5Iqk93LAT73fEafBMUZEkcaWLCFI5VTIsv6DYGPQDqJvhuVHeAN/458b/I/IGt5Ktm7/SFDxk+KdYknL1rHE9aQ441XI+iDQpqUub4OAGp5xNuvutQmIPe7kW5p7/YKa1Q6sACYG9y3hqy9PiltSgGpHbpDiNJxbEIOg4L+koicODEw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ab2c400-b423-499c-ad37-08debf41ecb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2026 18:24:59.8301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D0PmGSx4wuTTy9DeMAljR9VtXzo33l74YwLi0Gr91kPNn8Hzu2CVROs3YglWFsHt3jDkaxeu6mJfYa2Nq6HI9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE90FA9325
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 41C3A6177FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Friday, April 24, 2026 11:11 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Samala, Pranay
> <pranay.samala@intel.com>
> Subject: [PATCH v2 3/4] drm/i915: Avoid programming color HW blocks for N=
V12
> Y planes
>=20
> link_nv12_planes() currently copies the full UV plane hw state to the Y p=
lane. This
> includes the color pipeline blobs (ctm, degamma_lut, gamma_lut, lut_3d) w=
hich is
> incorrect as we don't need to program these HW blocks for Y plane.
>=20
> This is harmless currently as the color pipeline uapi does not support YU=
V (both
> packed and planar) formats but that can change in the future.
>=20
> Add a new static helper intel_plane_y_copy_hw_state() that copies only th=
e
> rendering parameters a Y plane actually needs, leaving all color pipeline=
 blobs
> unset. Remove the helper intel_plane_copy_hw_state() as there are no user=
s for
> it.
>=20
> Assisted-by: GitHub Copilot:Claude Sonnet 4.6
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 26 +++++++++++++---------
> drivers/gpu/drm/i915/display/intel_plane.h |  2 --
>  2 files changed, 16 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c
> b/drivers/gpu/drm/i915/display/intel_plane.c
> index a8efe0011b23..559eef467dda 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -450,16 +450,22 @@ void intel_plane_copy_uapi_to_hw_state(struct
> intel_atomic_state *state,
>  	intel_plane_color_copy_uapi_to_hw_state(state, plane_state,
> from_plane_state, crtc);  }
>=20
> -void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
> -			       const struct intel_plane_state *from_plane_state)
> +static void intel_plane_y_copy_hw_state(struct intel_plane_state *y_plan=
e_state,
> +					const struct intel_plane_state
> *uv_plane_state)
>  {
> -	intel_plane_clear_hw_state(plane_state);
> -
> -	memcpy(&plane_state->hw, &from_plane_state->hw,
> -	       sizeof(plane_state->hw));
> -
> -	if (plane_state->hw.fb)
> -		drm_framebuffer_get(plane_state->hw.fb);
> +	intel_plane_clear_hw_state(y_plane_state);
> +
> +	y_plane_state->hw.crtc		=3D uv_plane_state->hw.crtc;
> +	y_plane_state->hw.fb		=3D uv_plane_state->hw.fb;
> +	if (y_plane_state->hw.fb)
> +		drm_framebuffer_get(y_plane_state->hw.fb);
> +
> +	y_plane_state->hw.alpha		=3D uv_plane_state->hw.alpha;
> +	y_plane_state->hw.pixel_blend_mode =3D uv_plane_state-
> >hw.pixel_blend_mode;
> +	y_plane_state->hw.rotation	=3D uv_plane_state->hw.rotation;
> +	y_plane_state->hw.color_encoding =3D uv_plane_state->hw.color_encoding;
> +	y_plane_state->hw.color_range	=3D uv_plane_state->hw.color_range;
> +	y_plane_state->hw.scaling_filter =3D uv_plane_state->hw.scaling_filter;
>  }
>=20

Adjust whitespaces during assignment as highlighted by Jani as well.
Logically looks good to me.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>  static void unlink_nv12_plane(struct intel_crtc_state *crtc_state, @@ -1=
549,7
> +1555,7 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_sta=
te,
>  	crtc_state->rel_data_rate[y_plane->id] =3D crtc_state-
> >rel_data_rate_y[uv_plane->id];
>=20
>  	/* Copy parameters to Y plane */
> -	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
> +	intel_plane_y_copy_hw_state(y_plane_state, uv_plane_state);
>  	y_plane_state->uapi.src =3D uv_plane_state->uapi.src;
>  	y_plane_state->uapi.dst =3D uv_plane_state->uapi.dst;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.h
> b/drivers/gpu/drm/i915/display/intel_plane.h
> index 9d627d321f2e..a5bb0caa54a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_plane.h
> @@ -39,8 +39,6 @@ void intel_plane_copy_uapi_to_hw_state(struct
> intel_atomic_state *state,
>  				       struct intel_plane_state *plane_state,
>  				       const struct intel_plane_state
> *from_plane_state,
>  				       struct intel_crtc *crtc);
> -void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
> -			       const struct intel_plane_state *from_plane_state);
>  void intel_plane_async_flip(struct intel_dsb *dsb,
>  			    struct intel_plane *plane,
>  			    const struct intel_crtc_state *crtc_state,
> --
> 2.25.1

