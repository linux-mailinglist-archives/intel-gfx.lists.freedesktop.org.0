Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9586CB352D4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 06:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC5210E2CA;
	Tue, 26 Aug 2025 04:44:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L+yqyoJ4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BD510E2C7;
 Tue, 26 Aug 2025 04:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756183499; x=1787719499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gDbxsrZwuv9FIxXqiTdOQAbvec8Cxbj8X/gJiJPToZw=;
 b=L+yqyoJ4Pz/4k248LBzSxMY9x7NkNJfulgZJ+QdRmulblyq5wpYtLqeA
 4hMFtPyrcznykUiXTTW2K6ubWMD6w1NvhBKDm4445S498/33tFQUdTcaJ
 KzJ/bEoc2inSaywmJwem9tGHg6o41VaKi5HFyns8Qq7H/elPiZvx6MVsY
 PsLJFTpumgyu3n7Fz5UtHKrhhtE+TJKWjlgIt4gNPBE+vmLimNozsy37P
 shaVvx4EaBZa+tYQhNJrRBT7Dn2ootfcpJXSrxhcbmscNGV2reTuhYv6Y
 sXHudS8Q6vCgHVFYIfNjC0W3PZMGoojb/3CGnyVP/zhr4zfqeFnv8a16Q Q==;
X-CSE-ConnectionGUID: +YWV2PE0TUGAonQZoSllAw==
X-CSE-MsgGUID: bvZ9T+QhR1Wo2NB59zsGYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="83817417"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="83817417"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 21:44:58 -0700
X-CSE-ConnectionGUID: 0gVVuoYgTUmIgQuzEn2N4g==
X-CSE-MsgGUID: yRWJ5VzRTzO8OyCltHnEYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="173872249"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 21:44:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 21:44:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 25 Aug 2025 21:44:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.79)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 21:44:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wSZb4GZuLPYK8ZcXfN82VJuT2OEOR/ZGHP5hwlhavmn4AI9Xmx7d+yaNnNbn2MIWe7v0/OcrPmyzwpCV8R67AhnJ7SQM+VrgsIRnriasjKagwd3idjjvgmlIzxGSzeIIvP3F7j1VRADJ9hrW7TfoD/oERj9GwBlKbHOxKbF5GIAAhFydeU+Q3JEPlIrm7pGCMlUZ8jA9u+MO6a0iu5pDR8scJx3YPEc7+fqJ5JChsZCxrhvzjw8XsfboUam+Ew+k3peAD5cfMZ40+tWRmnPlIQoNecxThVGizpn1dGwjMd6BA9TWVP/3l2uPdQJmW3hu47/hSOJ10lx2adR+bK0S3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTYBQF1WEboCX1sOYB73IHIR9X3/jKKOeQQzyiP9P9E=;
 b=n+Y2OSaiFatxqlXk+HqUMvlTV5ihOglBp+n0QmY0UN5GlfSk3I15vhE6tLinbGer2JzWdKNF5f9BWnBSouTwFjw2TlOhN60MhMEpgBJSzdrWDDPButK5uCV5RAruuAYjQ5gfVcp/v6mwBYFuPgCmiiSqqIOpXx+pK9uIHCzIV6PbpiEcC4BrLTZEL/o5CT5kmF4yyWbCwohTvqVznVHVjPicwh4EZfZxBlTHeVfSteSMDTORez2SY+MMQnV6SKAi9h93AywzN10b8B2oLmU5lUXUcCQYBXZVIjWMndvXtr5thn0CehXoex4whZ7EJXTPUnImV68GrUeoyXRlHa6Aog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.19; Tue, 26 Aug
 2025 04:44:52 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 04:44:51 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH] drm/i915/vrr: Drop redundant HAS_VRR checks
