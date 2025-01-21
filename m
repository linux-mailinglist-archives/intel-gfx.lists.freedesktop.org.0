Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A53A176B3
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 05:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD7910E4BC;
	Tue, 21 Jan 2025 04:52:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yo8+Ex8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9793610E4BB;
 Tue, 21 Jan 2025 04:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737435150; x=1768971150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J9jAQIloZyLp4WrxTTr7LUnRO9+T1vUvumVw14tgWCI=;
 b=Yo8+Ex8q5CqwL8jB+3Tk99L6CvJd+UHv40xMulCKoMb6W7s1l2Ra9bJX
 pReez6PfBVf0PToFrO0Vki9veSiwxG4Ju+/MBKf9L/tKU/CeQc/nE5Pfk
 ltgg6JqrM+VkYC2R2HqYAdlEQAZziJhi/qjCi8aWZFEHW7FRjgJfZzIN0
 ggVDYUi5IRrLgFD1dbEbmJ59GJCmS+uuhAUU6+ZcLHq7dSUsVq7v9/KYl
 fjpVN1AxsEvU3zTJni7t2l0l0/d0XzUd00U1KrA8hf9Vt+Pj2iZQgMP/X
 aBKd7ipMBgLqsnrKYkEXGBHBxGMVAYWtwuzUKjKOIF/sS2A6fUmZMqLkF A==;
