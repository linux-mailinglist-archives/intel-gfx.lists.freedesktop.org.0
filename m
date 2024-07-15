Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0B4930F65
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 10:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7012610E0B8;
	Mon, 15 Jul 2024 08:11:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPyfWENX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE78C10E0B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2024 08:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721031076; x=1752567076;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HE1rshafcGfTzzt1WjrZkBCYb32XtE0FknamSjh9Rvs=;
 b=aPyfWENXOZWDqgD/QPYfGJGlMJEbp6Dufe6ggo6vCyvNF2TqhvidRYmh
 iRFIYNRNVLQ0hOG+R0B7N0MvZOFITQM8NHSyTZBr0gfkoY30GXA2KEXGH
 pCucPQ2ujTU8Q2zzNZ5+qXVi+0hfISXryDPVDrekfAbKscIQK+wQhRs3Z
 Xeajh9RpAMaeGzzD55q7xxgF/lWezivCvRpgUtIBhUPv/IBH6RqgP0uJZ
 Suw2+NG6ARBMVKMbDHEJsxHr3u3CTkV3I7J0wkSyWNvRcFJc5LHLOsYKh
 QOX/lWpvp8yhAGjWzUIna8J3xgCDsnxJNCUio+fa1IEjExT8qEhdws0LW w==;
X-CSE-ConnectionGUID: er7wsXzST0OjoCzR1Vn5jg==
X-CSE-MsgGUID: Rm/JGAh0RReXSAanzhJmBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="18242356"
X-IronPort-AV: E=Sophos;i="6.09,209,1716274800"; d="scan'208";a="18242356"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 01:11:13 -0700
X-CSE-ConnectionGUID: io4gEQhbRZujtV/UKbp3OQ==
X-CSE-MsgGUID: wunS1oNCTIuVANkyUMItNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,209,1716274800"; d="scan'208";a="80629743"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 01:11:12 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 01:11:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 01:11:11 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 01:11:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oxu2r7fTuDgxn7i4xCDulu28p+lqvuT03lrk6H3nL7pi0XMyx3uhZEDGZJMZ8LTcmrJxcOYr3yargrTDpzSxtyQ3gA2iqX2ouZGPl8e+PCLs0zg42pLS1V4+nDO8D0iD6rBoEpXfnmYSDMJNNiyO61zhVNWs5wqPRngvAWP5j9iT3UWsucVqpmsu/0fOZh0VZ0pW51lZhgiBTjqldXy5/wkFYMRQe3kfQFTa4k6pCe4nEmtaX6goAkEoZ1taLEa7TX8UF62Qr7Fdd7sZNTN/imC1aCTZvBHCJixbJ6BuvnpXgYEgdroRV2gQ4uRjhUpFAchJPRKl2V0aAgTID6g6pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X15mHX3/GtBidEj9ngmm7dI6zIqsl61x2Y8hV5m2DcE=;
 b=aRnuTXMViWW1fmt99l5K5z27db5jKTEYz7fzINIxPRvFc+e94jhbswJMB6yekDmNrC4OE0+hDAlxdhDq4lNA+OqS/kdXiGQvPqc7jpgNkbL60HKjHkDnt2wB7vNgUDbCF3QeCqoGCDiAAkHVZbVtR7ZsL59XP9HXyuoLUsweP6ByuyKYbKag4Jd3gqS/riEd9VOXeScGL+hYxrVdeUY+qnBc0pAKjxdQXULE3Nrm8duScFHca4D9TZXgc1recB+cH1SO5SAz3K8kdTGqlrUCmR7baI6HtTsHPueatfDRWXqDGUTFNtCbnl9L1O0O9hmIt871EzH5/GTLG/jMfNo29w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH0PR11MB7542.namprd11.prod.outlook.com (2603:10b6:510:28b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.27; Mon, 15 Jul
 2024 08:11:09 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7762.024; Mon, 15 Jul 2024
 08:11:09 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 03/10] drm/i915/dp: Set FAVT mode in DP SDP with fixed
 refresh rate