Thread-Topic: [PATCH] drm/i915/vrr: Drop redundant HAS_VRR checks
Thread-Index: AQHcFcomnm+iIK8NI0WfqmxBnstaXLR0XJbw
Date: Tue, 26 Aug 2025 04:44:51 +0000
Message-ID: <IA1PR11MB6348262360901C229CFEA599B239A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250825135733.3202475-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250825135733.3202475-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SN7PR11MB7512:EE_
x-ms-office365-filtering-correlation-id: 70df6a56-e1d2-4b28-250e-08dde45b4b5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?74dO8tJolu37NJs5rAdCBkqz8lTJNQ2TXLZIENO3p2tUUc4R11Wq+X9uMLch?=
 =?us-ascii?Q?h+tv66wl04DVgvwyKp10JdojARZQLAN+pEyhUeE6uS1YJFmH7x5g2cl4IPHC?=
 =?us-ascii?Q?I57qR7uk4xVX3fcfIhLt3Jwdq4K4KIETiLH1g+AC478hiSeFjtFu8rWSjt6s?=
 =?us-ascii?Q?+NBX3Hwiiv8iofv4FXyBxvOqU3hXS3WmiLV1l9PkbJkLEIWO68bt8uiZW8UP?=
 =?us-ascii?Q?NXk5SnN2kzGlbqkjd8914m6d00rGGJ3y1zgTPzvfn7MAILhXCzylWn5aS9lg?=
 =?us-ascii?Q?XsRaIzDQAl1OXg2qtj56SFTq5UVSuqKFgRi2b2QjVpfieirzPYQ053urQoLX?=
 =?us-ascii?Q?fH5id5RY6MKldNfzhi4uDlau5SR+qOyDanl+Td2H+kvCX6e7DcfKM9742q31?=
 =?us-ascii?Q?vIR6uWQ/8R64nDgdBmOzrlMBAehk8QTzyQG6ZuNCVLJJRmHtHGJ0xHacPCjZ?=
 =?us-ascii?Q?/qTlIYxzufGqHKPualfEYkTZGpIXMpvRoeYEz0igZ3ClAtdUgrYJt/hKXhHf?=
 =?us-ascii?Q?VMXH81lQzlNCkZRY+LkDm8b1qiUP7pK0yHYVYiCSX4/jqGRC/AOxv3e+U4kg?=
 =?us-ascii?Q?mnEQEKAmyE8fQh9T5Ce5gGTceswzZ3bzjZt8ctUyexfZapmkV9V26vapv/Sh?=
 =?us-ascii?Q?MpzHYl7UKqw9ZYLFktrTBkM1z9ep4eFuxISdwaO7lP3cWJIDgomeB0OLaNVg?=
 =?us-ascii?Q?2x2Uv6zJRZ68nveJVb25niXt5gjQeQzXT3ZF+GrbBdiexqeXDRm2JFmPSCWt?=
 =?us-ascii?Q?Rl8BYsGPFipzIrpes40g3xSPMRqGThj8Qxr3xsIrGizWaP3xzid9GVcJU0gG?=
 =?us-ascii?Q?cHISLUKEFtTPbNEtdpdb/4Ivcu+tWLITs28opP+wJ9owSyfV3gCqdo7tqPuy?=
 =?us-ascii?Q?j4GBXRysJHGOGxag8ntMh2i/H09qAbis9079IFjS8vfTKW4FN5qqWD49uHq7?=
 =?us-ascii?Q?g91MqbmRIMuCw8ZCvXPBUKGSgOk/nV1I7+enjObn2mjSj85i7zDNzKAiYVK/?=
 =?us-ascii?Q?xEbYIB5QJxYrnvi65uqR1tutGrqvITg+jU8FCvQR3RzvLcNOiH01nnVKY+wY?=
 =?us-ascii?Q?ieeVhr34TZHJXaSEy89O8Tu+0PJNaEgGiSDDI6pP7Nj7ZTofcTz3I1/2lp5v?=
 =?us-ascii?Q?xQL+aP9Z5NYBDmGXn58umFegx2VBXWAYz6yrD4W121261uFX8vofupGroPcH?=
 =?us-ascii?Q?dZLAf6n89dQh4YG9cKO1G2NKj5rMs3wifP81dKp01cH1yel3jBUYIOtrIVwY?=
 =?us-ascii?Q?66ehu1FHJRXiUzr9JKd90G3bCBaE3Ha0G4lHzqCh+27pPA4vWgaPFno5lvFv?=
 =?us-ascii?Q?l3I66E3lukBIZFvFEQOKPRxdLlsNCyeU/wOcEafFWKgMHBU3V6M1yJfB8lqM?=
 =?us-ascii?Q?IQCtiDiUnL6j3wGfTSI9eqGK4P+nEuf7wWktrRTEz8n6DuYYMlyCXbDFuur+?=
 =?us-ascii?Q?7DTPDIWGr9B9zBbpxLj6/AqYmgFEdi5nZ+UmHS2SWczsEvIF/1VnLA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eIU9tLgGiIKlJ4JaJT2DY10WcPr3GM6vlGNjUoean3K/4nB5hCk0tAafCAZ3?=
 =?us-ascii?Q?g7GwR86zoogGaH1VjNlmnCgJcij+Er+voHSXXtTJ38kNiVZaEfZPm+Vt5D9O?=
 =?us-ascii?Q?gGEsuIbbNjyi6fD8MXxOMVI4j8ZDTzDJME2g9yNYiz4TuEP00Tn5QQnvwBGC?=
 =?us-ascii?Q?MVZp+OtazijBm6Wto7KOyCi1LPd+oAtWrhWzefJHBPC79SX0OvDB7WvcZuSy?=
 =?us-ascii?Q?VUhtP8lK3G6MPvrMi0AkoccvLNYLwJJ1Zv6ic3cf6UwSpAzMVN6o8fBpyyEu?=
 =?us-ascii?Q?ECmR+UYVFbYKVWeLSG6fd5xJ0Y9EH379GC6LxiUmVlfBrtn3qyNeNgh44bEw?=
 =?us-ascii?Q?xBQexHgR74bSwEm6993zVoZ1Frt+puj31BwE5bqqthnaptog36BNAa6eCgnf?=
 =?us-ascii?Q?3lboq0xzEwS2r5z74sBJ7y5Sbabddi+pXokmtBRTd7BYpap1irSFSKRvCWhH?=
 =?us-ascii?Q?ucJ8cFhZkgBPjEKzYbe+Oh1F30X9VJFu0n9xNaJPiTG6zJxbsOGxWjMlTdNm?=
 =?us-ascii?Q?KJIa2lCjAaDsOQi6/IkuZPyJO3IljKYUlRlE3qsAFjZOrieLhY92oVOj1+Zw?=
 =?us-ascii?Q?ST/ugUXeVNr9dfR9egHN+NLQNoVomQNWhen6XnfIg/DErpuQ0UIn1cMRkvVB?=
 =?us-ascii?Q?rbmvMB3s4IwH0qJyiWexajjZYv83FbMP2RAs/7k+wlniEnFOx1tv9B0xQqkA?=
 =?us-ascii?Q?9OetHGW0gDKpfe0Cdi/sI3xgrbekfhUVvzj0dJRS6nnvQW8rhmJ7H0JpWbhJ?=
 =?us-ascii?Q?KfQpb4/7iqfLNdZ7oEeE+AfZfVQvuhSxuW7aQAWM7Ng1bwurc10VlxxRnGPC?=
 =?us-ascii?Q?TsRZbMVVE34BRxLt1/zCXIUnJseLODPdV0XJQgeBPJOeTiZSb2OMgFmoHXRC?=
 =?us-ascii?Q?xZkfHOnQPkM4FYXKBfvmoJo4UkGTGF3DC/p5YGhRIEiTMXsCUjJSTBemEKnh?=
 =?us-ascii?Q?BWV7+xH1GbhxgHVI8remYmsbN09rFTYAMtAzsZJF4gf5KaVQWdjbS0FvL5hL?=
 =?us-ascii?Q?etfPWnwNLNIS9S66nnKqi0jMyZPM3PmqTUhBvBYNEXbVh/5+/6wElTp1lBkP?=
 =?us-ascii?Q?3I7eCMCXhI7iKGJM6ddy0puOD0y8sYVg9AJNuvcBG0hZcsiUl9j61wKMS6yd?=
 =?us-ascii?Q?WDwH+GchIIA75JXOh3Q0OtOGFrbVNM5/9+46UBwXmARbMkrC+RhtjoLuBeyJ?=
 =?us-ascii?Q?H6qsJiod1IoyuTYikA9YXDqBZr+2uqFroazRSSzwyPVkiVdKUIIeVU+7COPg?=
 =?us-ascii?Q?z/oEK7m28T9VrF+cPE1xchpaJhgexcVVensQliAlye+k0aYFrU6K3JQAKUmz?=
 =?us-ascii?Q?4dEB3S3t51uzNv1evbtryfskhZlU+0+Hy3jD72KFIqL7N+aREnTmT8gp/z61?=
 =?us-ascii?Q?ba0NbxN+hGBH55crjZFQN5i96wWRu00RL8vtri2OzlzMA5eIsOwJnVic+Ejs?=
 =?us-ascii?Q?TVlM9eDcNdDTxJTupM70rlrvgdWXRfO7o3Xue8HZUzrJTZCU5djL6P9X/Swm?=
 =?us-ascii?Q?BRr7hosgwRlcSslFZRcP3TBeQcTA65krQ3vzTbavCcH4bxZJk8041gbS3VK4?=
 =?us-ascii?Q?7Ni582+fmwElsuLoBkv+D5suoXzieQ5JoKFYjAw7t4IDK3ZwI4ERr0J93QEm?=
 =?us-ascii?Q?UPO14i/84fE5f+Sh/282YJw=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70df6a56-e1d2-4b28-250e-08dde45b4b5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 04:44:51.3732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kgphVJomy+CSRtpPQa8lV9aoTMLHzZKNgI1lZbOX2FGcn6qwAQKuA+QYkYOpUoQvcrwuulzJkRqfZGWA2Gcf3qRzu/XJ/QfusVbgypAwkEtZbn/1Qdd2Jd8kzfgJEetu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
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
> Sent: 25 August 2025 19:28
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH] drm/i915/vrr: Drop redundant HAS_VRR checks
>=20
> We fill crtc_state->vrr.flipline only when HAS_VRR() returns true.
> This makes HAS_VRR() check redundant in places where we are already
> checking for intel_vrr_possible(), which returns true only if vrr.fliplin=
e is set.
>=20
> Drop such HAS_VRR() checks to simplify the logic.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3eed37f271b0..b9061cbb67d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -652,9 +652,6 @@ void intel_vrr_transcoder_enable(const struct
> intel_crtc_state *crtc_state)
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!HAS_VRR(display))
> -		return;
> -
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> @@ -678,9 +675,6 @@ void intel_vrr_transcoder_disable(const struct
> intel_crtc_state *crtc_state)
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!HAS_VRR(display))
> -		return;
> -

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> --
> 2.45.2

