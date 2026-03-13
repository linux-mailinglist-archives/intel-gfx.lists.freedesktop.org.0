Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMPOKJPWs2mzbgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 10:19:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD902805B3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 10:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D63E10E044;
	Fri, 13 Mar 2026 09:19:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WxuBGGmV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8693110E044;
 Fri, 13 Mar 2026 09:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773393553; x=1804929553;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XD7AN6vsunlhKEwpl2qnQpcQ2nT8cd9A/g3fuEZYBVI=;
 b=WxuBGGmVS1NY/gkchShZLmN+kBq+yo7uLhCbFek2+pq9o2VmkgHUzy9k
 D7zyB7B2KJXEDIOUnaiC33ESLJkvnaPqohTe58VGAna2U4UOgtGp5DLWv
 kDAv3csoN6F4+PNkcnF3PXUBh7O1AvJ0TU+VJXYrmH0rixJKR2k8QfIue
 RIBzhZciAAl+rj2sXJsIe+xYVTKB729xFn21/hKvY+Ou9odPgsrulvH8o
 ADAssJxKDvHFahQWbivu9pNZn5fY/jgqAQ4KFQNWjgwBHdPwffSrfbtmf
 vU4vTAeJk8bFzT83CQ5WXyCMBYULkGKzG8TcsZM18PWri3EVhbTV+i1lV Q==;
