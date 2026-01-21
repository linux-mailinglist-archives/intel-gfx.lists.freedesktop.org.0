Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OC8pLqircGkgZAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:34:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE1C5543B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D13B10E746;
	Wed, 21 Jan 2026 10:34:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PgHqovJx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CA1A10E042;
 Wed, 21 Jan 2026 10:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768991654; x=1800527654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gcWLTBpyCirbsb6a1M9cJzmfuwuZVw21kYJq/Zs6akQ=;
 b=PgHqovJxeKoyL2w6psyJOl8T231AYMiUPMPxtOJdISC5SK+XQwW/gM+e
 jAajj98BjUXNEtYkBqFTqiUuR1cQ8KYWyOsq5D9EF6NiLgNy2wqFuQ/VZ
 vuYln5F34fpN0GGsqUOO1PgKZTkpeUhleDAxgwosdJJtImm4mjxPPZIiK
 aE9G0mDCDldGBYIKsXUYpfv0oB56Ueq7HD4FFZ/VlfuRcLtrxoZX7SLqR
 QVyI2wBhZH/O+UKrteTXzqkQhLy+vfwEpBqRpWWMWpUIk50pW0Z5N2uga
 5uSJJq1odq5hkbN9ykQMfvcdGRr7QGfPfegUyC3oVYkoBuYs0HwYGtDsy Q==;
X-CSE-ConnectionGUID: ye/HNonFRB+SvEdwbiPbjA==
X-CSE-MsgGUID: 9nOVM0meRreRVYvVa9SU/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="72803783"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="72803783"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:34:13 -0800
X-CSE-ConnectionGUID: dYIjybQUT+yupvau9LLKmg==
X-CSE-MsgGUID: fj2b2gsYQq6E7KSZcpCZTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="237084472"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:34:12 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:34:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 02:34:11 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 02:34:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GPJXWyCEqOQi2ICWG7R2nVJ5JQhKo2yVDp6ZB2Zo9hM1G/3/oHlGj49H9r9SawVgGrb7cai7dWs1gz98HhDJbvcegqlk8ZBR5bAlQrCjUxaOgWnYc7gzYFKhRuAdAw+AolGq9xDSkhAyv41p37cVXZceZoOvUCeYv2krjZDjey4PpMpdG0LPwTraa/8OoMeWSv6hrievSPEZiZbBJ/O1y+VI06YU3LpsF155DjlcuFwboCr4u9JBUTH2CvGkwXNTxoAkGFQ5U9cDmWLzbrG3Fvb78s7iQXI7qZbapB6d/+7/f5wJBK/n5eCoVnPkMg4IrNu8zkv7AgWvuEH1QVISAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8VXCmROdSmvFbaopb1LwZsnnDLvoL3M+tlpNE6uRVPE=;
 b=tUXiB3T0etFoeb8E8VH79YFLQ/Jkc6kLM9F3FsW4gwms0bFZ8HXHwmzUtCVmt8MdNXGjDlJDK85QY4liRbQLAi+hvsvkCgoa4irCPrdVVKCi/aeUGNlWr/X7/hPCxqiROjAMe8QtrvSSrWVXhMl7XQjhHdc9KQ8MEO9He+1e+N9abqnLaHQcPKgwhZCYcf4uZDVmjB864b7j63jlqq1YETJKvhUFPmmJFbu4CVBfFpmpG63+Dfx6jvkERnDWDobpVAjPVpsq73ZMVoHvHLTnR9zqVBCkiBT5dWkORXK7SA23QgGvZ9iXzKYbRTlz2vvsHqX+e1jNkhIMfHv6wbnfdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV4PR11MB9515.namprd11.prod.outlook.com (2603:10b6:408:2e3::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9478.4; Wed, 21 Jan 2026 10:34:09 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:34:09 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH] drm/i915/display: fix the pixel normalization handling
 for xe3p_lpd
Thread-Topic: [PATCH] drm/i915/display: fix the pixel normalization handling
 for xe3p_lpd
