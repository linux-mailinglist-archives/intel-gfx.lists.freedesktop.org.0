Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F039ADA25
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 04:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF56810E890;
	Thu, 24 Oct 2024 02:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/PDKBgk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2514E10E264;
 Thu, 24 Oct 2024 02:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729738338; x=1761274338;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PB2NhAUZOrvIry5F7btwuF2vdRuL+AWigdpG1Aq+ZuI=;
 b=d/PDKBgkcWDslZcse9ZMQG9gxne4bGiC9Ph/wS+ZQ5DwEo6cVtgFvxwd
 fKb7nY/h8gPcFhyel1X0lfcW5Wo5F/WWCj76XXi8cd1guQrT5KWZZardC
 muUsDVL5gOLIpHr33PeQIH530HuHjjuFiJ5jyZHRVsT4z5IfwzCQY1Vc9
 oIUX+Ms4itKMFI4LiGTN0y1QlJwbBuSrP+pyvRm2CPbpFpsRY9aD8vRFc
 1tM7h9HUyfAlW3per15cwjyvbdER3mO+BvES5Cjkev8UVvqqGnTBhFwCc
 VoWyBI2ut6FIkNibAw4AdAcOS8d3OuXLKeUNliOJQ3LZVkMxFDJK2LPoH w==;
X-CSE-ConnectionGUID: HwKSvZjtQ6On2mtrrbdN6Q==
X-CSE-MsgGUID: +BRS3J4SToiub3KNwgcIjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29464242"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="29464242"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 19:52:18 -0700
X-CSE-ConnectionGUID: ms5IXjmkRFSxMcQh/DAGDg==
X-CSE-MsgGUID: kRWLD9ttQoiaC1MKGqS8oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80555543"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 19:52:18 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 19:52:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 19:52:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 19:52:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XxCAvIBgK5er1zovYXJf7rrS25zgwXMTnih29iX2DABd0J+QyIdVU7oJp3NCzUXWlL7iRuyuVbIqPd0XOLRoXGMZ+NxwpZocgUWG52zZlJxAlo2+TueL9IBGtYrVlx7n3V9vzPwRLvxrlLVfxOfRV3dhLl3BZPwAokYM+f2p+5O7KKfeZSXegAmrE0J18fz7XlUx5vJ5O1H6/WuCgoKQkGtCvbJU4k3foHArVwGSEJuDhG9Y2WWOqKICM4gAzAm8NC4qX6pj1l1uuNAbyKSWVgVet3bwxwpPlueeJ1hSCYnev9a7tFsldto2D2YteuZZJn2BMBK+6QZuxCqC0NIbQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3C+l/gq39ztKT6jLVW6Y7djEC2dlbrzZEidhjVv4ibM=;
 b=gVNrk/ggHwux7JVwCHXcfS2XAnySfVt/YV1k3ZTJhE0gIl3nf7Najn5WriN4EguSaTOynByY0eT5zzV5uu16+vN2vrmfEsMe3BtFxeY0OFSfrULmpm50d1Qs1OLEzSgjvkISW4WR7syLiEj3i4CcZlwVH8OSqd3zAoPs991C8Ucab/qSWaCv+Z/riv2cEEWCx9OaFcq8Uo7O0FnL3LFhkM4/brtAsmSUomgQvlLqjzBWrsf8cfmePZjz3MIycCS99IqLbOdn5pnQR5Vkmt8RreBiWuQGW3mCkVFlvrCLuOR/p6yrirLSRjQouljr0T3lDbYj9X0v5WuU6C4CUQaW9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:95::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Thu, 24 Oct
 2024 02:52:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Thu, 24 Oct 2024
 02:52:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for
 Xe3
Thread-Index: AQHbIZjVdt/ziriyKU6C6TcoqApVybKUpVSAgACV6AA=
Date: Thu, 24 Oct 2024 02:52:14 +0000
Message-ID: <SN7PR11MB67501BE6E81E6C9F14CD4C05E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-4-matthew.s.atwood@intel.com>
 <20241023175201.GO4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241023175201.GO4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB4769:EE_