Thread-Topic: [PATCH 03/10] drm/i915/dp: Set FAVT mode in DP SDP with fixed
 refresh rate
Thread-Index: AQHa0a/LhWtR7akP5kynN0yvgvYXtbH3eW8g
Date: Mon, 15 Jul 2024 08:11:09 +0000
Message-ID: <IA1PR11MB6348733D041258FB6AB50159B2A12@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
 <20240709032651.1824185-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240709032651.1824185-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH0PR11MB7542:EE_
x-ms-office365-filtering-correlation-id: 81a3ecc6-ea20-4e07-4078-08dca4a5af46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?UUy7Dgm3H0LYT662wGwiMQr73pnmNXRaW4SCRN7JVJAPN/wGXkETUWWg4iHX?=
 =?us-ascii?Q?Z0mIY7NiSBDTIIzhCcN/2PQWo+Od8DaBQlaVLhDhRQ/TBA/fqs6jaimQvhVZ?=
 =?us-ascii?Q?FWU9S852UDUGgDxvLEBT9aOIu7CuiA8pSlWD9hLY4N0YXHtvnjI7q55npJHk?=
 =?us-ascii?Q?tO2NhIyZWC0sPf1vDiPC+YlrHnJ3ypmpDDHf/Ny8/wb6ZwWTwhWG2e9dEe3h?=
 =?us-ascii?Q?V9pDSOJHsFTDRDP3yQAKguPy5PM09hvaPimo7zKIFORCOF1Lpik5865EuizI?=
 =?us-ascii?Q?hcl9X10OJ8sKozyrpVQpQpqlnPiyIeamNAVnDF+++hQUslKy2dmB5Vg0qC5K?=
 =?us-ascii?Q?H0RkgbBnIFxOGw/T65Svp3U1W7U7jBPsoWpuZ7+Os/owdOEkkEFENwJRN/UP?=
 =?us-ascii?Q?zzL4xTSPVKAJz6m7OhoVXs9kK5CyA1t5DQnsVMK+Rap86aYxYEb9QaJiaZuK?=
 =?us-ascii?Q?/sSukZotOpMTQ2yOWxooFramvwWg3hWELuqX+ZjCCKJhxViy3XfPdA8RRW9e?=
 =?us-ascii?Q?Ne7nClw6ecdptUtLWpuks3BQ/PjrfPCkHOelKbyibWrfou+JTBHesGQNW3cd?=
 =?us-ascii?Q?b/emQif/K4nGwVaNv8ZgX3Cuj4m7ooyzc2War6Vq74JX5AdHpl3frgkjZBGM?=
 =?us-ascii?Q?MY+9SIithyZLavuPGtjNYp/wmeBJ1cNAqzlhCwc7J7G075GUzFvhLvHQ+ZeI?=
 =?us-ascii?Q?r3sQCwbgXZSSYj7oF6aFVTQaKt9rPyaqyzNz96XKUUylB0nEKMjP/mSG9opD?=
 =?us-ascii?Q?n0wSJ7oT41ppkGpiMGU4gdww8B8wouVAWfXhLLfVXgiJNYltBsi6w/gDouFF?=
 =?us-ascii?Q?N1NRUiuuy5BJCCbQW2YCg9EASF4qCuUSuDyZKiilCF8/JP6VgRNH0nk/UOof?=
 =?us-ascii?Q?yY40atHL1mu81c0RZ4OPPV5dhnxubS/RmJ64RaszbV65ZiFxq+W0lntgbfM1?=
 =?us-ascii?Q?lbBd9eHre6QkLCoB7sP4kiCrX0VeIEfOkT2Pyjq73HKl/5iBr7cYJmoJsQmY?=
 =?us-ascii?Q?lq5Qc7O62l7cJl1qrVHVBfOGceMe04mJV3vXHjWta6GDHHPpudnX3KQNlNdg?=
 =?us-ascii?Q?H9VIKGzpo+Pez18KYWs2c8Zm/Ig25OyOwv+bi2oeFssMqTd1k3R5uYwJnnwj?=
 =?us-ascii?Q?7R9Fr846UfkkJOX754KLLww1/tYdY/KVQtcyZNgkHezTDyrnRafo5C1REYOU?=
 =?us-ascii?Q?NDpGPkFv2/mG9E71TRHVfgPMBxxeY3GDigVzqhh+TN/18YbvN9m0VOxxWepe?=
 =?us-ascii?Q?vWzXMNQ61aSelDx1AhLs0MwBT67/TF9qF8Lwctg8nsoFRIBhqz3JDdzgCazi?=
 =?us-ascii?Q?PeMaNIzYVZndsKCITXK7LQaFkngHjUDYhJvFTPg5ulNG1rWM24apqMY1c7Kr?=
 =?us-ascii?Q?MnLUeRdeFLDdTNuorcdzWna04qRmFey3oE2oe8JPtKAMDr+5aw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hhj5PPDvU9ZuyJ6Dp4ZWMZjYZKe8mfLIxMNUYD6ldWZgWGfZ30YzPoKlwc6L?=
 =?us-ascii?Q?RdvEUlSYT7Z9jOxh0badFfdwU3vjAFtoakicbteOIjLzY+mexUM9SRXeyRMv?=
 =?us-ascii?Q?YLs/P1qvEVlt2JfjKpfv8DQuPboTIhL330pYR++qdK2LLWtgq/zn6MPNQSUv?=
 =?us-ascii?Q?SxJQyvsl3f/YUynLvd2gpekTTa2ybemHd5I9DYrOcrOg1r6AA+6/6WkdjS/1?=
 =?us-ascii?Q?i4Gn5yJmdg8KSi3CvGhlohVcTMQfRBLk1UeENntF08Kcy3rkcSsRVnk4+pH0?=
 =?us-ascii?Q?AQcUQr1H81Q78n/dprbUCZe03Ef3ua26GK+eiZEXUg6tCUSCUKoifNfztLZq?=
 =?us-ascii?Q?ldy/V1wVoVw63/AcPYXztoo+s8J/+VfZcM64gaLR/VtSN3cA7jcrCX92dEK0?=
 =?us-ascii?Q?cQmDj77xaT+fnVmym6VPgA9fTgTijlwql/J+MqItiX2VaZDVUnI+hUiJ+qhp?=
 =?us-ascii?Q?c8yMFdee8TFHt9rIRXYxtV+J4x9QZl5BCA02uhLGLWmVzVSbGUHbFO6nxOpv?=
 =?us-ascii?Q?qMDRmY6F2os/8G+/gnqgVmCInCP1SMOalQwjsRP7MH/K4VmyQ1rdBAz+UDVu?=
 =?us-ascii?Q?qThV5clRHSWMdnduxqVc+onGiJ4vIyZVcs5Amm1Bx59cLKyw+ILdbr8X5eTT?=
 =?us-ascii?Q?bZw+vjvL5rCIGG8vqSDjRgrXn/N84FAiv6NzHhvPXKFM/F7lXjexcf8jlmTr?=
 =?us-ascii?Q?b6H9gxkE/DarAXViGCh85++a0Vm6tDr7yOiQRpjtSvjshvzMPSmtoRwCLyOJ?=
 =?us-ascii?Q?wFvY/HKwbD/ly3V9AQ1R9vFL08gpSjDFyf/y97LGkmiodWe20PisOAxAfAbr?=
 =?us-ascii?Q?AyyL79kM4gpdenr/uxlgzL+xn+tcNuVpjJFqAAF8dR4+NiSil7AbngVhja9+?=
 =?us-ascii?Q?oveR8ACpHAjO17MpT6Y5cYJJ/sYya+XuP8/+/BeWX5ssq17JkEdkVQab4Ep4?=
 =?us-ascii?Q?1czpNVJLSjkdIvbR3eSXjG3l6/HkF2+Ub+LXql2GY1Cu+c0GVAHSfhKwNPzf?=
 =?us-ascii?Q?ytWYD4ZmsitbiUVqr5adV6NN8OSszxGvLqnu//YlV56B5i4aSDW9aAS+RCXg?=
 =?us-ascii?Q?hJE8swOItwVK74daET3WfhOJ1ttgwtmNiCU9YmVysUImtGPTrcUr5myCrJbW?=
 =?us-ascii?Q?ohtGBn7SmwJD4zN57VqlbY5xLRh+ekG2RSDz3aswWJdfUU7AQb8OEdV6FQFY?=
 =?us-ascii?Q?u2kkcHcFooi/RrR1aLhxzJwXQXOwrTb/3N+uw/c+h02Zu/TbeMzVifC7+WHZ?=
 =?us-ascii?Q?cIVTqtNt4Jn424bMqAtROpj7PEQT1WQyvd1eqwL2/f8Hijnu7uODRvF+lfwd?=
 =?us-ascii?Q?j3V22CB6O8z6sKz/Bl194R6bRqQBTByfim68Keu2T+0zCdQBkj1lZ19Gnz42?=
 =?us-ascii?Q?Am5bNrdqWxvsswbmpmfeA5TmxKI4VczDFO4HEtll5Gr/hc5vs0VA7ttWkvnr?=
 =?us-ascii?Q?jAr5nGjJ+/wd9u10D1xSSsPGlTVs5mSwIlQ4KcHeiSAzDVN9+l8TF437fSUC?=
 =?us-ascii?Q?SObwiZzhEhvyIBifvg+GsBj12h3kMuK93qUNGkeyfUkXcfJtgMR8JOOXDWJL?=
 =?us-ascii?Q?nozp1UNqLOaI+4Q2YQC0zychHr6IInWczpv/87Ia6LZqHXMO9pYW8VcF/0ty?=
 =?us-ascii?Q?fTw3pOQxOFMIc6ffKUE5xb0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81a3ecc6-ea20-4e07-4078-08dca4a5af46
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2024 08:11:09.6853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ye5N8oknV+GUflZKKjxaiyhiUazIBXUXEhAUJnHw6b/Om71+CthunukcU68vmmscWqvCcsZuo7PFwrHyyTUBDgaGzrjOeGs8571ohvGW/y75uvPNXw3TNG8qVTrNQjkP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7542
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
> Sent: Tuesday, July 9, 2024 8:57 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; ville.syrjala@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: [PATCH 03/10] drm/i915/dp: Set FAVT mode in DP SDP with fixed
> refresh rate
>=20
> While running with fixed refresh rate and VRR timing generator set FAVT
> mode (Fixed Vtotal) in DP Adaptive Sync SDP to intimate the panel about
> Fixed refresh rate.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3f46e13bb7b8..dcb94526cf00 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2642,6 +2642,10 @@ static void intel_dp_compute_as_sdp(struct
> intel_dp *intel_dp,
>  		as_sdp->target_rr =3D drm_mode_vrefresh(adjusted_mode);
>  		as_sdp->target_rr_divider =3D true;
>  	} else {
> +		if (crtc_state->vrr.fixed_rr)
> +			as_sdp->mode =3D DP_AS_SDP_AVT_FIXED_VTOTAL;
> +		else
> +			as_sdp->mode =3D
> DP_AS_SDP_AVT_DYNAMIC_VTOTAL;

Changes LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  		as_sdp->mode =3D DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
>  		as_sdp->vtotal =3D adjusted_mode->vtotal;
>  		as_sdp->target_rr =3D 0;
> --
> 2.40.1

