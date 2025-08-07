Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE566B1DC3B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8404C10E89E;
	Thu,  7 Aug 2025 17:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NCW8uWM/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC94A10E89A;
 Thu,  7 Aug 2025 17:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754586206; x=1786122206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fDUaYYuec23z/uYXYW51mdy4g3KRis4Yw33x8EHaDpw=;
 b=NCW8uWM/QyziaVkLMPjVfz/gzrKnk/2m94o1c5+UkNsqhLMBPILWeuhZ
 mD5NHa0e0JFSTMDCVQ+p9yk/tiidoBpBTVJ47Rzn2W6q12SwQFpYU0oHD
 S7C5/LL8GbhvVsJbURPNR4+/PfWIE7siXDJ052Gz4Y5qevTHky4wt3/25
 +Z6MHZQp06xPdsvy3EJtL5kxOG2pzqj6wuAZeCU/QjmioMrI/v6UoasP6
 KmL5O14CBKRTxcE7mEVE6wCF55qOlsiddrBElRIZUUSN2aLUIhwxyH1u+
 guF/L1FBExv7UAoEwv4+4X4luwsAlEP7SXRy+yO3D65wlaj1OzF53mCEB Q==;
X-CSE-ConnectionGUID: Uo/s9t6oTC+g4AIhQ0/Ubw==
X-CSE-MsgGUID: coHepX7+Saq3lSy2UEraxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67626368"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67626368"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:03:26 -0700
X-CSE-ConnectionGUID: 2wcvjZ6FTeqaJUSmkxPlrA==
X-CSE-MsgGUID: NgeznLxTR6SJ3vq4qSXi+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164775840"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:03:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 10:03:25 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 10:03:25 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 10:03:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e1meAyAfMXIqz1RiqtosQ47adTTxWyxsljnNvv3PZGra7hLLakYI5uKWqeU5FI+zA7k57uZPTK6wyMWwxTvd+HNXiCYGycIVzNIFO8RHh5TvFY67LKU7hhNMEwvDoJxKt2aVJf0VmBtogu14Vbnl91pawALzBl2TUHGIkGLGuI1qB2QpI0NLsPM7U9s+wHyBVVqqfMeF+scuYlqq1h3eFksTkWr41svHAusf5n0iI3ruEANAqPY6GbykRvbsPeXK7O5V0BNVFEBFe9uyjPEPkEUeBXfDXxpthPgcO1fm0edL17zq816uNZqL1hz8MrqDNN4Pv87nvfCLyVS9R0lzug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dFgh0lylxAqwbN4oET3vIH9MTETy01uVrObl2ESDt9o=;
 b=jlCF1b27JPIVzbiszZ+qkVFCkgdTRAUWyVvax7EosJjEoFf+QVl7h+2y15g8h9L60PtkFtnZVHOfS9a7sMSqPzyoX7/cWCZGxQKpl+dg+H9jn88czP+wIkcG4k8dk67qFsGHypMsV6qP5qh8Nfb0TaBA4rjdxpIJBvjqH/SxoFEgPtB9aWkNoaAqCDaBk7i4GaIgsg1PyaJ65H2EEDJWJchSiaGKKrA8KM0JmYvkXI5ugSswYd6yETFPKNAIk5A6+qn5QhLBbYk1Jb8CQKOyVrli5qYXBrlgm8/skpTypOqhPfdRGgQmLIS8PwWHSW23obolHc2bCZr880bsS75N6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH7PR11MB7572.namprd11.prod.outlook.com (2603:10b6:510:27b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 17:03:22 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 17:03:22 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 09/12] drm/i915/skl_watermark: Remove redundant latency
 checks from vblank validation
Thread-Topic: [PATCH 09/12] drm/i915/skl_watermark: Remove redundant latency
 checks from vblank validation