X-CSE-ConnectionGUID: ceyS20rsRaqVpzt2J/6ctg==
X-CSE-MsgGUID: fBgxRRXJQxaC//ZlF4SOBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="74393851"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74393851"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:18:52 -0700
X-CSE-ConnectionGUID: i8mkf32mTGuYY2OpfJic6A==
X-CSE-MsgGUID: TNNwYiPOS3+Q7SsZuZ/Y5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="217133634"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 02:18:43 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:18:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 02:18:43 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 02:18:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A6vzfNW7LkDBoL0MmgtQ1anhRDXqX3lehg3w1oa8VFhm5t5pCFuFts28GfrtRfD+A1jqU4VwEdqPnp3lgsGDSwZeKjeBVJhVixAaayVXvllXqyiONEgeY5Py+r5GqmGslEFY+jnIgt4aYnbvhaaggQlU/6LvY6sTCOslDXNQckF4BKLqWHN/A8Im1RyuM4fWB3YJGIbyQvSy9GozO2MKRbCEWAxspU0AJ3EIqQhuyEntioAqV171w2h8teKiz7zuNbq2wHqSVH9aEuI0WJ4cF1/txu20enCiQrQmNJ6u0A9KdCsybGil2xcfoFKWovz2szEno116rrXLdurUypns/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8HdDSVaCdKuoTqNHyh94NfICCPVYhgpCEys+DFuSmwg=;
 b=a8IaaT0l8agnIR4V4VC33gnsh5g/am1S6R3LuyuiBD8Au8La5Cnc0pq2HfC3qjqULt/thnSK5FiZKcsscSsENwG7aDt/H7ilbVASqVHgGqrqnO8wEW2J7TJVcZuIk4qal7hvBPbXiohqlYd0n0zbOzXLyV5QSF+LqKmMK7xPBBz/EzCAnoOjPnyJPJ1kdzfLAGqJHMd2PHWiIbN2d6pMJGu84uUvbqPtJeeyaS4IppOS3K6uT9Nej/GSx9/MxDplv4Z2G7sz3VmQnWmZdZSoGl73+Oi/SfXlO9wo6exZlT202swfTOWaQpZXf2tpksypC7Udruc0t7szPa/7YwOJIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8)
 by PH8PR11MB6832.namprd11.prod.outlook.com (2603:10b6:510:22c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Fri, 13 Mar
 2026 09:18:35 +0000
Received: from BL1PR11MB6050.namprd11.prod.outlook.com
 ([fe80::37cd:d599:fc6f:eef4]) by BL1PR11MB6050.namprd11.prod.outlook.com
 ([fe80::37cd:d599:fc6f:eef4%5]) with mapi id 15.20.9723.000; Fri, 13 Mar 2026
 09:18:35 +0000
From: "Samala, Pranay" <pranay.samala@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: Check if VESA backlight is possible
Thread-Topic: [PATCH] drm/i915/backlight: Check if VESA backlight is possible
Thread-Index: AQHcr4dC4YFxaYVx4Uas8aQYwwSgZbWsMdzw
Date: Fri, 13 Mar 2026 09:18:35 +0000
Message-ID: <BL1PR11MB60508EF4456000996D7911FEE745A@BL1PR11MB6050.namprd11.prod.outlook.com>
References: <20260309053956.3966624-1-suraj.kandpal@intel.com>
In-Reply-To: <20260309053956.3966624-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB6050:EE_|PH8PR11MB6832:EE_
x-ms-office365-filtering-correlation-id: 332dbeb8-88d0-420f-b1db-08de80e18137
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: sjdFQS2M48gTe/FZdSq2gmOA/YQ3Dg4gkxzkO7GymrMBIt5c5sU0s3m3uHkNiHkCMFDZWXfYa0tRsXCEi8v8V4Mdc3gc1mjDbSbJKszGxy6ynAehfLm4c/iULI+ZGIqmDPQFcUj1LyCgWPhsT7yQXJ52K0l9Nw0Y0X0NLMMXSy6TBwq1jzeXESdan/5F7jgDeOmB2pX4XEy24xxn6cSF+60SHGXUJ71NifuuR3IOv06pUTQt9l/fzTGhkRaLhbqjqOy8w5QW8CPuFZiQncUsEWWfV9jnGpGz2s02AsbLccbEsMFaGtfXhSLFO+Fw5lBC6dy2Gl0Fv2Gu9pfI4era1kGkxTAdIqVMyHhhvK+9ddgAHPTDiLiV819KzILZG6ATyEcfpmhB7tt1QE7rC8gpmCgzsIhVWkfHEtXO5plC50SWZ4ExvT9oY4Q0P3j/XarxZweIHUwZhZIM7QBit9PLiKvQ3LmjFYh0xTP8435hqk6ricpXZGNmevCiJiO+4cVy2xyUM+D7gOCH+izMV5llGHdKGG5HGBzvO5lX1NJDTMkeH5oC6NSJjfKChYu/WuiYW11OiqhaiQqV/1M+WmCqhO7FywiQKXdtn7CMDv52K//Kh29IlEstQhXsIXKw0vbx2bDE6UTz9BZ52WYcopyXuC7VgT3v+vKFB36VOo/WjOoUPpxIBwFTLM492GMx3oEsJE3Myjq7YljryBLQeONrhLd6botNzJzkxxB/g+pXCJc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB6050.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GCYKx23DomLQd4lt2OgDRcL2jtLWdk3k9SkJrgT7nTAySdwea72/zVt6b0Ft?=
 =?us-ascii?Q?ztoaBrNQKCV5czE/5kyKSDmVtwhI7lxnSlnQsJVBvxyIJ0mbRzpNm/vAIuQq?=
 =?us-ascii?Q?bbsHK3Mtbw8Hp0wWBVGqK4lHWOEg6qq0gkG1DpPV/0PPp7kzhlOU0gAmyHNp?=
 =?us-ascii?Q?GybTj2x54HwK9FWSR/FI+cJGRw3gQ/BzjPCFpT8tIMx+NAsoylc1tLuh1TvU?=
 =?us-ascii?Q?yUYflf+ScxJlhp4kCmZH9naK1NG3OXZdAIF2eDoOZVahv3CixPESZUjT6heB?=
 =?us-ascii?Q?D1YIuwE8JvsIFOZB3cCL0tDDoQnfVChUXdKO4bkCeGPVXiEljaJeTZX0YP82?=
 =?us-ascii?Q?yzjNO9FhRmB2QW33B+FetNmqEcaknQ4ZTHqRM+qab3xd0zlUUYrsL/Tww8vB?=
 =?us-ascii?Q?OftZMWXhQfMh2qTPwxbgPlt/h3QfwRtveNyNNxP9+bspS46xXhM9Nq+bF+gi?=
 =?us-ascii?Q?40ZLeHQ1Y8e9TcdzH0nbr6ZvHqgCn+G5Redjr2nLKby7lTFvR1vkB++ZSYku?=
 =?us-ascii?Q?4ql0jufinyDOhtsaj4WHUNtyN56PNpvgad14f83vVQSzIcI6cKxeD/Vhd4fN?=
 =?us-ascii?Q?d4BfdeMuL6DY9H/GZ4ffxyc6tAAN/va3Ojunrh95JZxqc9Di3S3BesR21LdC?=
 =?us-ascii?Q?VJJUoLKucSIjCofKev+5l8JieIOkdJC3FpkT3ELORqKuMJglh8VT7BCRKm+Q?=
 =?us-ascii?Q?gol9q/b6Y0WRv4lpjEDcWKSfB9DL17DpE2QEmxbVWTuncqrPt1VUiFFYMJgb?=
 =?us-ascii?Q?STvT0uT6BXzWixTaqAgM6Ep5dqJJqMTTndx1IdVvtJAn/hdSb2fd3+ewz0Xv?=
 =?us-ascii?Q?oxh4yBMPlOJdlMruH9Q/fCGlweh3KZxKer3Cgdm4OVlEdD85BLI/305VMUkB?=
 =?us-ascii?Q?XU9HgHdZY4A3NYtLLimnH5hYmgw4gd8wYp1YiL42Fx/z3p8Pm2jitSbnkphI?=
 =?us-ascii?Q?mD7nvjzdmCSZRpPv2ZtfnchuSACG+wZMeLp8DGjhKV+SX6lC+SFGMBs9notD?=
 =?us-ascii?Q?odUt/tGkbNaGdvH/DnjKF3donXPa1FRCCHFZxgBJmMSyMR+U7zebAs9A1t1t?=
 =?us-ascii?Q?i24HVBT7gg3/3bV6bLsqzO6H0/cICt6dTYP5CKIlebkgWcJgKykh7WiCJbDY?=
 =?us-ascii?Q?E8wI7R80Sar60Hz8bmeMj0TSGbNgezC87ShMH10m0I9OSP/OPqy546kIbrqz?=
 =?us-ascii?Q?LixjbkovhzjTmCZqIoU++/MwG+xePxWjByb3+dPSRYVsdE4nTYPHgLzZxbCm?=
 =?us-ascii?Q?QDVI3nDOmdPnrmyygtzpAvMWQua368jaAu8xauQQiagJxBFK7+gHhgv0krBD?=
 =?us-ascii?Q?E3kCyQscagKaxD97RDQgGdDTwpbWo2CBZtqqXX5reiGuER8rJ6JiT2n4z9Tv?=
 =?us-ascii?Q?Ig28C1TcNczX4M2D3tBz/7Vzd6MWnDc2apNqE4eXkAuvWZjFUIBBk5FVHyIk?=
 =?us-ascii?Q?k+A9DurH67QH7Y5aZp5F2fPD82lQ3gvdFQTml07g6rNtJUSe5buUsIYBIvVa?=
 =?us-ascii?Q?C5cIgfcgQoS6H01IUwTZfqnhgMFwk1sX4TwrXiYKRSUMSEtg4wtEhEJYzFel?=
 =?us-ascii?Q?ilpBldz66g9ZpFVMyxcb6EW6dpVKteq6bnCCry/2rT+nK5dDAoL82G+mvbYQ?=
 =?us-ascii?Q?5aWHeoVh6760zwAoYDJCl/eE7EOoaRiC9IZgrq9U5EadG6OlEcAxWicuQU4K?=
 =?us-ascii?Q?6yVMXwC5vkuEdlsRqZCTWeip2vz6rNgF0MSBFWl7nPil/IUSlkRg4blp5E8z?=
 =?us-ascii?Q?RyNmUyEcuA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ub0ozu6Sto417evJ4UMX8LbE0Bw+e20KJesWAytkojmPhFCOJr+6FZ239OX8pCMQfAamt3SToqfnA2NTcSZCzQkof45WPi43lGsOYlM7hFTEmhxXKuBaUTJeZTlAF2OKpX3b0ERx06Ng/EMYJ9rjv4fbcpz5UstGzE1yDe8t+FmCE7aXR6KuDi004RNO/5xsdFoKySejeeXLx+r2jZpfsuNVF6SRPt3uHszKIOwkw2h4TaHA3ddMfaxhQcLW0S930KXluTYt/njhywiwiBPlPcnQrTsqvnrvN0/QKQvd2xDYOpptlU0DT5Yrzk1ygX6ULxd27mLPzZMZO7cbxUxinQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB6050.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 332dbeb8-88d0-420f-b1db-08de80e18137
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 09:18:35.6686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjvem80w7UEAevbNCVYw7oovuNhwsswgV1DwDusVVJXq1XU25B6t+y3ud9Rk/zz3UvOsV81YYWTF0WFtKrO3ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6832
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,BL1PR11MB6050.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pranay.samala@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0BD902805B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


Hi Suraj,

> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Sura=
j
> Kandpal
> Sent: Monday, March 9, 2026 11:10 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/backlight: Check if VESA backlight is possible
>=20
> Check if BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit is set then
> EDP_PWMGEN_BIT_COUNT_CAP_MIN and
> EDP_PWMGEN_BIT_COUNT_CAP_MAX follow the eDP 1.4b Section 10.3.
> Which states min should be > 1 and max should be >=3D min. Some legacy

As per the spec, bit_min should be >=3D1 which code correctly checks.
Please update the commit message to min >=3D1.

> panels do not follow this properly. They set the
> BACKLIGHT_BRIGHTNESS_AUX_SET_CAPABLE bit while not correctly
> populating the min and max fields leading to a 0 max value.
>=20
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7514
> Fixes: 40d2f5820951 ("drm/i915/backlight: Remove try_vesa_interface")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 36 ++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index a7b186d0e3c4..5b6f5c5f00e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -609,6 +609,38 @@ static int intel_dp_aux_vesa_setup_backlight(struct
> intel_connector *connector,
>  	return 0;
>  }
>=20
> +static bool
> +check_if_vesa_backlight_possible(struct intel_dp *intel_dp) {
> +	int ret;
> +	bool aux_set =3D false;
> +	u8 bit_min, bit_max;
> +
> +	if (intel_dp->edp_dpcd[2] &
> DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP)
> +		aux_set =3D true;
> +
> +	if (!aux_set)
> +		return true;

This aux_set variable seems unnecessary.
The check can be simplified without this temporary variable as below,
if (!(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
	return true;

Regards,
Pranay

> +
> +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
> +	if (ret < 0)
> +		return false;
> +
> +	bit_min &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> +	if (bit_min < 1)
> +		return false;
> +
> +	ret =3D drm_dp_dpcd_read_byte(&intel_dp->aux,
> DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &bit_max);
> +	if (ret < 0)
> +		return false;
> +
> +	bit_max &=3D DP_EDP_PWMGEN_BIT_COUNT_MASK;
> +	if (bit_max < bit_min)
> +		return false;
> +
> +	return true;
> +}
> +
>  static bool
>  intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector) =
 {
> @@ -625,12 +657,14 @@ intel_dp_aux_supports_vesa_backlight(struct
> intel_connector *connector)
>  		return true;
>  	}
>=20
> -	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> +	if (drm_edp_backlight_supported(intel_dp->edp_dpcd) &&
> +	    check_if_vesa_backlight_possible(intel_dp)) {
>  		drm_dbg_kms(display->drm,
>  			    "[CONNECTOR:%d:%s] AUX Backlight Control
> Supported!\n",
>  			    connector->base.base.id, connector->base.name);
>  		return true;
>  	}
> +
>  	return false;
>  }
>=20
> --
> 2.34.1

