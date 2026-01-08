Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4F8D010BB
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 06:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 083FA10E690;
	Thu,  8 Jan 2026 05:15:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqXhpXDw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA9510E690
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jan 2026 05:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767849306; x=1799385306;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oT/g7VlxQfTWWQQpqzqkL94C71DDLQuRcJtBnG9FO+c=;
 b=GqXhpXDwZ56kOYsgejYNQT1/zzVUARRfZqxwtYb3rptLAgLyXKOEbVPP
 q0CZp1WWfGMPWNBmKmgfJJYduZ6STWgTr15RL0JXPxsI4KEiLcgdgarM0
 5eyR4Us9Xw1kLy+w4oiMe9J76hFxwa5JzDPSxhtjgE6CvQ8KVEWj4YB8/
 +3dDbkVx/0C3O7ragby3Gd4u1EWRGrHBol80fd0/gwH2aavtgGfmt5Ayy
 TEvGRCKkeTR420sbHx3TjEH/+ZWnyWlK8XebArWyw1coHN7druGm/Xpi1
 rfzrwGqltZMZf4tzx3pjPvIiZpF8eOC6Gsj1S3dUY7eZXbb3/8MT1u+eU w==;
X-CSE-ConnectionGUID: 9eyagCk9TT6A/MjAV0BjEA==
X-CSE-MsgGUID: RaHV2xwQRIixyNt3xQX4HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="94689843"
X-IronPort-AV: E=Sophos;i="6.21,209,1763452800"; d="scan'208";a="94689843"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 21:15:05 -0800
X-CSE-ConnectionGUID: hCtZemcKTsGEF/GV4+srOg==
X-CSE-MsgGUID: Xy/gapUXTnyoHozX1bxxYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,209,1763452800"; d="scan'208";a="234261778"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 21:15:05 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 21:15:04 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 21:15:04 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 21:15:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wbAHRy611kOcTDz/8f4+pavlewu3JAiM4uHsll0TaCAcUWs05d3veHSrAgzKXr/0sSVRneRoLytcN72BP33bmOlIe2eVZmwI/OhUTd8yb+iTvzL3PS0ULtxzRSKrKYiMsa9LYwfkoO2ifsWwjqk5fMiwZ/4VbO59trkwZ8+Xi5FazZsWz5LCuytGaloe6qN0OUMmGGZ+cY7jUZeDg/wfQ+E2+RKV6kPCjcX+KTvuaj1OxtzUE5S2BC+/9muXyg6/ZIy+Yz+g3TzF4lsOH7pT/9lSVwB4pQPylj+ISENteOaKOtt4+VKmgaOtKHDX7BXgRtW+ZUKhL/fuGm8pm9ESTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lHClvFrcdZTLpaharh3c3fK/ZaaLqDuH4ZbZJluUZ4Y=;
 b=SjWokp2b9yCgY54rTrqQaOlNOuhiWwM5mCKgIaEvbZiramm3YzOmcbdMQ/CpGkVw4iqirwTPATE7lWzm3QZDVmwIPD1ZykwE36bX4tl4TuIZh+jEwVK2hPThbU0BjeWkMN5s3deqZV6O58J75FCzz57nLU8zglYEusPn5EhJYe0oMQ5diXB35c5fAFBLJGLKnokCjLyyiXqxiqqg2z/b0/djp3CLVfIWWg94AlfPr9hCYSv6f0GbVjignph+l/qDRYikYI30uDT9bQnuvcBxlzi1F1yuvTb5LnkFSI0oOUeZnFMjNUCYtwHIF8ldoIWnSx1ovPjVTU5ugjvPVUf/zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8987.namprd11.prod.outlook.com (2603:10b6:208:574::18)
 by PH8PR11MB6855.namprd11.prod.outlook.com (2603:10b6:510:22c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 05:14:59 +0000
Received: from IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::c011:ff94:944e:f96e]) by IA3PR11MB8987.namprd11.prod.outlook.com
 ([fe80::c011:ff94:944e:f96e%6]) with mapi id 15.20.9499.002; Thu, 8 Jan 2026
 05:14:59 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>
Subject: RE: [PATCH] mei: late_bind: fix struct intel_lb_component_ops
 kernel-doc
