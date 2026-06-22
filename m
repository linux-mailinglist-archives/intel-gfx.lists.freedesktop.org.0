Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jm50FtIORWp46AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E536EDAE0
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=JBTMarel.com header.s=selector1 header.b="Pzq/R1IE";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=jbtmarel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7624310EFC0;
	Wed,  1 Jul 2026 12:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from MRWPR03CU001.outbound.protection.outlook.com
 (mail-francesouthazon11021112.outbound.protection.outlook.com
 [40.107.130.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD66410E730;
 Mon, 22 Jun 2026 14:52:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lMAQbHuSsoDIWyxKy6B4+YPSTwfBuc+Z88S0/c6UdO4iru1tQCN6s+GWepyz2FWo3T9zHA6QtXx5N76Y10N1mOojaRwlrzos3LeTpTLfFxz9ETJ3WZWxyuNtvFoKLiSPHZT8Drz5H5hggDOEvn14uxZKDy+Z9XhaF97LTLpJVBazvJDj4nXufPiGeotrsFezlww8B2VMy458qvhASJo321Du+xPhM9wBNrmR9ECWqXRlsv3kj7TMqhNgwMBBV2JdHDBvHon5fDzOIFFKXRnn9kHGl4hHPzjZXJvlW2id+YdP44cMZzlbYty1rOPwhdj548P9QHwiidIu/+BC4xuPRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vxHrMmf2nnGHjOdBew/SR+UMhfQiQnl/C7MK26HWaDs=;
 b=jB44kbzt1mDL0ksu3/60lBTvMojYREG/gnChvpe3NtBtlM0FxDyzKhMzCDEe+/LXhrzWe/w8FswYqBsWpZIMzAhSMeZNYxaQShW0sGl7G5VSetYaJKDJP0V+T9q35lWMvgv3+RMrYXDYlpXE90PHEE7q/DxxAGcCAq1pTKfWSC5c9ILvsooVvtcCkSi79WFwMj55CLGfpJwgtg4rUJlBG8DhpxRJo9e325vI8FaTTMGzfjSiROYdctSAL7TooniS7Z1hMouYx4UgG6mlO7Ahlp/TNnOuC8flYIkPieh/xG4dhcwKKsYevsGt3jdeecVWNzb7UXNI6iwXVZOk919/cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=jbtmarel.com; dmarc=pass action=none header.from=jbtmarel.com;
 dkim=pass header.d=jbtmarel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=JBTMarel.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vxHrMmf2nnGHjOdBew/SR+UMhfQiQnl/C7MK26HWaDs=;
 b=Pzq/R1IET6Sqis7/fwQzwitpf39WYE0oZ6Vp4pBkB0mWIqjxJcFDfo0PI08e1UC5/I2/wMNt4t7X91U2AC0JToK6e/VJo5EjDqYsPohfcDGJ690l/mPl0k1moAd9HOr63oLE2Sp8WEqIrsep1AzUjuL00/G1QfLZLKBvUeOMlJ/XT9Zs3Y7qsYCKYjxP2uSrWiXqpl6oOcXqu03dn3KwEtmfai4thmme0IDg8ctO5L3c20iXHHqh30oKPKlzFOZXFZ9oaiPtFkRmhVptDxXgGQr86h16wdz8jErKWY1ZWfrIuUZPDn3FVth2LI4C1xd5+4PRwtSMqQeHLIqG4kszrA==
Received: from AM9PR06MB7860.eurprd06.prod.outlook.com (2603:10a6:20b:3ad::20)
 by AM9PR06MB7985.eurprd06.prod.outlook.com (2603:10a6:20b:389::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 14:52:30 +0000
Received: from AM9PR06MB7860.eurprd06.prod.outlook.com
 ([fe80::f23e:6dfb:b90b:52aa]) by AM9PR06MB7860.eurprd06.prod.outlook.com
 ([fe80::f23e:6dfb:b90b:52aa%4]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 14:52:30 +0000
From: =?iso-8859-1?Q?Gabr=EDel_Arth=FAr_P=E9tursson?=
 <gabriel.petursson@jbtmarel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing pre-os
 programming
Thread-Topic: [PATCH] drm/i915: Calculate CDCLK on modeset after sanitizing
 pre-os programming
Thread-Index: AQHdAlVs310XGPyz+0y2jAexjuKZGg==
Date: Mon, 22 Jun 2026 14:52:29 +0000
Message-ID: <AM9PR06MB78601E2636164181A4689CC281EF2@AM9PR06MB7860.eurprd06.prod.outlook.com>
Accept-Language: es-ES, en-GB, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR06MB7860:EE_|AM9PR06MB7985:EE_
x-ms-office365-filtering-correlation-id: 90e9e3c7-db84-428b-2d75-08ded06de253
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|23010399003|376014|38070700021|18002099003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: 2eC2WKHNlCwi3X8xTHn6Ixlj4APMbyiJCGJ/b+ipPYZPnek6V70G9ZJS031qkfeAQ58fw7D45E9O9pgcymWouQUCrl46gRHTeLWtVXWecJqqneyEW1m8omSOW87GjKhECu9BM22XlurHaxLlLhJzcy1qjQqL5coI6Z9MPORnpTpiR/TR/RQ/sd5EfW+z4tciL0XyBPSEwou7BIjc7z1JSPR4c5bAv9GVw8Pe4Lj9apEi00JXPuZ+5y4dirXYhCzGCRqLGq+wF76si4LGcRLQj1Zuy1EfU9YTj0/UMkjBdsdOZxYI0hcS9SxUTI/Sy2l87T9mAFxWDejzIS/+tCan5SDF0W5mDUE8hk5mO78rbi54YFACzAZlzE6vfkCPdEvGuAbpk7h4KiF/o2mvXVjev4Wd1FXM2UMrJhel0iyaE3xm9ihshgn14HqPfRlrdIz4+0l8lUnUrKIjF/ar46CDl2HMCZynYxnbvbslD9s4lMxl/Bl3KLsjJJmIl+8LcPo9XyF7xg+bAOwpuhXATwBc19Q0oVpGrErUWf3iM4EGKgzFcO94inuoDTcsRZhr94ShMPYg0t+8Hu89QmYpPjMKEzlXJbEW9iN0lVN7OYEGQvECNaYo3AevodrZHpz0gPaxp85dfGCOKaz5sJWB7LJjgPaw+2u/3rKNp5U9qEEju2pTDi5UGWWCWhTZamko/wLZfDso3qB8KD8pF8LO7RsfXY8XXELk6/bo93MYhpMdEM4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR06MB7860.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(23010399003)(376014)(38070700021)(18002099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?POM0NN9kTZATjACXTDNkdRir+5mJHmnnr0/D/B+Tt5IhXmAVL/n15Hzt2W?=
 =?iso-8859-1?Q?BDqMqyJyGKmic+oHZgow1vkG+VNA4GUjl9886XlxaZI3VXNwFbDhkx4xM5?=
 =?iso-8859-1?Q?MoDMNm2magktU5p63ty7eads2RYJqrPfKiZD2bmAQ6h32o0IPO59tlaviI?=
 =?iso-8859-1?Q?AxPyiCHM1EDj6DQzMcn25MReKrcUP9YPW+g3BwxV4h7V8yT3tvfN399+Cy?=
 =?iso-8859-1?Q?mj4+NMZ0HSnYchlE0XkivYhBSNolaN0FWQzTjTSYz753mktsK0/96VwJVd?=
 =?iso-8859-1?Q?pPEKk6X45CmeSDYJbK/CQ1SjnmVS/y6dnQ5KmQ+rdm/Em41QoWL3nxkDF5?=
 =?iso-8859-1?Q?GDKA9tuPq49RGINr0JEiTUYqChaBN3nXOv7mTby4v3ma645Nphj9ZkfXZK?=
 =?iso-8859-1?Q?FZNu2E+Ec6/C4m+yeWCyv2rY9Npr6mnuoJqzlDuvSXy6yY2iIiIaINw8Ao?=
 =?iso-8859-1?Q?2L4dSyor/wvb9MLGlxiK8DIwJScmkN1EQH0q1Ui2Xt/QovckUZvx8eegwO?=
 =?iso-8859-1?Q?qvZMue92QdppBQgiO28XCy4fBl5TgSaVKYyeYbk0uYTrniA63qhBZaPq0G?=
 =?iso-8859-1?Q?i0aVxctT7fI0513t5VMX9TotbxGpblXYzO4+iu17Y5oYtQ4I6ZIJDL7ZfH?=
 =?iso-8859-1?Q?TvvPtWZgRqVt0r9oj4u/zKLKX+zkMKFnE7N6yto2GpRLrVPlg1xfVPszjf?=
 =?iso-8859-1?Q?WO5lRQN7mHZubSkB24QGW2swX/5XvXnHs0KSyqyAfsOV06T2yvOSkzWfO+?=
 =?iso-8859-1?Q?IB1UZnu+l3RTiCnuzLxoNbTI9BPY0HMmfcgjIXorFGTvESaLC838DbAL5w?=
 =?iso-8859-1?Q?7ZEze5EWDVvZga8mYCIan3Uut+YAOMbvJ5/kYXaIqF0YQ/aew3iyGf8Z/g?=
 =?iso-8859-1?Q?CNziuVv1jSyNzV/9jM1HrBy8cNdugLKeRP8HwVxTogfAWKIuHcKjvz6IP3?=
 =?iso-8859-1?Q?7F/ly9O1/YF+C3gGoMf8XidCKXsdWGjCysOvCEmhg+/YdpaDzVzII6YoIA?=
 =?iso-8859-1?Q?7WCdY8WfHacm3erupaAA5PB8l1gQ+IyQ7wwY12YFjpyYiGpaLiRRXhZfyC?=
 =?iso-8859-1?Q?nmM4p6kL9qplrd1PMiKeyDh+Fv3esDrlUV5V/tjIdNy0IsWM73+4sh7WMK?=
 =?iso-8859-1?Q?7q9NS9C4lBCxNznrx4w6H/V+8BioE6Ca2AdSjNqwKbvyAlMb1Q6P7MJH9F?=
 =?iso-8859-1?Q?GoXafc4iA7WCKqVoZGjc3t32j47GIK5M/q9HLV1ZZEYgux4zp36JEHQvx5?=
 =?iso-8859-1?Q?T6zqR54hooasxRmZ9zTpW1kevPPMOslEn83hjBRZ3G5MChXT9AdZAIzlJD?=
 =?iso-8859-1?Q?QNOaF50pAOdd3ESxP61NBefSMvzUt1VRNzw7Kst26KClX+Rssi5nbPZjQ3?=
 =?iso-8859-1?Q?cW/ijVTUC63q/dfx1ddaHU79If5fmawBMQhNAUyj79S7pg2aNw6cYaQCv0?=
 =?iso-8859-1?Q?Ol4EAICihsqUS+pdfEDeLjjhr2cVXb+nDU2e0tIAOXHmx1ZGUsgsUe2Wwv?=
 =?iso-8859-1?Q?E+b9jzRFZgGMb3FN7deVQ4Dqzc7f0OdqIRkVT8flCfWHDOIJMRYx2i7M2i?=
 =?iso-8859-1?Q?GLWDViW1b951vv7/D4wVnU/VetPBk8J/g+x+QztbKaWsd3jodL/p2ctUer?=
 =?iso-8859-1?Q?F+s5Y6Kazl8nI0n8SJfdmj9rAhFFtcClTmlam0aBnUltk7zFCpqoKxpbQM?=
 =?iso-8859-1?Q?tPlBoAo0C4FH4wgZYM1R+FnroHDL6EZFX3cH6W1NuNnat5/nae1K+uyCmL?=
 =?iso-8859-1?Q?1HVGhNdl0qgNYkwK2YSbEu2LqnXTnCs9XYBPCv/StxqT0i920/KkjgpQf4?=
 =?iso-8859-1?Q?NaWyHA4V1ao4KdaGHg8p97cxBpbDs0frys8Q8Tc6NS2+XM9My3jmEMMgKj?=
 =?iso-8859-1?Q?vF?=
x-ms-exchange-antispam-messagedata-1: tDYETE97tnQgnMrI9RojxFlv9IrcRYwdI7E=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: JBTMarel.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR06MB7860.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90e9e3c7-db84-428b-2d75-08ded06de253
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 14:52:29.9897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f672e0e-1e37-47ad-ba73-9c5ada6895a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XzYtyb3UCbLsgvuMYCBszj4RryA9XJdKZI5v9YnIl1nJJcwNWPCBFe9L+GPk+GRuPivFh49BxKSyV+/gcImY2Hv8jFEUXJQLoHdvKK3fgQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR06MB7985
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [-0.37 / 15.00];
	DATE_IN_PAST(1.00)[214];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MIXED_CHARSET(0.94)[subject];
	DMARC_POLICY_ALLOW(-0.50)[jbtmarel.com,reject];
	R_DKIM_ALLOW(-0.20)[JBTMarel.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gabriel.petursson@jbtmarel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[JBTMarel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,AM9PR06MB7860.eurprd06.prod.outlook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A3E536EDAE0

After sanitizing cdclk programming by pre-os, the cdclk frequency is set=0A=
to the lowest supported setting. After which, modesetting needs to=0A=
recalculate the appropriate frequency.=0A=
=0A=
When upgrading the kernel, we encountered an issue where we were left=0A=
with a blank screen at boot on a number of monitors and the following=0A=
message in dmesg:=0A=
=0A=
	i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun=0A=
=0A=
Which bisected to these two commits, depending on the exact monitor used=0A=
during the bisect:=0A=
=0A=
	ba91b9eecb47 ("drm/i915/cdclk: Decouple cdclk from state->modeset")=0A=
	74c31271a1d9 ("drm/i915: Avoid triggering unwanted cdclk changes due to db=
uf bandwidth changes")=0A=
=0A=
Although both commits look correct, before they hid the need to explicitly=
=0A=
trigger CDCLK recalculation after sanitization.=0A=
=0A=
Signed-off-by: Gabr=EDel Arth=FAr P=E9tursson <gabriel.petursson@jbtmarel.c=
om>=0A=
---=0A=
 drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++++++++--=0A=
 drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +=0A=
 2 files changed, 9 insertions(+), 2 deletions(-)=0A=
=0A=
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i=
915/display/intel_cdclk.c=0A=
index a47736613f6e..5eba50fde396 100644=0A=
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c=0A=
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c=0A=
@@ -1267,6 +1267,8 @@ static void skl_sanitize_cdclk(struct intel_display *=
display)=0A=
 	display->cdclk.hw.cdclk =3D 0;=0A=
 	/* force full PLL disable + enable */=0A=
 	display->cdclk.hw.vco =3D ~0;=0A=
+	/* modesetting may require another cdclk programming */=0A=
+	display->cdclk.hw.sanitized =3D true;=0A=
 }=0A=
 =0A=
 static void skl_cdclk_init_hw(struct intel_display *display)=0A=
@@ -2365,9 +2367,10 @@ static void bxt_sanitize_cdclk(struct intel_display =
*display)=0A=
 =0A=
 	/* force cdclk programming */=0A=
 	display->cdclk.hw.cdclk =3D 0;=0A=
-=0A=
 	/* force full PLL disable + enable */=0A=
 	display->cdclk.hw.vco =3D ~0;=0A=
+	/* modesetting may require another cdclk programming */=0A=
+	display->cdclk.hw.sanitized =3D true;=0A=
 }=0A=
 =0A=
 static void bxt_cdclk_init_hw(struct intel_display *display)=0A=
@@ -3598,9 +3601,10 @@ static int intel_modeset_calc_cdclk(struct intel_ato=
mic_state *state)=0A=
 =0A=
 int intel_cdclk_atomic_check(struct intel_atomic_state *state)=0A=
 {=0A=
+	struct intel_display *display =3D to_intel_display(state);=0A=
 	const struct intel_cdclk_state *old_cdclk_state;=0A=
 	struct intel_cdclk_state *new_cdclk_state;=0A=
-	bool need_cdclk_calc =3D false;=0A=
+	bool need_cdclk_calc =3D display->cdclk.hw.sanitized;=0A=
 	int ret;=0A=
 =0A=
 	ret =3D intel_cdclk_modeset_checks(state, &need_cdclk_calc);=0A=
@@ -3631,6 +3635,8 @@ int intel_cdclk_atomic_check(struct intel_atomic_stat=
e *state)=0A=
 		ret =3D intel_modeset_calc_cdclk(state);=0A=
 		if (ret)=0A=
 			return ret;=0A=
+=0A=
+		display->cdclk.hw.sanitized =3D false;=0A=
 	}=0A=
 =0A=
 	return 0;=0A=
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i=
915/display/intel_cdclk.h=0A=
index 1ff7d078b42c..bae2b7ea2da9 100644=0A=
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h=0A=
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h=0A=
@@ -18,6 +18,7 @@ struct intel_display;=0A=
 struct intel_cdclk_config {=0A=
 	unsigned int cdclk, vco, ref, bypass;=0A=
 	u8 voltage_level;=0A=
+	bool sanitized;=0A=
 	/* This field is only valid for Xe2LPD and above. */=0A=
 	bool joined_mbus;=0A=
 };=0A=
-- =0A=
2.54.0=0A=
=0A=
