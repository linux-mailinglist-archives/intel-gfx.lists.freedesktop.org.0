Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F1A94131A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 15:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95E610E536;
	Tue, 30 Jul 2024 13:29:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1QOYPh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C43910E430
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 13:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722346180; x=1753882180;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K9smfd9poHvp8jrN94bmbklCFLKQ7liqH8o9CSMartY=;
 b=Q1QOYPh+Z4unazD2C+bGkjXC+2wK0lcuqDeonqReQ6+1ZiLdWkLAf7N1
 DCLLuiAu3dBmRYU14WGTk2Osi671UKtmOVCsWhPVLP3FUz4DCEyI56Cdf
 kZ2OmAxrDkM0ECSSxgbn+06yfAhsX8e2o8V+eqZjIiQK9W22FmmQfjJYY
 6l07osMorSiV4QS+gZW2wIAxd+vyCcyj1/3/rYJnDEKuXfnYh9mgJ6JqD
 cw87chzBdEdeNKq/JRKZXCgxQeOoCcqYu06upaLQ+rZtejgb5Uo5IRvPn
 7NjpHrRJ4+8OpfHecurW3nhhHZ0BEJ/LCC94kXxocRv+rkwX1jFeFnp1Y w==;
X-CSE-ConnectionGUID: CUaqcHu/QReGk4te3yZmLA==
X-CSE-MsgGUID: 3PYrSoMfTkqjs6DykN7uzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="31568531"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="31568531"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 06:29:40 -0700
X-CSE-ConnectionGUID: sEm2EaLPRf+nK6M37+rmxg==
X-CSE-MsgGUID: q4Z0dV+gTkOcQW47EfvKbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54257204"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 06:29:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 06:29:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 06:29:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 06:29:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 06:29:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lrMkqvSw3H9C83nupmnCFdMT5/5+paqBbETvuGQdBYvwGHiJ5+bmfZpPYcmGlTUazLCmfaKbIaOop5RMerkFSRU/nTKBzonudQVeuQkj/ZORgW5uaP6CmwzVCofaUYJNxKsQAeSAHiA1A727Yj8o23A/woIso9lAP+yQ9pWXSTFpgaVBey5X4XIZwghe8O55PfekorgwiRN2KuPQKjzknHfhTUPpj3VbDYza8CEDKwGkENdFOuqjEgQN/6W1jUZXS9251XeV5haWtnouLtS6xAzF/GZ2/JB7wkYVmVZZJ+DqImrJ/CksmFDL089k9DhWe+WeK7rxNndeUx4/DbYEFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qctw2OmmcEcyzO2iRah0jncn3YKMv7l/CYPWNYyH91M=;
 b=imJJPs59U+Osomkf4x7WHOrgw967AxIfgtqKIzLg7FHIGKqDfXAiJ96AldkG4MpQw1BaE6rh3ZYH0qbu1nISqYdTQ53nRei2dtrOXxq9mJoFZjPCB58J7/7Nj/5usLZ4c8JyeYsAHgQ6KNvjOrriqgm6LY0jJW7HvDDsmLM3mvg3Qy8aw3uBfBiqLpJCJheJBDGRqy+wH1KM3DC0c2ccc2CfxPu4lZXXhlA4l4kU/kTGMbtrSRQlCtl16HGaeOVBuk3QC9jeizfiVkXcOaozF+tN0bWeeCloooRpvCrcX4HFP/VyV2l/EC61PkdjSud3WJpPq0/8++PFCaLdeRC1RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by MW4PR11MB8289.namprd11.prod.outlook.com (2603:10b6:303:1e8::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 13:29:35 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%6]) with mapi id 15.20.7807.026; Tue, 30 Jul 2024
 13:29:35 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Upadhyay, Tejas" <tejas.upadhyay@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
CC: "Wilson, Chris P" <chris.p.wilson@intel.com>
Subject: RE: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Topic: [PATCH v2] drm/i915: Add Wa_14019789679
Thread-Index: AQHa4lMDFEFPvcaTzEKQNcOCXKtIlLIO49SAgABf8+A=
Date: Tue, 30 Jul 2024 13:29:34 +0000
Message-ID: <SJ0PR11MB586728FF52EA3874F7895BE3D0B02@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20240730075220.3087411-1-nitin.r.gote@intel.com>
 <87jzh3xr28.fsf@intel.com>