X-CSE-ConnectionGUID: XrWcFGwORFu7NYKrK8kgBQ==
X-CSE-MsgGUID: q/XZoDxlR0a2+Plwt24rMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37104603"
X-IronPort-AV: E=Sophos;i="6.13,221,1732608000"; d="scan'208";a="37104603"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 20:52:30 -0800
X-CSE-ConnectionGUID: Itwjw3IBRYua+ppiSD+H9w==
X-CSE-MsgGUID: Wwxp7NrnTG2KRZfChSG89w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,221,1732608000"; d="scan'208";a="106707785"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 20:52:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 20:52:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 20:52:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 20:52:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kRlyRLJzLioqSvZD3ijHg1F2kdbDFVTcYeuBSfcTiljzhRKw8+zK530cNQPBiCvwTLWtwKDsK2u/oD8aBYEl4mQtQTCT3KUF/AoctFTLzhE9zT9NEh141hIqkVhbjHuX4eOY3DAJqnZvsu3LzPfazSLZJSTJoVP1Zi0YCyVyX4vyxx2DzNSM6+UR/9RwYNL/0/d2O7Az4sDGSD2d3LiZL8sCPosUWtaaaOl6X64ECpO9R2+nu0DNf1eCa5WelLacevVNfXOHed1MOtv/c2GIK12ZmERc2fEcXQaG5DjKwLu1u7U/MpOdvK/0p/6P3baTlMJICDlv/gXUFYj/g9BcUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I5vTx056cveyXum+8GvRAEdNJsAoMi4f/FtYtpDe2tw=;
 b=o5xVoAof47+3KuwdYT15FgqZ91LxnTvuhkT0qv6EgWEg17rAoNLpzJzoucyiQtahSGs67sTBqBouNpiIWGnyHWLAgLTopJVKu00MA1qGKXomBnlGpE5rIQJTcRTRj1q80+1f4ZRNJ4Y+VFC/bSEVy2xnlM/wHPhrn1R9T7TzBy8GDti2D/7rPvseGVTccMBa7SWZj2L3caI9jUPMkd5Ykhz3uohQ+HLUS2PbwRcAnEc6QXRdNlwMcFURiUNvfAwc1uilrjy2ydbtLXYhNkNvXsWzpNslTexnF3rTdnTaevsGTzEEm5yoTHQkQpXLx+qcyYjFmLTtnMfGac9yOyHjCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB7529.namprd11.prod.outlook.com (2603:10b6:8:141::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 04:52:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 04:52:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Use correct function to check if encoder
 is HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Use correct function to check if encoder
 is HDMI
Thread-Index: AQHbaJYki/KxpoDYQkWNLk5Mbu2ztbMfgWmAgAEtz9A=
Date: Tue, 21 Jan 2025 04:52:27 +0000
Message-ID: <SN7PR11MB675032AB510FFB1DF56FE8FDE3E62@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250117041247.1084381-1-suraj.kandpal@intel.com>
 <87bjw1rc5c.fsf@intel.com>
In-Reply-To: <87bjw1rc5c.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB7529:EE_
x-ms-office365-filtering-correlation-id: 3c81056f-6703-4fb4-85c5-08dd39d767c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?I3kyX9A1TnMEjfyImieG/cP7xlFjr083xc2xmLsNVKxwBH3Mp4vOhEg5nz2u?=
 =?us-ascii?Q?nuGTDdsv9wYKm9BTxzfj9Cjr8Ab7w4uCaGoX8nMr6JeYFjsh8q6JrcYbA3zg?=
 =?us-ascii?Q?sFmHGgrrs3VINV3i0mSpY4qOAaNCRxcpWrfbc5EstPl7bTP4Px4CYS9FKnoS?=
 =?us-ascii?Q?wJLgxUfUiOJBupYAhZNss5nA9iBvN7MeE1timvXAgsCBuH4GTrjS+Ps43quU?=
 =?us-ascii?Q?dPwfsKf1Q05oQ6lZPmsAG8ZWJr9OBWsB7iKwQ/Xhsd7QpD6Egjb0Spuptmad?=
 =?us-ascii?Q?Xo4IWISr+mO+LA7vKGuxFT4xgV5dKBImAJqHTIp1+KKjSVM2YN11OcUYbyOc?=
 =?us-ascii?Q?ctYFIznQizY/nVa+R+fbSu6ergu40MC5piWip4rtDMclUwH73vjsjTict+cl?=
 =?us-ascii?Q?esH6h0xDAuy7l3R1HhSjhJLjFN9Ba1mTuvrkJYm5ZEQCLU1w5ZTsZQ93CTI5?=
 =?us-ascii?Q?zlFVraHpsKBKQxdbYgxLCdWTzAW+/+NzG9yfRoQzo4p2E5JX47odgUpaBDFH?=
 =?us-ascii?Q?aZk1yf3bp7Fr/HPOfvNqiQkoFHt7WjCfFHzi4aC4odndLpLO6/Vx4ONub6td?=
 =?us-ascii?Q?5ndRTHUypeOEs0XmSYLDNs19qOHTSWtO7BE4WC+abT7d0CQDFZtpCKJZIovX?=
 =?us-ascii?Q?MyOcBmviiRuEtTjjSRAW5M9tg4DhnxN5cJduPoZ6liymtFBA2Mn6P9DcH0Vz?=
 =?us-ascii?Q?ULmHzEWAM6akNASQ1e1zI1oG2jy1Dyhmh4rpzrz3duehw+CMe+sbQJZd6FpQ?=
 =?us-ascii?Q?zp/dqoZjCavPEfoyQc4/8lJc59ShWf11JtJWsv3zA2KiskGgN5OHFkYOijkv?=
 =?us-ascii?Q?EFFyoG9ixnWk2Qe0ZXoNPA7tWgoA4TIQejPl8JC/yExKQIoTYsBIJ+hGdMri?=
 =?us-ascii?Q?AmLy/yOwkVZ9w1nYS2caGKrXRjSVM7R/Pdzmkb3daNdL2quhy79gVGefq7vr?=
 =?us-ascii?Q?PXT4e86zUfagPcAh4togWrsELg5HdwebLxCvwkecvKM/BWCalRE1QTZ4nEnH?=
 =?us-ascii?Q?usAcp6JSPA3UGybNUoxnxm46H34JEDp+PlVw9MFBZ/tBF/qEmZ/G/hf3nDYz?=
 =?us-ascii?Q?5reqO0auzA/aqG2RHxowpWG66I+67xl4dPijMxLiQvuic7VM2n6QHQOptVL6?=
 =?us-ascii?Q?JrQs7nN3tXI8zzlHCVMVN0k7FAAU1NYPZZzokxl97cM9eglQsyJK68aPO2XB?=
 =?us-ascii?Q?hEp5NS2B/ujLCZtmS++QDnTznUlzuJk51J/mUuHYpvDxWs7RIBncaOgeKteQ?=
 =?us-ascii?Q?UCcOnWYUkef5UnkPPMAWbwH6T82fgy3qiVB+L46aWn17zKrhmCxgknnd9xMZ?=
 =?us-ascii?Q?E0CZ25QzpXR34Dqdq3kfJYmIrkT8qreWygF2D1MIa7GXYZhze7SiXXpEz8La?=
 =?us-ascii?Q?GwBIZFEKHdvOVz4VmlsK1ckZuz7CMmaKosllJdetAaZsPe5f0gnFoxOSF/EP?=
 =?us-ascii?Q?Zk/uYKPob7U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xAFpk8Kktf5I0CGj1qNM5rxw2mNlbr6sT+oGW3ENPm+AEcWTqvWeligpWJxp?=
 =?us-ascii?Q?WRhaRPXaTHcFUw1uh69FkuB17zDRBKJcG8pA6da7/ibK6Ll/9Sdlz3qxqXVI?=
 =?us-ascii?Q?SLm4gtraFJKbB9EZcJ7sKsPsA52ViDkAcflzG+YDzObeqkauaOJRq/tgdVG8?=
 =?us-ascii?Q?sp1Cx6MOEDyX08ojZVLoKUTG3WGNEX9EQuNF1JeK33gD/Ng6AVlf5bm2Dyik?=
 =?us-ascii?Q?7QZrJfIciIrQQQLigihfaNhiHPX12QL4fyKKf/MU3JxFevVPtqubbDdTVrmq?=
 =?us-ascii?Q?VKtnNcquO75yvrUSCcuoIIX9SbuOBKUaDobtyqvJdhxloxl0oe1U65YKFGyz?=
 =?us-ascii?Q?+6GLLD0yOlBhozI2YGSXVmICXGt2knqtaLD4LjybMvC3FUIoEZiRGzkoeGIn?=
 =?us-ascii?Q?aQ7iHd6KiXFDY4tc3xnPfx6t8P1bR/XGbGPtBb1mLYAnRzzmpU9b4ZJO0koA?=
 =?us-ascii?Q?Tve939+FUbWNvN8hsPLIQRFveJAMt68keCn3XY2ZZgDK9Sj30htHPiYXN7wT?=
 =?us-ascii?Q?kNE9OA9Ejpzze5cCuMuMfSOpmrYK9EIti92pgsIni+nTKKBTYd6M+P9tUMvu?=
 =?us-ascii?Q?zp4RvcykBNodPBRnmIUgcnmt4EJJCsfkNUEtgix0gRnRHcP1W5AhQ53LbHtj?=
 =?us-ascii?Q?kt9ejxSzX0r3rxR6v8LCtVZuqzXc4XfhJcGwzLC9jepHUjTHuVfv0rjbkoXL?=
 =?us-ascii?Q?zNScibjEZOWaEu/8Yew4XttN3rbNJyECu0gPSq4G2W/NOnoa2P5/zekcof/i?=
 =?us-ascii?Q?mtFlzqgJ3IWyCNlFJuDjSsFvsyFV9Mu2TQDZkODnLBfw9PVSC95lidX6D+rb?=
 =?us-ascii?Q?apYtQJoSC7czLj1y4Gr2ccz7H9EXR0J7dhKLQjUcm9QRpXPoG/E1KTz52a6H?=
 =?us-ascii?Q?W8yS3kqVfBsN8l0iGz1jI0wM2CVHxzaeaEhMeg2SjoQ6DO5a3kEl5OZsj8w6?=
 =?us-ascii?Q?4gdQp5V5WjPo+wKtjKmALhws2A+dm8PW/95oHx0R+z7JDNdOWNgJpekE6zkk?=
 =?us-ascii?Q?kjnCQJfPbxz1FwZHohOonG1SDKww5NmO8eMK4Qo4BKAkIXkM7doAVdtICyNc?=
 =?us-ascii?Q?0VPm9WWriepLHwt8oI/xlWmVP+3n2ywPh3R8ukC8OhnaQ4IS1g5hQ6KyJ47W?=
 =?us-ascii?Q?7ujB60VE5opb+CLrGW+8z97gq6VhnK2oXT96ZbTN8pbjkMwCWYqK22dPO5XH?=
 =?us-ascii?Q?unIwz172k3P4KOpTBrI5S9grDrPTMxba/hnwUzMBi12w5tMM8KjuygygF8p7?=
 =?us-ascii?Q?0/hoCv6OTivyJQWpqPCL7ulIUykXZG0Yd95pSlW4y3fJGZVMXwbEPm64c+Ih?=
 =?us-ascii?Q?7Y6WXvd2NdFpTYvo9GnJBI7Gg5NcyCXxBiLmrX1M+xb68NZmrnhVHC0DUHRd?=
 =?us-ascii?Q?t09ITuIMSmC2sCIj5i81Lw5CSGwKolW6cTtet3vClAS4rs9/NdA8vDlfUdqH?=
 =?us-ascii?Q?0EmwNX0o2KPz0P0UuR6N9t1rA17bK3K298iCk+WfvoyL2brRqqnylAyqLIPb?=
 =?us-ascii?Q?Pccglrfo4D8UQcHqxlevrJHe7KerRB1vsjYlltWazj6js8EinEUFZXZcBJWn?=
 =?us-ascii?Q?9VSy3u1+xcG0JFjgoL6jaELuomnXLVG9coeeXxDd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c81056f-6703-4fb4-85c5-08dd39d767c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 04:52:27.7927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qhYv6TcoK9W8DFAKBpzGmonUXnpyydUtjNkwUCd8MXQTpnANhiFG1ijgTOhj2aoAp7eWqHeWucEpi7vLrKjgAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7529
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, January 20, 2025 4:22 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Use correct function to check if enco=
der
> is HDMI
>=20
> On Fri, 17 Jan 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Use intel_encoder_is_hdmi function which was recently introduced to
> > see if encoder is HDMI or not.
> >
> > --v2
> > -Add Fixes tag [Jani]
> >
> > Fixes: 6a3691ca4799 ("drm/i915/hdcp: Disable HDCP Line Rekeying for
> > HDCP2.2 on HDMI")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the review pushed to din

Regards,
Suraj Kandpal=20

>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 7464b44c8bb3..91d5629cd9f9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -41,7 +41,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> >  	u32 rekey_bit =3D 0;
> >
> >  	/* Here we assume HDMI is in TMDS mode of operation */
> > -	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> > +	if (!intel_encoder_is_hdmi(encoder))
> >  		return;
> >
> >  	if (DISPLAY_VER(display) >=3D 30) {
>=20
> --
> Jani Nikula, Intel
