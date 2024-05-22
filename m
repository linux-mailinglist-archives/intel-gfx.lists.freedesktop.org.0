Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F090B8CC43D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 17:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2105D10E0F3;
	Wed, 22 May 2024 15:39:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AmXXmHni";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D8B10E31A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 15:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716392356; x=1747928356;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W4gyzXBig6DK9zMdnDpn0D3jj204PpxI6rZSaP/70Wo=;
 b=AmXXmHniOkjm1hNw3/lk8s/DX2CMnKDtsDQY0QEVSDLybDtNFYHm1OgT
 L7D7dRL75vnBNZQKKM1zlxLRU9UrM4EiQCxD8oMMuJtmMIyLYuT3dVZop
 1toy3SLjkks37qgYfqqnqQkWHq2sWqAHHFMMEKmvc7P0yfqylxDpzH3zX
 LoqPEdAbCM5CS5kDb+CxadF/F+9RSqbO3aWPuXMgXurrWwcLJcYB2MMQQ
 3Mhbt/uOl4ULGN6bbuzSYlKnBi+F1tO7SsiHbhYitcJZXB2JycWRooAzy
 7TFjA6g6DFEtMG8dOawsV8CJs+CwYi9+SX6ejcD90gNv+xFWSw+IFXLs+ w==;
X-CSE-ConnectionGUID: BS/FSWf5Qv2zx8P+qivQAQ==
X-CSE-MsgGUID: Lg0SJ/uqS52av86aDFf8HQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="12438192"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12438192"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 08:39:04 -0700
X-CSE-ConnectionGUID: 7aU0KKGbRjaZXN7bWS9idA==
X-CSE-MsgGUID: 5FjHGuKbSdi4kYaSujPlJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="64566511"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 08:39:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 08:39:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 08:39:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 08:39:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 08:39:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KMQ2P1Nw0bGjZ5k+P31E0QsevfZGc6B0chkx/Pg+lEihjh9SW12q1lnxXAW/4pxNCjtwza3Frupfwrdui9YuQRzPshlqpsiTuaz08ihx+aov5qkWlbQIMSCnZkHrDCAjusRck+C4CKvwM+/lndCvN17TrOEAaIJk1PEShYYRXyCKuqAABfnqVkei/lR0sxHppU8oBCy9m5AhDfm+5idKASHAqw1gLURt8p0u/C+f8MCIwnEyBnCVGgT6jKaStCdGoVUvqoePxTHad+LtJ7aYyJdAgK56lw8Usa4mRplPDuQaiOOs/MMdZd8SjNVuAaeJRlZ6bP5OQ1rAGvHRucuUEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s44FdoGIXC71q6GtLoRdAvTCZ82TghPXs+5EmzSe1nE=;
 b=RHj8+p0O7N/EfCnzQ1lWcUG5txGc4SrKv0mYBxYiLOZ2p0SD3K8LO4wN9jj0sKexTNIn3LMOWE2gtWqGl9NriJMb0a+C90A8sM6HaNiNk+mlwTMvtoinNRM2OrPMzDJdfup6RhDzlL6cG9BMVMrw3sUO6S59pXFA0DJyLag1V6UpHbXXYvQ3iDTRTtqg6sgxVNaCkEc7WcTW82F+SqV6H19S5/WbWn5aE5Z0gLPpgITIHtX5dtSZVWAFPRfstk7MjvYWbBzrcrmQ3VOjOaeSFwGsO55VUkn1g91wv5OwJtOjd+7g2vFhaEoDE8wVsOKko1+hIvOWp+r30g4vzDzVKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB8240.namprd11.prod.outlook.com (2603:10b6:610:139::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Wed, 22 May
 2024 15:38:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%6]) with mapi id 15.20.7587.030; Wed, 22 May 2024
 15:38:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 0/2] Fixes in hdcp remote capability