In-Reply-To: <87jzh3xr28.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|MW4PR11MB8289:EE_
x-ms-office365-filtering-correlation-id: d35dbf15-a82b-415d-bd17-08dcb09ba725
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?JCxEbEF2Q8KggmIsmFcieOiAosbDZX4KdE22vhRLHWwBSbfW5Aa9K3vkq+8T?=
 =?us-ascii?Q?y8aWt+Cu8B7cEPAodGlMHHEzM2QeEdE6mYSIGMh53SwWvV4seCrsnKW10wmH?=
 =?us-ascii?Q?56chQFYuDkQJhNM2TI8f+rVS6UmZiimMygP5KLigLbkxZL4FY52qw5Qz87Cp?=
 =?us-ascii?Q?xPHvaoNtsHQLmE/SgIoOHIR3jt4MoETiK89XqEJ7L+bWHzcYtga3NbdcdKNu?=
 =?us-ascii?Q?SvaTCuMNlpKi2D191+7vyIifYpNxpLcsGL7VmseNqlCSPOgArNgIzWTfsiQN?=
 =?us-ascii?Q?NR3IED5GVoajGHxzGoDl4A/9YIAngNiY0rqSMl1o2FY0FuVUpAZqDvSxSNUH?=
 =?us-ascii?Q?b+vrmiKXLLD+coD+PooYCds+yzzdUfbSAwr1tGrid9056wfcgEAODDSBuF4L?=
 =?us-ascii?Q?MpIOcTyWUAoAYa96TUKWezdUArYkbL7E4dZIpfqHKW3yRZrV04l7jjBWJbDK?=
 =?us-ascii?Q?1VpQSNociyXIL0Ar4yL8yq73MqvrqnmSVM0ajvMO0N4pXtgFb4zi4a1Mj/mN?=
 =?us-ascii?Q?zsJSlAvSDYmTas3tfm3yDPbRWq+Cw/hoMb1E8xnkevekBlDkFCkF3oSM+IGR?=
 =?us-ascii?Q?cBVS0zHrqiLoA4EoHZMh44RIEeejZFFTcF0Sg2a6Wdyl9VEhr93QESkPboxg?=
 =?us-ascii?Q?zaSjSZgU0VUTbFhy/A9zauRaGNSdpgScTLUqheDB2fXM/6Hf+bfug3qTyASg?=
 =?us-ascii?Q?mtrbjxxC3Uguy+vcbGvMqE6kM7AmUcqitydxQ+ULGnYNtRpzJRVO5MX3HNS1?=
 =?us-ascii?Q?c8EoeXYZBc7vpWJtR2va5kO529qzkGVecOHNxu8SOOHiE8y9EZAq4R3dPe8j?=
 =?us-ascii?Q?n7PWC1jtwAbSd3Z3ZP7SIIDb8uIkbMAcVBMQIEg1bLLQIpMXHK/+vM0W5MXo?=
 =?us-ascii?Q?wkvZylVdK+vV3mnhGO5MiF5guzl6WqesaZCZAU3smfNufB57B+ZaRBC9sHOM?=
 =?us-ascii?Q?WOSHkp4bGlss4ZHYJPQTtjNs7sO5lNfDucYEzIX9o9DqJJHZQI+ZMqSRpYjt?=
 =?us-ascii?Q?Snow+GcI4u5uHVy+sQN5E0qWk6AvndTDdsiv67ZaaOHPWnwXtuVXG7k7agQK?=
 =?us-ascii?Q?y0KKFzo+FpiF2R/YflxYpuY1KYT+U++CRwxebpeonG3ji2r3BWs3HBwID7Tq?=
 =?us-ascii?Q?f90W/cl9sc1OAggYZLmnOAYKs1U7Hox6ZyKJnQNSUiHWn3ONdbHosk6apgwh?=
 =?us-ascii?Q?kJI88/ZPtHhuGjOEgQy9uCEUtCLEI2Tbe2jblDySm66oYduu51XJtaWVSMiP?=
 =?us-ascii?Q?WayMHbunLowFSaLWjQvkiAqqQr2xAmwtQu4lvwQLmdQRl6ZndNaolNv8frhr?=
 =?us-ascii?Q?ssnlgdjUpuIpuQ1/+3y81yF1tIROpuxr2QoWmiPHdHUa/1ClVMtNU/aUT3xl?=
 =?us-ascii?Q?JfgqJuGFb+yMc8rdughANNxMY1mgJDAQp1asuJ0L18+2Q3fYiw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T5PFuoTOPa5uKXY4fhzzPLp7cv4U2qxjwtmKG454CP20FRbcCA9duD+HGzrQ?=
 =?us-ascii?Q?ErvKkjRYzvJbedeWjW5foCuzT/gXVW53FYyogasLpoHqsWZBfRfcSIxHJGuc?=
 =?us-ascii?Q?GcXV566gASVmL2nI0DT0Hb/5i+HGJpy3LWuW1aOfMC2d9Eo/pmfK9HOu5GnZ?=
 =?us-ascii?Q?SmnC7WTkYHXt0sK0xLmEhXCsepcqdrrm57v2Sg3jYrsjG1J44Y6YQAnS+9/E?=
 =?us-ascii?Q?ITabDBphOW8D8xeQoj3GNESKzIQ0PrQhN5yjdmZfSyjeZNrczar7qfH/5jxx?=
 =?us-ascii?Q?KaTjfyE3JQNx5TZiwybHP6J+j9QGFTbmVtpm/sAgRYy38ktsDcH64TYem12C?=
 =?us-ascii?Q?tcpt0MD7nlh47XGdoYhx/+jqmqs03R4z1+qTVVeGydmJHrw5TnCkKs3T8bqK?=
 =?us-ascii?Q?ihXz/vow+XrcgSpMj/pA/1qkIwIKy8LviZx3vFoKH/hCb8rgsR4HQAG1cCCa?=
 =?us-ascii?Q?G/qi3I/WLRVAh8ibq6LQAjV1ugDy6uNG8musrmfsax4STW4qVW5QwLISKQJq?=
 =?us-ascii?Q?vAVzrBQqZ24MM8TqGAoIJ1CppUxBPPQrodrlE1CQG9rf29j8hcbr63oqucyw?=
 =?us-ascii?Q?8y+EiimLkKerVVhzfeJUFiyy9RwXg5qO+/aM6w5kYyqU4a7x6Hnl504dGnc/?=
 =?us-ascii?Q?SUp3EOZwT064jp/j1kyf0Ky/kyWh+macfrxX5gxxeZJE9sM3w7eOmzAnmUkn?=
 =?us-ascii?Q?qPgo5wsQuf7OOc3Q0IY8w2B6+JfYz0YXLjBF0oOKvzCQUl4hqnSCWDXeWFt2?=
 =?us-ascii?Q?oLhDUuP2J8u3PRDLPakVhmUndXhmJfk24qfAFxe2RD07oWJe3HaS024V1NbJ?=
 =?us-ascii?Q?xBN4FMyR1GxXKpXMIyNVLhD4AHp3Rd/HQ+KJshGBM9bT7jmaP6n8PlYLVhtm?=
 =?us-ascii?Q?YRpHahAZoElWBxvHOpk+7AT0w0q5bgoW1/LvGV4fLVSBTz54PaqDvs6shfFK?=
 =?us-ascii?Q?yEht4YiH0RnH0HdOX1pc0iuhBesn8mj/0fGeaBboIpjfzPC4WJQZ0PF1VTh0?=
 =?us-ascii?Q?HhgLlVDKI4x13tp/L+3zXJ8RGRl+TJnNAEqc1VFZFgTOOhfsyPN6RbMbdlFj?=
 =?us-ascii?Q?jeCLp9wyhfU+rWfsvMHkN9VlUOpTv7LeCM5BF6wmEpQKI5SYuL/YBghdNdEo?=
 =?us-ascii?Q?6bknKwAb9jHg6g6WAZNtLhpQvMH4PiXzKQr9pvdI4TIxAH/Fig+xsO8UzrjJ?=
 =?us-ascii?Q?Vm/ZY5DlH+gESn0xL8KIAChB02sguZHIerZeomk8a5tOLNeIbywHQPQNhB+y?=
 =?us-ascii?Q?jgdCnCpl3/YgwmZ8RUmcwamldFqZGavZSBG70LaHiHqBqzyZTgbphvXu321i?=
 =?us-ascii?Q?O4K0xt4wg2vMuod1bE1SM6OzhtkbFeB3YfLI+hg6Np2HbwuByVJm0iMLqc0q?=
 =?us-ascii?Q?QqgaOo1i9m0yxrKtuA0Z450cQDRlqY9H8oVR59JxKIt2jjs4evcdkj5Oxc0X?=
 =?us-ascii?Q?+uIY8hy0tRJteaQXO/Vx4XAxhJLDq6YV/TQUuK2Eh4zENR5Vm24OIu3d5/9x?=
 =?us-ascii?Q?NFgN5kzucRwWj7V8GkYGf6XPuz6cAFFXiOgCGKqlIWlvMqnAc1PM8HbWwH+c?=
 =?us-ascii?Q?4EqqHh0Uz55Y7IfmAawirneZ9NYfM9ar4QNscWAr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d35dbf15-a82b-415d-bd17-08dcb09ba725
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 13:29:35.0019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dqBVQMqSTt6VGOULdfzimoiRmfwdU1MiZTzUyrhLYfD598s1Lm0AgUeK+7BMFsFhbGxfxyoOF66YHccfX1W6Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8289
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