x-ms-office365-filtering-correlation-id: 5a03294b-6797-409d-f53d-08dcf3d6dd68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?8Y6FmaOsf9cCZ2jkqfgxB1biopexZ59wKBy0/jmJ4c8IdDzM77FASEsRDXho?=
 =?us-ascii?Q?IvGPhbHyTGa1Ip9aDEMYnpPwFTauWSV+K169m5B/3ZZ0BfSlXmJbwdDM1y3y?=
 =?us-ascii?Q?8EuS5CYzeonqmC6GzKWvLVsKnUkU2du7wBfI3AXc4QGyLlqymKKQ8mWSgQhQ?=
 =?us-ascii?Q?Wg2L+e0aZLy+6Ir5Wic2b7T9qeIii3/MSgsw3Gmf1/NzddRhzkafHaqzp4fq?=
 =?us-ascii?Q?082cACw9ka13ccy+eI204RQrMbOrmTHXKdqOgdm5cApw4NtE8Vz75iVFdCZi?=
 =?us-ascii?Q?cM0XCiKTndVP54cqXetnA/moicwIPcyjmfOhy1NiCacONR2sluG9G09+r/Zk?=
 =?us-ascii?Q?6l/VG7OfcW1sF/bJ1ZQTHOY2oAxCD0okl/Bky3CSYQYmBY+6oZpmdPJowOz/?=
 =?us-ascii?Q?aBfH6Kgne6VBs4DoLsVKZTF8e/UmqBlzKZ+rCmdgXjMNvZakkfiPMjXkFgbO?=
 =?us-ascii?Q?W//Wo/sXH6tDJZu5H959PVok/xKOpzWPoTAB1ZJvBpYIyME4QHi/hqnu6GsE?=
 =?us-ascii?Q?voEsadEdEXJBR4ESZhFYg3IMi4ILQxb/HdVb6VZDZvwoIaGCafs42KnH7I7C?=
 =?us-ascii?Q?yyWeWXvlK+jSkb8N4zzTdOuX44s5cnCmcTxgsBv8NJFUeQbAAmc6heE46ANw?=
 =?us-ascii?Q?T4BaLEzkQj3ZyXVw8Z1J11X8Jasz1L/XT6gJ/76hPh6iSShr7dhqkJlEbNHO?=
 =?us-ascii?Q?WrlD4mJ+Us1UvwVA9xD4dj0umpAf8KKPXeYjjwfVpJp+Q3/d/mBdj3nDojAm?=
 =?us-ascii?Q?m7q5q6vyEPoKVUvd1VxyyJY8riVPm1pOF9kVENPodOfwnpiRS50FVCN0t+bU?=
 =?us-ascii?Q?9CAu6XpUhoe7hkkUvPKXPAuQJwdNNSqsuEp+PJhdckhfRhWUPx52QD+Cd3kP?=
 =?us-ascii?Q?zprKGWE6D1Tf8EuT8l7CdzBuWtdpe929dREsfJ0+0sVF3SWXOfa4tsg21+vG?=
 =?us-ascii?Q?bA/GoM4BjB1edxGqum6Sf6yGRofk83u0Q+VKCvt4oq7hdALJJjSflICsCfih?=
 =?us-ascii?Q?2V+5pce8yojpjRQsxLkaDp3SnnGC5gmy3U5SyG3NRc123FP9L0MlqUVLeJHG?=
 =?us-ascii?Q?1bH//5JHxS4mRnqcLGN7c4H9WVKX9G7xW9Zer1yub2qEJ9XevHjte1m+FCPa?=
 =?us-ascii?Q?vVKEGHKKJ80KzDPt5z2p/azE4QrkZnlqeovDmg5QwqBNs7DjYPbX8NmJpkb3?=
 =?us-ascii?Q?OgOU0s9Jr6Nwb6Rr3hDTYFi6m9AdaXxzoLGCS4LMlG5ocP6hypYhoYhWb7mB?=
 =?us-ascii?Q?47Epgm7ZxU72zT7NjbsXwtvUio//ZrR0fs+532J1Tgxd1kvTzm1rd3MxsTcv?=
 =?us-ascii?Q?vV1DeNeeHlM1mLq8BadRT0v8Jae186ZrHiXDhNjGP30CMNenyZFlq282j7Ur?=
 =?us-ascii?Q?krH//RI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KncekZyX5zQuMJHyQkeDyVVwvKusMZETlFtYSxKYAI2YuYM9BpKVj28TPEJR?=
 =?us-ascii?Q?bW9z8Onqif11jWDa02X2SNxX3bZKZboJp3dXDce1u74k46YX5hJUakA8AyzV?=
 =?us-ascii?Q?Tcw1Ayewpp9ZmI7HcIaNH9OfyjkXP+PBp9sPexsvExdf5Jb9tNSSXLa5vC0X?=
 =?us-ascii?Q?lvuxyJn758JNzmRHVIMhyDuJUvxp/1A/SzD0Cj1PQQ0k4OGX/EzvkXVf6e98?=
 =?us-ascii?Q?e8dztSDc5O7io3b0YzrTyEKSnN0f7l7o2gJSswtHbyssIajBAPgmO6Q/CLx/?=
 =?us-ascii?Q?P17xVLc9SyQGzVVxAOxv2vYmy/yTXVfVZcbCJD1VnR1mAMXAh9lc/6Gibic/?=
 =?us-ascii?Q?NGMgzRo6HfXYwB+9EUajZEwXjhDIufm1HVYQCGxNJ3aLYWsLL6N6saotJ/va?=
 =?us-ascii?Q?uYAMIo+6XF6PlzExOXYTCrzuAGh45i+Y5T/9Kh2Hx9qBxuTAv5ZUbrLRo8v0?=
 =?us-ascii?Q?ws8aeopTyBfTL7Hf9kSO1BQqFftetZbjwKIiI9LuKRg6yarM3xqXe6clk7tX?=
 =?us-ascii?Q?wj3l5UfMPO0jfQbja0U7PkkCnMv/rMAZqUrSqJ7HkECD7bYBhCVVnEhKHDZM?=
 =?us-ascii?Q?53i+6t+0VNUsrsTFPe6gQcOC61vfkJM6blbmBRi+VayvZGsnKoGwMl/r34gT?=
 =?us-ascii?Q?eFJxXX4l7UXuO9ZCvS48XTKjfAxTbGGVExEsItbyukzrD1SuYLy8TldxmnxV?=
 =?us-ascii?Q?w+njHlfaE+dUJemmWsolpjqd2qAQ1D3//IC52e7qF87mn/KqDOfasFbXHNZI?=
 =?us-ascii?Q?SRs9YQvWx7ul3rv5pVOZj5+RKPmLwyeRDMcOSZlBqknrBmt8VUq1LfoHjE63?=
 =?us-ascii?Q?oHNs6Luzz3ay5RRcWIX336ZHmNpwxPhBZnSB/oFMAxNnRJOtWvK9BOFocCmA?=
 =?us-ascii?Q?hVbxsvQxuNxxdfMGocERqr2defsQWUA2L6nMcJ0v+kBiJgfXhg+mbzdSsX63?=
 =?us-ascii?Q?mnf448+GAUkb1gjXCYviKn7GclVMGEv6GQCi5rgxHgD/lxGNBHhKaURzzF1P?=
 =?us-ascii?Q?7LJ5yzh1udgMcCqwcavVevS5TsnwRU/kthL7jhICGRteCYwjx/E8w3ApAYY9?=
 =?us-ascii?Q?kJLxn1fIjOLGTRzsjrCWQ39ZAen+scUDtC1xXzhDwv0smB4FNlPR3VTmOO5p?=
 =?us-ascii?Q?g9Tpno7QKsoxxna9058HxlbXZdszNpPmqcEIHFbQ8cyB5LrlGmV+s4AS7+NI?=
 =?us-ascii?Q?GkBFVrtu0Eh85wzfvu0o+qOpFIDVCVZNcV5dceqr8pq+RzzDwZgkg2q0cPWB?=
 =?us-ascii?Q?jXf7EeCs8Z8U8M38arosRe2o5jzBGMO5lsafhBJ5XaovDbMz0M7Sxims1kS5?=
 =?us-ascii?Q?r7sbmaSt91GLLXVIPyAVAmXIx7iusBQ+ZHYd/gS/VbQQGNqN2vmC6AJCkS1L?=
 =?us-ascii?Q?KnNC3nC1JgEw4TzEKh2STXEo7OEO3Rtc+E5W6sd3X2IYtK+7IUFYlholzaUk?=
 =?us-ascii?Q?QzbAfF7p3ujpp4r7juO38E7byupoVdi595xz+MM0pJ3Tsj0PEN/QrLRyvizL?=
 =?us-ascii?Q?cbmlj31IkiAZ2x3diJBCZ/OWoH4mUhQYuA1fo3QEFPbfA5Y6rC2ubmXGJ1rw?=
 =?us-ascii?Q?opdg/zGRr6U7+FyIOH4IhC8V/ICd/H7hQ/YKWznR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a03294b-6797-409d-f53d-08dcf3d6dd68
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 02:52:14.2763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lmpN35EDeHxON7vxjuP+liUfLmn28n0PtVHatIpNamMZnridSUdpTVM3E0Ic7ShhEiG9F7BNjwEbQE4caKoITg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, October 23, 2024 11:22 PM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kand=
pal,
> Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying f=
or
> Xe3
>=20
> On Fri, Oct 18, 2024 at 01:03:07PM -0700, Matt Atwood wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > We need to disable HDCP Line Rekeying for Xe3 when we are using an
> > HDMI encoder.
>=20
> This is still missing the "why" for this change.  Is there a bspec refere=
nce that
> gives the details?  From the description of the bit itself, it sounds lik=
e the
> setting here (for both Xe3 and earlier Xe2) should be based on the HDCP
> version rather than the platform/stepping.
>=20
> As mentioned previously, this entire function is labeled as "/* WA:
> 16022217614 */"  If we're now using this function for something other tha=
n
> that specific workaround, then we need to fix/move that comment.
>=20
>=20

Bspec: 68933


> Matt
>=20
> >
> > v2: add additional definition instead of function, commit message typo
> > fix and update.
> > v3: restore lost conditional from v2.
> > v4: subject line and subject message updated, fix the if ladder order,
> > fix the bit definition order.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
> >  drivers/gpu/drm/i915/i915_reg.h           |  1 +
> >  2 files changed, 8 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ed6aa87403e2..70dfc9d4d6ac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -43,14 +43,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> >  		return;
> >
> >  	if (DISPLAY_VER(display) >=3D 14) {
> > -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> STEP_FOREVER))
> > -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> > -				     0, HDCP_LINE_REKEY_DISABLE);
> > +		if (DISPLAY_VER(display) >=3D 30)
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > +				     0,
> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
> STEP_FOREVER) ||
> >  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> STEP_B0, STEP_FOREVER))
> >  			intel_de_rmw(display,
> >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> >  				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> STEP_FOREVER))
> > +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> > +				     0, HDCP_LINE_REKEY_DISABLE);
> >  	}
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 89e4381f8baa..8d758947f301
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3817,6 +3817,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
> >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > --
> > 2.45.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