Thread-Index: AQHciL59fwJGHrY2oEm8mmHOI6c+57Vcb3kw
Date: Wed, 21 Jan 2026 10:34:09 +0000
Message-ID: <DM4PR11MB6360B7783CAB63B3AAE3062CF496A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260118210717.284056-1-vinod.govindapillai@intel.com>
In-Reply-To: <20260118210717.284056-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV4PR11MB9515:EE_
x-ms-office365-filtering-correlation-id: 88806ee7-e7a6-4aff-3727-08de58d89c7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?yWl2FbfCzpXmNJN5r46ukXt0WbPZ/ajdKxXY1DSTzDnldsa0+Zqe5exfnAxE?=
 =?us-ascii?Q?HQMmE4GIiDGyvK+NJG58bRmP47kmRUCa0Yl/3kSyvrKPcGDlmf6Vah779Gwd?=
 =?us-ascii?Q?tPecI1IUO5qOwbwSu2X48MySm3DzEWfUPi8KNo1A3nAfNlpd80YqJg4vLn9L?=
 =?us-ascii?Q?zmSlRS3ueHvp0d0LFrAuL3T6H1TzXIx1IGD2tO5/ep8nQvTmam9D78YhMrEX?=
 =?us-ascii?Q?b46sYquaVWuOocRKB8mOxpbr0k+xlNiEOv4z8JxSA+74f5Br4V9cTiSgJvZy?=
 =?us-ascii?Q?Wpp7BJ8tOEttDak39iF5B4Ltc46bV4y8b6ZoroB9/MbRJkeiK6I3bBZx3PXW?=
 =?us-ascii?Q?poOZV7I5bssRzpfbjeDlUYtGqAOnKR+cVXwYWgVHOlbogMhemkJQoV3S5fsR?=
 =?us-ascii?Q?AbSHqoRm67Pvv7PsEWhDhPhMNnHQ+a5daGCbK9YQer8Z37rQ7TJg9KbiytZR?=
 =?us-ascii?Q?tbK7Xw91qukKHqXSxwWJzSdzf2LmNzX5skAwKZAmaB3CHSz2iq9Wbz+W5L48?=
 =?us-ascii?Q?Th9hu1/IUuT/qLGlmLN175qemdN9rgEOJAdNnzEt704ZfGhSbb4o6uSPFM/9?=
 =?us-ascii?Q?zkP46EDTkNLJxUKGSxppg/uYc4kzBct21E6dE8/UeyKwTfsygSi0MwYb4KfA?=
 =?us-ascii?Q?g8cuFouinvdy/lWn4Ljk3yCnNzH2clRezrM0+h7/H8WbrQzb/1+rxRp1mGng?=
 =?us-ascii?Q?Hc5c+FZuH5xQT3kYzBUKnEKoB2cf3XpHx5ym25VuSRP2AVVCstJ1rgkizrb8?=
 =?us-ascii?Q?VM2LcOKBLPAAU49h4FCzuU5zWMS9PNS4KX7VrsF8LgI0CpmE+7ODQcwYP1P3?=
 =?us-ascii?Q?L6cojcZHtx1viPbMlsRMi/dZPlkLHwR5DCjp2k0B3xSyXh+1REBHrbc0dSRD?=
 =?us-ascii?Q?s7p1aghTyRwctLuU6J2CYUxT7/qeeX9r70Ah1J/IlgNgJyouvHFB9VZ07Z1s?=
 =?us-ascii?Q?dc3urNgRR9t6Hu8yTTxiycDVWJqNQGTo/NKOZTPTF9Jm1jp99mM+jKwDRRdt?=
 =?us-ascii?Q?1pTbiiYVyrQlygN+mqBT8CJED/hFvSG9qaGz7Bj6/h2xHejiHBUT5k6keAZO?=
 =?us-ascii?Q?r5BSPn9awCmD+iMwlpC60rmDD6bU5VHr2TfQudlcy/ykmFtdqSMxcG0UnWh9?=
 =?us-ascii?Q?g2Jq2+eCxFdvSZFMNHgFYAd86RqHPkzdgLduqlNaLFd3ztK0jI+4X3p0qTkV?=
 =?us-ascii?Q?ekfkGtYIn3dh+ECnb0SOdGov8JZtahQvW71DsazwF3ONuc5AWvXtRwcWAl0M?=
 =?us-ascii?Q?z14ala7UZn9sVzn0JYK38hViGcX12cxIkBSTNjhMbSxt8moBMnL3VFKY89Qp?=
 =?us-ascii?Q?YnDRMpsaGjAzbeYBLi0eaH3OgJCqBo8JuYje0TVz7zQ+mutHXLLgwtI7b/B9?=
 =?us-ascii?Q?UeKkA+ACYWLcACVVZEl9XO55+LONNCwpyRZG+YMwVUG6YH8ydDciZ7FNf4VA?=
 =?us-ascii?Q?oINquvgiATF4/VLvIRTQd7WZAPDW7oSVCReioQTXT66rKyD462Ofal1XWhgc?=
 =?us-ascii?Q?hfaA5FOXWkQzLfhkUvNCwTyoNR6p+G5bsxr/xoxDv4PL8p9i0F2qAx0MUArc?=
 =?us-ascii?Q?FZLJxTOY+BzzF2cK0sVf8u9bV9gX67CsyIZB5M7qxr3RcA/3yWfwUNU2A66Y?=
 =?us-ascii?Q?nregrCNLnkK90A7i5jk69bc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1eEFTbvniVNoVid1j0KAQeU1a41NUFz8MP43qD5Yl9ZBLIGPUM9XrCeAbJtf?=
 =?us-ascii?Q?lHxo4cyWFxi/9ltypG9DxmppLeYoxIDZNAntj3vs2bAcTd6ljYCWbDN+cjqv?=
 =?us-ascii?Q?uMO0i8P9z8lTX5rk7e5KvgVO/qRW+tzZ1s+/pCVXw6UfJe75427Cc4YraiMo?=
 =?us-ascii?Q?FzT/XKvODBodSqPS9/xlj6XE+ag9emipHi6qsM7LpuAr2mQRHezblPLCiu83?=
 =?us-ascii?Q?LjN8gCQOlSuuSrLbguikEAw3bBHnmYHCEq0wa3/tAI3r//gYkdB7hef1c5ON?=
 =?us-ascii?Q?w25ySRJzPas/qubu4Gv4YHTHZkENJ1163tM6sz1P40lIy/oTG6NAemYTIn2h?=
 =?us-ascii?Q?QlGZtfdMId6UcUeqNMfee30l2lUh+CVT295CGGhJLA7abMS0t3z2iVcyw8s1?=
 =?us-ascii?Q?IJXNKJW2dqWwN4JWIBg4ROIQNz26VA+XZdPJV1aflGo43h4B05SK3ovj/Dr1?=
 =?us-ascii?Q?ykLaWgMB0V2dXxcvZ39VUoHm58SQMnceugSOLQwA2Wt3IGTpTdMrF67Accly?=
 =?us-ascii?Q?U1WpIHaVUVsU8lGKafDcREEkYNyuOmbAh4cWQbUR9d30Zfuy6mz/1ShRan/H?=
 =?us-ascii?Q?318akxlMGq/AjTCxgmCqI8oBcNfS0wHapOHpbOpvzXmozHhLImCTUUvaz3Ux?=
 =?us-ascii?Q?0hfVQ+Cd34E1KWo4EC3bWdaYih0Y63TfmvjaRUNvGdU3x2X7U6SOe2kS6D+V?=
 =?us-ascii?Q?TtNufxzhu8fjZ/7CwEs1XKzWYs9TREV/adfyAIQgqr6siYovXRCe79w6W+X9?=
 =?us-ascii?Q?mOICP6x2QbgGSJU6AUmNdg3F7j0nGU8HwDz8jUw+7dBAUnI9UXmt4kofSCnd?=
 =?us-ascii?Q?2O69F+2ZaE5+2c7DsZWICMyhaaEAsekqzmb0bMaJom/pglyOiwdW+/BsLgDD?=
 =?us-ascii?Q?UABof1tGU4uAI+VBw0Tqb7ituCpWqY1qNVSdxRcClTAma902K54N0VEAaeiC?=
 =?us-ascii?Q?zm4iCBkFOvX1oJVqgPvoBvzSr0lGYFil2fA1NkWOCSPRGrNhqHk1jIk/d9CJ?=
 =?us-ascii?Q?1EX33N4LPAkdZoNSRpjwB82i60FlBkJ7WQcDY/KWUl8VKBg01yhrJQNVkv2h?=
 =?us-ascii?Q?zK1Uo/vmlRiHDP6PtFs6h/8sSzxIRZWTAWCjurvOLu7TeA6BWgXtED56HAhz?=
 =?us-ascii?Q?2vorv5/B747TVJXIH9tkg+ViI6YArVx89BSF30b5p0Fb21E+/WAB3H2L0ljZ?=
 =?us-ascii?Q?Ldq/d40NT32xrTzWIODo2tv8h12SFvrismMaKQfPH3K+k4tmNcwvX9SqP/WQ?=
 =?us-ascii?Q?bz9vPImioQW/TW/mk3VoN8miiJ0SWqweAeX9c/BYenSOOazVGvBL3cJewFoC?=
 =?us-ascii?Q?JnbdDIPT0MYo+3VpoDG2Nm4/ggdHKtyjBVGEpC3brmAq5k4HB2jRNpne0PmS?=
 =?us-ascii?Q?vyeSycnvN4Jp1L4hUE9bRM5sVez2Eym0uud69XnroAgNt/zg5ejh5H96Cl/5?=
 =?us-ascii?Q?YJq9dUn/Jrmtzn0sSoJLBx+lzVSLIwzI5KTO+0xc25daa4c2cEgLzElp4qS0?=
 =?us-ascii?Q?wgph0kkl/i/s2TCIVlldBpb5uBy3FCr+C3kFVSq/yNVEx8PfFT379q4r+tym?=
 =?us-ascii?Q?Lboi7avwSl2gyc/ONxtu90GpidKDj7F5lGJRZZnPof3lunOxMCp+x3/J7miJ?=
 =?us-ascii?Q?F98rFqTJ64bMYo+92b81wlwT181oYAzCJZcLNT2E0ppVmVwcJt1aUBLL/eXD?=
 =?us-ascii?Q?y8Pfd8f+LOdw+PuRjHSRX17l6KXXN1S+f3jN0auEhcLTnYTt9zl+dQWkIyA3?=
 =?us-ascii?Q?uuu6Ftz3Mw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88806ee7-e7a6-4aff-3727-08de58d89c7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 10:34:09.4429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZZ1eXjvegTHxSd61xL7jSbP61FoMnmtqDUbNCsFArCj6mirBRP3GVilpLbyq1Rs0OrQaBGiPw9TBj3Mql+NU9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9515
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1EE1C5543B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Monday, January 19, 2026 2:37 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Heikkila, Juha-pekka <juha-
> pekka.heikkila@intel.com>
> Subject: [PATCH] drm/i915/display: fix the pixel normalization handling f=
or
> xe3p_lpd
>=20
> Pixel normalizer is enabled with normalization factor as 1.0 for
> FP16 formats in order to support FBC for those formats in xe3p_lpd.
> Previously pixel normalizer gets disabled during the plane disable routin=
e. But
> there could be plane format settings without explicitly calling the plane=
 disable in-