Thread-Index: AQHcB460nJsjCWTpm0GKLrJgkaUI6LRXayIA
Date: Thu, 7 Aug 2025 17:03:22 +0000
Message-ID: <IA1PR11MB63487A99BAEBFFC056410080B22CA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-10-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-10-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH7PR11MB7572:EE_
x-ms-office365-filtering-correlation-id: 3fb7fb3b-1a51-4061-7cf1-08ddd5d450dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?MC1jzAc+WuJTBKPsbL/dp2k2Jhvs4Sf1947Pic38Zbh7nPAx409MuTBCtRV3?=
 =?us-ascii?Q?yku297rKnWUj9gCwUAiyP2dJldQrdPzD6+rmk3nGf4X8aKYMP4sm9c2S/A16?=
 =?us-ascii?Q?vK6c/4E9JlyO3XORCcXmhWnbMKrCzAsRRGiQ8xu3knaBaXimovEyubSZuKFe?=
 =?us-ascii?Q?9O4/yT5OZ5J9U2tQH6bf/ucO0Rbme+t/oUHr9hm50s4Ve+geFnRoEdqZgwja?=
 =?us-ascii?Q?4ILibkbVLFfy4LPGldBtrK+vW57xMUDcjMy86QJq+m0emuAGK0QQdIRhU+jT?=
 =?us-ascii?Q?mDAgKL324Lwnlaq0IGSyXkSIQanaOXwxhOT2EJt9c2iWbljJpfi0KA5Jwznl?=
 =?us-ascii?Q?FEpPqJNvr8GQ9VAV4JqdfuywxYFQzRCRmBMn0eHvje3hu5dR/y4oOrX0ksty?=
 =?us-ascii?Q?iqtvvaKyCqaCN/UlTulm0ilHMwNzrP/UxLkvu4FNx/ubSZwJi+mlzE+x06xF?=
 =?us-ascii?Q?P/cfeRwi8qFr6Z8Xk34c4YvJz7wSKz3kCu/2SctvU8nTLILvNrghJygAnjc9?=
 =?us-ascii?Q?oXDFJZdCYp3/bAwo/QSiSE4/fHWL4PTHJoqswS+T54VwUhK+zX0YcakRz2S1?=
 =?us-ascii?Q?aIy1AcIT+D/khEyMKdnN4+n8o2PR1p1I1L8Nj40dfDYh1kUvcrn6Vb/JD4/m?=
 =?us-ascii?Q?YzPfvTtyfFzCf6GoxcI1X5eItePUo8ZTFhJcfbmYjrfyLcJvg8Rc2w5bP7/G?=
 =?us-ascii?Q?bY9TJYgvgHEmYsOPGYQfGPoHoHPntGgM6K7JapJkU3m3j2TACudFUD6tOJfM?=
 =?us-ascii?Q?vxZ3pViNl23HKaOney4QNfvEMKZm+FgkFUU1Krhm/JS+nHMFKBDoLTDd6w9y?=
 =?us-ascii?Q?ald8ghCdEuLTIbHIcowzwGotQH6R+HKyQuEE43K7rh7YVAT/ujmYvImYAtFc?=
 =?us-ascii?Q?AKXyHt31BTNZQr+EfjGLpaegmXDnaiyw/vJwAUKVVuGf3vM2Za3Oy7V6oUin?=
 =?us-ascii?Q?dBKkpQd8TsLkQ8zuCBV5PPuhf02DUL4rMUeezW27wg9wLDA+NRTJeHXuzv4p?=
 =?us-ascii?Q?kbbvHu/8l/5RToujZOH0LjbfpUVQluhtLju/siORzr1c6VWzZrMEUBbXYqKi?=
 =?us-ascii?Q?LnvIHfxcPx/G9JI5kvhjFvZd8nAY3Aq6WBZN8yaimTkSH10NpvRBiSIkTx+7?=
 =?us-ascii?Q?h0swlgVQLZGD3vNfah1LwlMsNBLd8Lx9hro4cLnk8/gi5FfdK4KEN5j2xccw?=
 =?us-ascii?Q?nWNvv2eoZyoqHiSmHNtesgMXIN8fRWjUB0sYYmV32/hPayfAch9lHlzvKuaV?=
 =?us-ascii?Q?kgOqqbMRgjfwqrjmNOfZiD2Uc4uMPvQtjfz2tPe1R/3Mc0RrUwCd4XF1gikv?=
 =?us-ascii?Q?zg71UVBytv51WZuz/socIQiJp+iObWvTof0i5WpEo2komo0LfaeOLuNnb0OJ?=
 =?us-ascii?Q?tZQSpp+qzSSWFHxC03TH1qFV5EHU0yjjcomEJV9LilHFbvzIz5bE1BW92nv7?=
 =?us-ascii?Q?ieaVKj9ldOfSSHO10I6Se6AhknFbmHMYSx03JmWayki+gljh07bwKOX7+s9T?=
 =?us-ascii?Q?v4YZTtdi21ROMr8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KaYq2iqeVq7kwWDo+lbJOmT8O93XwtZftBcu7a3FhWPQVncCOYDwnpE4TRy3?=
 =?us-ascii?Q?qUYlqvQl5D4e1qhvihxtc23Xgkau8obGiPqIi6fXQSjd/mw0thveoSo1iGfK?=
 =?us-ascii?Q?xnM4bifLifzpY/Qwg0qIn/qtW9PVCpUPJQLd1rO5Dbaeo/9Rsk1lyTGfIlzy?=
 =?us-ascii?Q?T7skckmrsOlMBcQ+VfneAmEZYaCnkeb6a+l3GE8kEEZ3TzgFetDoIJf6sRgM?=
 =?us-ascii?Q?BQTrZ9Qp7SEtU7etHFQ3bVc5nE0IzFHhbpInNEkolE5RAWgYd5MKWqeXkya2?=
 =?us-ascii?Q?mmIH475XmmbQiO69KBHonTDf3q+xMJcasvPJ59lpDMXJkIX2MKtzh0iQybKo?=
 =?us-ascii?Q?I7cpgzk9LukeJhAbSJNeNsebBMEviAPz0tJGAmrx9/Jep4SyEl4PKuQ/fqlr?=
 =?us-ascii?Q?utLWRVVtAM6fKoyDOFsZVd4w+kkEm8zPvJIN91BdIcJBze7WwoYm5mswusbF?=
 =?us-ascii?Q?k+6CiRspKvVqWO+FTtvY7hZWZlcdVtQ3vPUqUVtvPh1jZ75+ck/jQV4kHB6H?=
 =?us-ascii?Q?r+aydxNV7DnlB+ret7djuT3BnDh0xGAFQswoI0GwVYdPJ2yXz1OFd8dx80DZ?=
 =?us-ascii?Q?I/FMOI+tXP7rAzBwvFB9Ez/WM/2Vo2GxjoeYWt2np6Q/vU5S+zt3zVj0BMWO?=
 =?us-ascii?Q?3IZNKtZxtqgOSjvBA0Onc5l04//ilNI+ld4S0Xi+00Ds40Fv/PYo+kG4TLrJ?=
 =?us-ascii?Q?tXDsEgLmByrY3Zg5nx/gbf6KefmqQIDmk/OmxhUUGMD9H2pRKfnqdk5wOmxN?=
 =?us-ascii?Q?D72Q6aAqo/m3mawNf4Sty5X7Si5o3MPvXysCX8MqomZHJ4sdMaGh6cmx1Bng?=
 =?us-ascii?Q?91lnTxFuewgnXiz+R2c0ANDCUvc4V0XSW7tJ1zAzPZFf+P5OwoDTWWEwMCkh?=
 =?us-ascii?Q?FtIEfo3sbKQJJTRnUaFbNbNBIYCFy8SdHihxW6BJ/U+78XY3HUZxroNqBf9S?=
 =?us-ascii?Q?bnfv5+va108jiK9HXuwz/fmnEjZB83ntQ/qwcKQrpF2H2eD6nyAtNEAUlsys?=
 =?us-ascii?Q?MginHb6FfJiFrEPuANeBhBzMTy4rnusFX4uq9v1nriW7rnb6oCZ4MC8A8vWs?=
 =?us-ascii?Q?7GOpdqWuqDqhcPNFqwnh8KQxPWshVu//mE+/Wx5baZVl948Os4zd1sGiYik5?=
 =?us-ascii?Q?4FRhtWODMpsg527xx61qGW1/vbHFSq1f+rZyujhRDwyuh8os4Mt3Kar+lq3F?=
 =?us-ascii?Q?DATzGFVv5EoSMnsWWFesF+jDdLvqKbz2qAVv9OlXCd0QidGQlLA+AjdUlEat?=
 =?us-ascii?Q?xKf5kRsfRbF98dDnBo6NmQFo9fFk/H8DvVidNxqAEIGwdzG/J6sJN+NTYkEz?=
 =?us-ascii?Q?XvVBuzHRDnqGp1kuvmmhenaKSW/yY6CFkM07LLoeSRAMoasZz7BXaed5w5xd?=
 =?us-ascii?Q?rZOvt/+MV2tKpoKKn6ycQUxHW54mKvFlodBhe3lEM6gWWboGNYMnTWDOkJak?=
 =?us-ascii?Q?2JCXDcn/6yEa4sIe+KqNW4DoTeQ3k4quXLqubAQuy77i1Rv1+A0m3E9TjxdL?=
 =?us-ascii?Q?pqJ2PuskAwNRfwcnVYdgmnUKmTSBh8ahXdD5j2LtGrIsYB3faGjlOZvKNvqE?=
 =?us-ascii?Q?Mcl1aITYy54rJfQIsrBCUluFrIrbIJGt/bo6DlSfOV7JEB1/GOoFSrIgB/q3?=
 =?us-ascii?Q?B4sEPcd+XGfgF1/hLqq+T3Y=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fb7fb3b-1a51-4061-7cf1-08ddd5d450dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 17:03:22.2567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D9lwoVrcmEy2FqUVHsO4Rz58WJ6M1ySNRTb5oAE6UYyAgV/Acww3CxWQwura7qUMrxOPFQ9opImLY0uun26WU2P8P2Kb2ko8xA3cWFFtqPEFUOHn3GU/OTO1i/ozwxK+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7572
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: 07 August 2025 16:46
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 09/12] drm/i915/skl_watermark: Remove redundant latency
> checks from vblank validation
>=20
> Drop DSC and scaler prefill latency checks from skl_is_vblank_too_short()=
.
> These are now covered by the guardband validation added during the atomic
> CRTC check phase.
>=20
> This cleanup prepares for future changes where the guardband will be
> optimized independently of vblank length, making vblank-based checks
> obsolete.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 78 --------------------
>  1 file changed, 78 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 5ffa76cb1633..7578e29f0e36 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2158,93 +2158,15 @@ static int icl_build_plane_wm(struct
> intel_crtc_state *crtc_state,
>  	return 0;
>  }
>=20
> -static int
> -cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state) -{
> -	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> -	const struct intel_cdclk_state *cdclk_state;
> -
> -	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> -	if (IS_ERR(cdclk_state)) {
> -		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
> -		return 1;
> -	}
> -
> -	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> -				   2 * intel_cdclk_logical(cdclk_state)));
> -}
> -
> -static int
> -dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linet=
ime) -{
> -	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> -	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> -	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> -	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
> -	u32 dsc_prefill_latency =3D 0;
> -
> -	if (!crtc_state->dsc.compression_enable ||
> -	    !num_scaler_users ||
> -	    num_scaler_users > crtc->num_scalers)
> -		return dsc_prefill_latency;
> -
> -	for (int i =3D 0; i < num_scaler_users; i++) {
> -		hscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> -		vscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale, 1000) >> 16);
> -	}
> -
> -	dsc_prefill_latency =3D
> -		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> -						  chroma_downscaling_factor,
> -
> cdclk_prefill_adjustment(crtc_state),
> -						  linetime);
> -
> -	return dsc_prefill_latency;
> -}
> -
> -static int
> -scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int li=
netime) -{
> -	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> -	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> -	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> -	u64 hscale_k =3D 1000, vscale_k =3D 1000;
> -	int scaler_prefill_latency =3D 0;
> -
> -	if (!num_scaler_users)
> -		return scaler_prefill_latency;
> -
> -	if (num_scaler_users > 1) {
> -		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> -		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
> -	}
> -
> -	scaler_prefill_latency =3D
> -		intel_display_scaler_prefill_latency(num_scaler_users,
> hscale_k, vscale_k,
> -
> chroma_downscaling_factor,
> -
> cdclk_prefill_adjustment(crtc_state),
> -						     linetime);
> -
> -	return scaler_prefill_latency;
> -}
> -
>  static bool
>  skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>  			int wm0_lines, int latency)
>  {
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
> -	int linetime =3D DIV_ROUND_UP(1000 * adjusted_mode->htotal,
> -				    adjusted_mode->clock);
>=20
>  	return crtc_state->framestart_delay +
>  		intel_usecs_to_scanlines(adjusted_mode, latency) +
> -		DIV_ROUND_UP(scaler_prefill_latency(crtc_state, linetime),
> linetime) +
> -		DIV_ROUND_UP(dsc_prefill_latency(crtc_state, linetime),

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

> linetime) +
>  		wm0_lines >
>  		adjusted_mode->crtc_vtotal - adjusted_mode-
> >crtc_vblank_start;  }
> --
> 2.45.2