Thread-Topic: [PATCH 0/2] Fixes in hdcp remote capability
Thread-Index: AQHaq1dY3wqrke+Za06baZoS4jfLLbGjZV4w
Date: Wed, 22 May 2024 15:38:56 +0000
Message-ID: <SN7PR11MB67505302BE9FD0102D4C788DE3EB2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240521081458.1500327-1-suraj.kandpal@intel.com>
In-Reply-To: <20240521081458.1500327-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB8240:EE_
x-ms-office365-filtering-correlation-id: 80837b60-1c40-41d6-fea4-08dc7a754aaa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?FqR/5cu72QsmOX8uT5dwrcqIyEcHW1dF4WTw7Jg72FNGp3LQDpc2eyQOk+gU?=
 =?us-ascii?Q?HSgAoW5J8XKpfDRyZJFjcpZeMr8SvXAQZAo6DBuKX9MQiTcOrzuz1B+mZAyK?=
 =?us-ascii?Q?5TULzkn4wVJgAFUqKusFCL8IbftzBd4EDQDjYXCTFowChVWFBJMxJ84APBVC?=
 =?us-ascii?Q?bjJIlX8EGlejA1OzERklVsSavY/UiHjmRZolUGWPJl8DBH7/RDPY5fhytM2Y?=
 =?us-ascii?Q?gMij7pfSKusLWqClqencY6zWdjVf6Y0vRoAtwOnU6WiZihInVGrIvIokLRpO?=
 =?us-ascii?Q?El8Z82BFqj58Ym8xgaHgncE81zZFxevA7J85jnEQynbHwKiOHgIDJO/JrEwK?=
 =?us-ascii?Q?7BOoEjDWrevBb7qAGaiQXf/QciL9vYUMNJDbpcMgIYNoADl3oevL3IOMr2mB?=
 =?us-ascii?Q?4K3lA67lZacDBpCwuhbw0e4RRmOuafj3XktshURXVhxuw75DG6WKfuvMRcGc?=
 =?us-ascii?Q?5CoR+RKDB8zV6AC9DIM8ZzbOfPdwgFOR+uu/bm4fecu2+nywmJiraYTfNH1w?=
 =?us-ascii?Q?y7yIAJUVxotHdYS9ylq6C2KtFJaGZRxGjbK2OEIDd+0YU9jPRjoJuYrA2Rqk?=
 =?us-ascii?Q?Z5Dj5WXhVP3q5znpwtfbJ01rh3/gr4hrp5PYmTHXCCUm/qqVZ1pdlCvK/f3N?=
 =?us-ascii?Q?3yIw0+1T6lnr3WGzak4w9Kir7SZf0bmzHv6D4Iz3kAVz7CLZI3i0Kn2EW3CY?=
 =?us-ascii?Q?eH0be6RyyEKHjBdOgajT+r0iYkONBG4Wwy/zmAXv7bPW8ORUuCA8/VmYkVYv?=
 =?us-ascii?Q?AJrmLmcGuJPxNOKK8dLvtu6VlPcySixK4H/EoEUVEcpTS7ngoh00X8mIKITq?=
 =?us-ascii?Q?9spwcrE6CeQKBXoQmNQbk76mFqrAXdC3kLkJF8LSRTdBL6bmBtM0L1oA1dgL?=
 =?us-ascii?Q?Wd+ISWOFLBoFdiN6VpSN6364gLvEBdFF4gfUwA5KBlSRk/vJ6t/Sw+5oN55s?=
 =?us-ascii?Q?GG8DN45Coy573dlTYe86a1m50xOSh+et51yfspn5Ttpx0I7HoK4oIzQBTtwC?=
 =?us-ascii?Q?Nyz6xkoXz8XabfOnYBS5XucI4luLfe6VVK5c8Jv5pJDQjox5ZPeig/NDRKYK?=
 =?us-ascii?Q?VnoBcnRfC1v+kR0f0GtT32gF6MV7od6duomLnvbwDnbPGzEUftmBrxehsxGI?=
 =?us-ascii?Q?gliVtUcNhYmBiIOb63NiHXphHotu0iUGrN1zceu+Uut0Lzm+5Whv4Vo1p/wc?=
 =?us-ascii?Q?zIiqRSBDtpYPOahxGf+vrDTwKSnCOTCu0tEXPmywGxSBBbH2US3/ItzIegLf?=
 =?us-ascii?Q?72aTtovQGd9/FGO8lSnU7v4BduJVsKbWSsPg3WGzsPBzlIV5p6IFH0YpB9t8?=
 =?us-ascii?Q?7dXJ/Be32C+BLIRLvmZ+UZ0lVzUMmE8Mg8dMrkVe5Z7baQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ywf3EtH/cVGC4cKlg+kDTTIbM83fuxI2wO4lepVD5UwcVbmBa0gUqcEyL4JZ?=
 =?us-ascii?Q?clJjVBNLHH7n5fSPF4WfJGVsw1+xTSvG8I0d9FMlzur6apYXd6+YiMTOeHmC?=
 =?us-ascii?Q?4hI0+lZjX81ZzmI3M3YGQnusbkASyKifnmSJiqdq5wLN/9x31hNdyQpl7ENh?=
 =?us-ascii?Q?ZXlhmEw7+GmUY9ULkZaRuXWcKxbkvJfGX/sNmOQ8JnPuF5AL0u5MkJZqlUfn?=
 =?us-ascii?Q?ONa7mQEuctAEuCY35gY6gIQ8HbkLxfC0RSGk7D4Bz8ryE8gq32oex+WMWAo1?=
 =?us-ascii?Q?94QZWdwLuTwCdmOqJIPMf+JHYxMDcjM6tTcLiFuvxCUajBgY7b92Zc+rwKc7?=
 =?us-ascii?Q?lwyWkpEP+Dk1lrgvSqLbZOfkx6UlBMn0M8DdAmKAAGCilZj5zeVe40QO+5g7?=
 =?us-ascii?Q?DRt6eSGaiyjX3KuSnOeTpxZiZtpBICavXQh0G0kjQqk7XNBpbik4/vdy7M+j?=
 =?us-ascii?Q?W2T/WD2NQrwYp4/BFBDKsYc3AAP6c2ORZIWUb+0HRC2pw5VM2Xpz9sQdr+ST?=
 =?us-ascii?Q?CW6SW8OQdl+XqE3QfTlNGMHGB06qer7afmHW2X4BzJHV8sjAjkHoJv3kk5+P?=
 =?us-ascii?Q?EUnB8mfVpyFSOpNiy73iWuA+uO6Xiq+Cas1VeNczWgQ+LIjfLMyRn4opFRfH?=
 =?us-ascii?Q?mkQnDHXX9ZSwegHyJmpIiJU/ind9BC41hMI9OukbCU1zW1Gary4Xf4jJD81n?=
 =?us-ascii?Q?O5H96Lm1hqh3OLVNq7+tmg5hFBfdWi+yjgKcMi8SrAaTaxv+r3QKb9tAJusU?=
 =?us-ascii?Q?GM1mh0MPp2oVauprs9WjtKCBBvmMpSjtj32Kfw+r0XEgRIKlGehXguNJyvOy?=
 =?us-ascii?Q?GvI9KWlsWkSCHQNNC2Xwq6+q+X5QkgQCVBZMnAQLWS06g/Dj8YOT/W34N+hr?=
 =?us-ascii?Q?kOVfQloUDhQ81lCzMX4/w2TKE22PuIdt8oagQ5BEV93jODqertecFuE0WqfR?=
 =?us-ascii?Q?+sJXltd5/krjqHdEs0+ssmIybSWPbqubL/WF1nblSFczegSsC5es39LcvF5y?=
 =?us-ascii?Q?0V3ZPbTsSU7ScZQddxtHNBQIezF+32GJyFGLUgDOLzXJeqyjDq04DSFDYVH6?=
 =?us-ascii?Q?e4YfQB0NxjygXhcmpco4COHap7qgTYpYy8KRYWjQHN3n7vxJn4Fv6ywMrcD/?=
 =?us-ascii?Q?WqeY/fb00/e/Ls7TxDAtb0/vP5O/SdrvvcJmGK1c/FF7lqQzzx/w+DbKHiY2?=
 =?us-ascii?Q?l0f6BHLG8+bjwtayHq+dY73RSfuHlF4YnyobVpZpvJrU2yd0/dKzWmPfFSeB?=
 =?us-ascii?Q?vXTNqwJkmqmocou88j5Y8C9JMUoGbykYB8pkWtxDJ7Y33UOUnYFunvarU8ZS?=
 =?us-ascii?Q?AVLcb9c0YUDFcHq/p2XwQwZDrq+XLtBdPRJWYi+rJY2jjsyg2PDgwGzyDtIK?=
 =?us-ascii?Q?Z6oThj1lbaRr+F1Q+xQ8PChAQwDBPKPg7j0rICaDGlsMDh2QewP4doUySjfJ?=
 =?us-ascii?Q?c7Omg6hMfUIUphYbEnT3hD5kRt1JjJylxCLPrfNHj2ln5ZxuE9DbOw+lWNFU?=
 =?us-ascii?Q?hh6wUlPnH0RQIi3I4vNEZxXqpBhPyJ19tUW9Hht/s3SgD6HnRNI4Hq4CJSX3?=
 =?us-ascii?Q?Znj3HVQuLbrOGaHrtXhYtT1rszvqVnYcm3arebUP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80837b60-1c40-41d6-fea4-08dc7a754aaa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2024 15:38:56.1881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6YuGVQl69QzbnWdtuOnYwPQ+5mGpInjz0KnH/do5YNxqtYOg5+8eEoBamJZQv3W4ssIuQyD8zx4HZGQSvVeOpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8240
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, May 21, 2024 1:45 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 0/2] Fixes in hdcp remote capability
>=20
> This patch series aims to avoid page fault errors caused by aux early
> assignment as connector may not be mst and using encoder to check for
> connector type.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20

Thanks for the reviews,
Pushed to drm-intel-next

Regards,
Suraj Kandpal

> Suraj Kandpal (2):
>   drm/i915/hdcp: Move aux assignment after connector type check
>   drm/i915/hdcp: Check mst_port to determine connector type
>=20
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> --
> 2.43.2