Hi,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, July 30, 2024 1:14 PM
> To: Gote, Nitin R <nitin.r.gote@intel.com>; intel-gfx@lists.freedesktop.o=
rg;
> Upadhyay, Tejas <tejas.upadhyay@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Cc: Shyti, Andi <andi.shyti@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Gote, Nitin R <nitin.r.gote@intel.com>
> Subject: Re: [PATCH v2] drm/i915: Add Wa_14019789679
>=20
> On Tue, 30 Jul 2024, Nitin Gote <nitin.r.gote@intel.com> wrote:
> > Wa_14019789679 implementation for MTL, ARL and DG2.
> >
> > v2: Corrected condition
> >
> > Bspec: 47083
> >
> > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
> > drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
> >  2 files changed, 14 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > index 2bd8d98d2110..c143d8133a28 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> > @@ -220,6 +220,7 @@
> >  #define GFX_OP_DESTBUFFER_INFO
> ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
> >  #define GFX_OP_DRAWRECT_INFO
> ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
> >  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> > +#define CMD_3DSTATE_MESH_CONTROL
> > +((0x3<<29)|(0x3<<27)|(0x0<<24)|(0x77<<16)|(0x3))
> >
> >  #define XY_CTRL_SURF_INSTR_SIZE		5
> >  #define MI_FLUSH_DW_SIZE		3
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 09a287c1aedd..cbc2003886d5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
> >  	if (ret)
> >  		return ret;
> >
> > -	cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> > +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> > +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||
> > +IS_DG2(rq->i915))
>=20
> Please use checkpatch and get the indentation right.
>=20
> BR,
> Jani.

Thank you for review. I will take care indentation in v3 version.

- Nitin

>=20
> > +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 4));
> > +	else
> > +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> > +
> >  	if (IS_ERR(cs))
> >  		return PTR_ERR(cs);
> >
> > @@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct
> i915_request *rq)
> >  	}
> >  	*cs++ =3D MI_NOOP;
> >
> > +	/* Wa_14019789679 */
> > +	if ((GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) &&
> > +			GRAPHICS_VER_FULL(rq->i915) <=3D IP_VER(12, 74)) ||
> IS_DG2(rq->i915)) {
> > +		*cs++ =3D CMD_3DSTATE_MESH_CONTROL;
> > +		*cs++ =3D MI_NOOP;
> > +	}
> > +
> >  	intel_uncore_forcewake_put__locked(uncore, fw);
> >  	spin_unlock(&uncore->lock);
> >  	intel_gt_mcr_unlock(wal->gt, flags);
>=20
> --
> Jani Nikula, Intel