Thread-Topic: [PATCH] mei: late_bind: fix struct intel_lb_component_ops
 kernel-doc
Thread-Index: AQHcf+8d1YwA+Ft6UkOJonX3L2ZZprVHukcg
Date: Thu, 8 Jan 2026 05:14:59 +0000
Message-ID: <IA3PR11MB898786041078E6FC93C273CDD085A@IA3PR11MB8987.namprd11.prod.outlook.com>
References: <20260107160226.2381388-1-jani.nikula@intel.com>
In-Reply-To: <20260107160226.2381388-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8987:EE_|PH8PR11MB6855:EE_
x-ms-office365-filtering-correlation-id: a594c4d5-7bce-487b-a98c-08de4e74dee5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?bO91dv6UFeCnoJ3G7d/uCIIj+uKEV1YYUtvOM/Kaf4FWP48gjZ+jJA27i9T2?=
 =?us-ascii?Q?lDsrX4pEidhylHjpn1sdn7UxN2WEaqp85FsdZYd3bDt4io27nT56dY5L3nHw?=
 =?us-ascii?Q?wDy36fjpknDx2cF8IXbbLPrZIfQdZar5BoY5eHU6MKbN3hxuz+pJHxLpsAXL?=
 =?us-ascii?Q?NRXaZH1dAbqSyHRmiR7+Q5EfkuofuGml5Tezg6t4J655L5OOPglyW0BpBTYj?=
 =?us-ascii?Q?l14f3aRl0Xm8AmhVOZORZNxe1zAYjpdKvifHX4FXgYsErcz43VAsp9Hw1snw?=
 =?us-ascii?Q?5iCAsoHvj2I3LzcC13H/NdiKIExoIjiNot1rVqjm+XydABDyKRsKxAI85C59?=
 =?us-ascii?Q?r2k0Z3/Fdn0SDzUeRKEirJKYfXrXO/RkKz+UZiMpyT6ZdmyBTO0qo4cWyT2c?=
 =?us-ascii?Q?yKSkW5ncKNB/HdGIhDOrHwK+tOVbuMIIPExw1in9gnghYeuWCdDP/r6/zOVZ?=
 =?us-ascii?Q?OALS3A9Y45dacpxUbcKKL/6oPZkSsz5DM+OVbZi49mbXDSPo5gB8mKfdwa9G?=
 =?us-ascii?Q?7W00sPPPTyFlHMLqGEn74ZOld9gEK8hNtk/z801CJRPetOAdpr1NbtMtuvvc?=
 =?us-ascii?Q?FKyeB7D2xIuVZf0ISicqXytFTgPkE4g4Mwck2R6j9mIZnCBIwaxyTMMYs/Bk?=
 =?us-ascii?Q?j2ny4h1XA+/aGEt1uOXjomkt9SLbCTPQ+SzMDiGqoeOpngSKrCxoJbeZRR9X?=
 =?us-ascii?Q?ikp68XStMUItFjvzaQJ+KuCD3iFgJvNcM65mU4IObvKrqqnA7d3dbUok3fFP?=
 =?us-ascii?Q?GiLoIPIljo/qp+N29kdcFNXHBKvKSEEnAvHXsJrvxiAzRtAiGM5adPlU4ExA?=
 =?us-ascii?Q?cd5TiKwOBZ3uWl4AwIe8fprp3/Kf99UCUAS17cF1SB2vxRVBOfQnkW7efRnA?=
 =?us-ascii?Q?4/51RIt9JyEt9rNQ5rGxvKKQPwTmGqW6BwV8CL4NS1scXmHKPRQ6kClvKNzX?=
 =?us-ascii?Q?TdP+OvpuQmU/yJOX01t6uWvAxVDHvXyc3Y3HulbkWRrqutZU/zFpo9FvUmlV?=
 =?us-ascii?Q?kZ7ePr9U1roJCqgfzrZl+m+/Omlt5Z4uKPMThi0QYyKsTN/0fHWlvoOzPfdZ?=
 =?us-ascii?Q?yA46ZWRwEu7ukIRh4X+8yVAjMjiI6QrdhpD0k52f4ailqHEFBSOqxeJBYc+K?=
 =?us-ascii?Q?QpGfHEC6/Gvv59fzSrNeWJO7qGKqZUKiIrWAdaEtIUNeEpznxaGoIxdeB6nE?=
 =?us-ascii?Q?nXEpWLs8HTqGFchv92bCpb6nbQ5nkTKe95Ur1XTF7G34rCfgYAuLfs39voiO?=
 =?us-ascii?Q?5bxND6/hO1cKJDK1ZIFz3F8WpUAMAWQXM8n0H0cAnvKybdhFvRoxFMJLmz1F?=
 =?us-ascii?Q?wyefVpFYq5a5F8fJs8LEcF1BjLWKBvrW+VtGu29k3OqtXo+XQSWubMN4ts4k?=
 =?us-ascii?Q?mhAm9FQOYboEj/IK8VnVSJlLNWg5lAVAEQdmTxU1o6PhnX7Ad6vZ0WCtMesK?=
 =?us-ascii?Q?u6GgM2mbBPGVewrTp6faLum39jVK6+JAUG81ZlusfxwqSAeCtfjGCT2ZIHo4?=
 =?us-ascii?Q?/27SHfRKn0QTk7mZPjM0loDFyG1ovxdGIy5+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lfuskgUu2G6uwaZcEUdNPeYCEJkr98hvF44K0nf5Z+ReMOLFIgT7cl4JirHj?=
 =?us-ascii?Q?SXwBCA8wkChQpEoglB0q1wS+otBrtVo1LOFKPSPtSaYzpNFl97BUZZYqIHiQ?=
 =?us-ascii?Q?OoABt4o3LV1oCMhADcAA5ESa+i/oF6Nzan+BKSEhY5V676vCcr9ONXArXFpj?=
 =?us-ascii?Q?xt23j0j0HfJIkrv+ee8uc5Ew6+CvV2ZJklKRkzb0C1XiqNFwDNsqa5o24Ouw?=
 =?us-ascii?Q?m65AKN/G17MqIxyFYOWsLbwvg6doct4rC///35xYVCY/llf6w7geVyNwLOd2?=
 =?us-ascii?Q?iPEonPjKf0phmt2yitT4MdW5GMDJpuEOuKa1lJ7NlWZSiol+INo3K8XSA0Vo?=
 =?us-ascii?Q?dE9/WG2dlFAF0jwoi8CcBD6C9fewYpvlzN5UMgiMqWtKSQ1jBuKxYEQMEkWz?=
 =?us-ascii?Q?kB9W5siuLLa/j15zHY0RPtZGVFUc2uOWzAN4ggFbXSeDuKOIdOhCOBnpOB4H?=
 =?us-ascii?Q?JKv5wMLMbhZeStgS60OQLw53WKArjC2IRKHWRkU5Y8JGnIuHBljAID5WZbP+?=
 =?us-ascii?Q?vZ1GuclhZhqadVvD5IuUGSOYY8qLANEYwoW0KBfj6QM3GPAtCK42ROAg/q01?=
 =?us-ascii?Q?K8h+vTh18DQCFJ/yOV7Q8ccqGgYjFkOTUXhcqB6vzXYHB2mqjAgSGhHzgNfn?=
 =?us-ascii?Q?fVDvZVq9sUOrMe+Wj8lbrbDO10G2QZc/1Zf8meY6BMUo6mY5Vd/WN9Tp0zVv?=
 =?us-ascii?Q?LdzCjeM1jNFVKToMoXi4JKTlbo2Gm7N0sPSBdZp7NqixCrPp/UzUZ3716Nvy?=
 =?us-ascii?Q?XYGjVEBs0MrtRpFP0wmCUP+AOnpsdnpBkCHOhgCo2aDBMp58LXdCuOfR4qxZ?=
 =?us-ascii?Q?kXi4HtuGtZ62s73EM+4KHoIUT9CI5bd0hNACKgtuSYKHY/Ehi7+KvPr/ESKy?=
 =?us-ascii?Q?HEVJK5UGPV0Q5+bF+6aMIgWiSWkwatPby/Rlt/piW5bjnV2Ie8ZlnOJqUQyZ?=
 =?us-ascii?Q?Kyj+uWyLWO8SimFh9W62o4BhDrunAqF+Z/fYyzwD8c1oYFBzU6YGiR7rv8N3?=
 =?us-ascii?Q?Emll5h1g3LvKAJXRBjTcQsC2AzsB1W8KdxLl0nQBX2gqQHZ6q0qWKGvoEevk?=
 =?us-ascii?Q?U3zx7bntgL35b5QwmED1km+DWm6okXMQlxsqK9xHCvbNGyXFGDuLZyVM4Z7F?=
 =?us-ascii?Q?V5Y6S/V0gnRBXUq6932GOa9j5ow7b6sCwby66yBlGAAgxy7NNmvsh5SdLK7U?=
 =?us-ascii?Q?IZb9Mk2PpsX36Ljsjyjm+DV5Mibr8bnbJRKfFsaYqu1THypeux7kxpxqFhq9?=
 =?us-ascii?Q?QVrIxvNf8QJwu0+Ne55m/QU28NQMoioxJR7wW7E1s4mpvosphF5MdkIWrDBJ?=
 =?us-ascii?Q?q44XxN2WABBkkr13oIt75M/b9FUn5VgswJPpv+IjhgDOs9RUHIkg3jrzSFTX?=
 =?us-ascii?Q?qNzkgGKzaTZTefGsS7wyMxbGlzwuTwX125VG2zVZcU1hcnWkzob22cPHgKsI?=
 =?us-ascii?Q?Zt7y1z91y8l/44Ut2HDazYJfrwTmF+j9/nuESf6nh7iGVM4qoytRLCGo57Cf?=
 =?us-ascii?Q?Bo78bdlI37ibieFkvk8lNtYJ3ScQfz85cnfPNV89hNvMWoH7fz6OXYeUiPsd?=
 =?us-ascii?Q?ZUngEy+hRFNQ1jtJerq1zbL4vme5pJhCCRYFB4ndbElRdl2Vzbh1JFTvvUDP?=
 =?us-ascii?Q?pdZ91tV6KthEMdWbABfB7XHcoul2GZiV8I26uOnAe0+FWsqe//iWkdtunE4f?=
 =?us-ascii?Q?dHU3IFXnA4F9Rh2RkgIvetxqAxUcHoCQrwQOdvrwgudNJLoc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a594c4d5-7bce-487b-a98c-08de4e74dee5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 05:14:59.5884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2mFb/R56z6GNx2ME93YLFq3/qE2MI+1KywMslXfVAbCeIz4xVapIo3wMQkXyLjvVYuJ4Tkk1INrlRhmLk/wYYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6855
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, January 7, 2026 9:32 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Usyskin, Alexander
> <alexander.usyskin@intel.com>
> Subject: [PATCH] mei: late_bind: fix struct intel_lb_component_ops kernel=
-doc
>=20
> Fix kernel-doc warnings on struct intel_lb_component_ops:
>=20
> Warning: include/drm/intel/intel_lb_mei_interface.h:55 Incorrect use of
>   kernel-doc format: * push_payload - Sends a payload to the
>   authentication firmware
>=20
> And a bunch more. There isn't really support for documenting function poi=
nter
> struct members in kernel-doc, but at least reference the member properly.
>=20
> Fixes: 741eeabb7c78 ("mei: late_bind: add late binding component driver")
> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  include/drm/intel/intel_lb_mei_interface.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/drm/intel/intel_lb_mei_interface.h
> b/include/drm/intel/intel_lb_mei_interface.h
> index d65be2cba2ab..0850738a30fc 100644
> --- a/include/drm/intel/intel_lb_mei_interface.h
> +++ b/include/drm/intel/intel_lb_mei_interface.h
> @@ -53,7 +53,8 @@ enum intel_lb_status {
>   */
>  struct intel_lb_component_ops {
>  	/**
> -	 * push_payload - Sends a payload to the authentication firmware
> +	 * @push_payload: Sends a payload to the authentication firmware
> +	 *
LGTM
Reviewed-by: Nitin Gote <nitin.r.gote@intel.com>

>  	 * @dev: Device struct corresponding to the mei device
>  	 * @type: Payload type (see &enum intel_lb_type)
>  	 * @flags: Payload flags bitmap (e.g. %INTEL_LB_FLAGS_IS_PERSISTENT)
> --
> 2.47.3