> between and we could endup keeping the pixel normalizer enabled for forma=
ts
> which we don't require that.
> This is causing crc mismatches in yuv formats and FIFO underruns in plana=
r
> formats like NV12. Fix this by updating the pixel normalizer configuratio=
n based on
> the pixel formats explicitly during the plane settings arm calls itself -=
 enable it for
> FP16 and disable it for other formats in HDR capable planes.
>=20
> Fixes: 5298eea7ed20 ("drm/i915/xe3p_lpd: use pixel normalizer for fp16 fo=
rmats
> for FBC")
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  .../drm/i915/display/skl_universal_plane.c    | 51 +++++++++++++------
>  2 files changed, 36 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6c74d6b0cc48..126aa1eeeb6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -175,6 +175,7 @@ struct intel_display_platforms {
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >=3D 12
> && HAS_DSC(__display))
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >fbc_mask !=3D 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=3D 30)
> +#define HAS_FBC_FP16_FORMATS(__display)
> 	(DISPLAY_VER(__display) >=3D 35)
>  #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >=3D 35
> && !(__display)->platform.dgfx)
>  #define HAS_FPGA_DBG_UNCLAIMED(__display)
> 	(DISPLAY_INFO(__display)->has_fpga_dbg)
>  #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >=3D 3)
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index b3d41705448a..724d5d25d3d0 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -891,20 +891,46 @@ static void icl_plane_disable_sel_fetch_arm(struct
> intel_dsb *dsb,
>  	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe, plane-
> >id), 0);  }
>=20
> -static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
> -						  struct intel_plane *plane,
> -						  bool enable)
> +static void xe3p_lpd_plane_disable_pixel_normalizer(struct intel_dsb *ds=
b,
> +						    struct intel_plane *plane)
>  {
>  	struct intel_display *display =3D to_intel_display(plane);
>  	enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(plane->pipe);
> -	u32 val;
>=20
> -	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
> +	if (!HAS_FBC_FP16_FORMATS(display))
> +		return;
> +
> +	/* Only HDR planes have pixel normalizer and don't matter if FBC is fus=
ed
> off */
> +	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
> +		return;
> +
> +	intel_de_write_dsb(display, dsb,
> +			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
> 0); }
> +
> +static void xe3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb=
,
> +						   struct intel_plane *plane)
> +{
> +	struct intel_display *display =3D to_intel_display(plane);
> +	enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(plane->pipe);
> +	const struct intel_plane_state *plane_state =3D
> +		to_intel_plane_state(plane->base.state);
> +	u32 val =3D 0;
> +
> +	if (!HAS_FBC_FP16_FORMATS(display))
> +		return;
> +
>  	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
>  		return;
>=20
> -	val =3D enable ?
> PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NO
> RM_FACTOR_1_0) |
> -		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
> +	/*
> +	 * In order to have FBC for fp16 formats pixel normalizer block must be
> +	 * active. Check if pixel normalizer block need to be enabled for FBC.
> +	 * If needed, use normalization factor as 1.0 and enable the block.
> +	 */
> +	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
> +		val =3D
> PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NO
> RM_FACTOR_1_0) |
> +		      PLANE_PIXEL_NORMALIZE_ENABLE;
>=20
>  	intel_de_write_dsb(display, dsb,
>  			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
> val); @@ -926,8 +952,7 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
>=20
>  	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
>=20
> -	if (DISPLAY_VER(display) >=3D 35)
> -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
> +	xe3p_lpd_plane_disable_pixel_normalizer(dsb, plane);

This is called for every pixel format and if it is on HDR plane, we seem to=
 be disabling
Normalizer. I think this should be done only if previously FP16 and normali=
zer was enabled,
and not for every format. Good to add a check here.

Regards,
Uma Shankar


>  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0); @@ -
> 1674,13 +1699,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
>=20
>  	intel_color_plane_commit_arm(dsb, plane_state);
>=20
> -	/*
> -	 * In order to have FBC for fp16 formats pixel normalizer block must be
> -	 * active. Check if pixel normalizer block need to be enabled for FBC.
> -	 * If needed, use normalization factor as 1.0 and enable the block.
> -	 */
> -	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
> -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
> +	xe3p_lpd_plane_update_pixel_normalizer(dsb, plane);
>=20
>  	/*
>  	 * The control register self-arms if the plane was previously
> --
> 2.43.0

