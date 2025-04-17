Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78041A914DB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 09:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5BFB10E181;
	Thu, 17 Apr 2025 07:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxrZXYPz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F50E10E181;
 Thu, 17 Apr 2025 07:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744874131; x=1776410131;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FQAw2eSMOranwL1fckGT3xCDtpjF1EB3v/1D0b7ZTmo=;
 b=NxrZXYPzNjZkOsxfhkrdxwVXCHnN5GK4if0TIyanKhGQYccEHoMyrrZv
 GuzGo/EpfvTpoDXd7ZyLV5MBZ20uHSuG6Pv4pBGpnnHFrjOKuWXl/62cZ
 veJesGF6jn6F7OgvI4hSEZO7hITR91qD06QGjn20/pZkKGLOx2CKCXoJb
 /P6L7lSw1/xJ8ce+5ykFsIxz/ZkoWQhUuJM6pm2tQS4fFPYlgU/xJ5ZMT
 ThQdYr9yRdmR414OgeSnrbK7SpWAVNa+t7iVyiZBk/38/QZ9jsM9tLNbX
 bjh999idyqW4/L0n3TKdvT2/vQTn9zNcUkuNMUqznL4qDSJ6mjjCQLtFv g==;
X-CSE-ConnectionGUID: 5JVs+YiPTbyahKJVrPmRsg==
X-CSE-MsgGUID: HA6ZzNWTRpymKzTM7VQCeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46580441"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="46580441"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 00:15:27 -0700
X-CSE-ConnectionGUID: ubKW47YDTmqsksrSXyTdpQ==
X-CSE-MsgGUID: gK5GLkErTL6YMsoxEA6Inw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="131252068"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 00:15:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 17 Apr 2025 00:15:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 17 Apr 2025 00:15:26 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 17 Apr 2025 00:15:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PveKJdD9nS/ej9ZSGFrUV6W6H5CjayfvwQJ9312OjUyPL/fG8ZIeYW0+1kn/wMnBj1XMxxyv/3Ds5aIddIlxxzhwF6sJypNmD7mGsxFgzCeYlrYu9BJ11Nz8gAwUkO2K9R2qSvV376gKaRhULKOUSLpC6EmqQpCpeAbs1QMLqBKNtAUAjldAfO7VhOAZUObvFgRPQe8lTsTKTNYhwiwQJNcIL/YhQ/ekx5ysBozBr910UWdoHk+7P6UiYY1FO/BUwmq3/PxqNtns8BS2N0l2ytrQCmqp67ujsFtL7jSydILAMe+uZhtuzi8c8AphXB5/AUIWse0KCZOqJa3lxz3DBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nx6FX5l2qT5NUtEwck2eoj2KCmT77JVCAdkFGdOP7/Q=;
 b=dG2hI8OoBhVqiCWFWcYEJ70/vOwcZP/ZNj/yShmWiswO3hA7mMGjTqyBGwrHT9hQR0Z7EWDYojVno6Et7jsPGbEs8AoDAD9m4TAMRslUgtQtoYGqP0Z7avJgZssq9/EoZ2x/7INVuCPclRtjCPULezpH95nXz427rYIokabs/R2Zoc8O42KFAcuuZQKRCnWuzQhYpUqyiZaT2z42umFZiDyvh8Z0Nb+cuXaNz6VlxxgYjYeC5uErs+LM2QFemMMvJIry7zUKzBhzkr+CB1myFqsqI56iktcZbuNl0nYqk4JtiDi8PF7yspooqAQ8eVwwXUKLho4Xi0KP8HR9Jbi6Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CO1PR11MB4770.namprd11.prod.outlook.com (2603:10b6:303:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Thu, 17 Apr
 2025 07:14:51 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8632.030; Thu, 17 Apr 2025
 07:14:50 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 00/14] drm/i915/display: final (?!) mass conversions to
 struct intel_display
Thread-Topic: [PATCH 00/14] drm/i915/display: final (?!) mass conversions to
 struct intel_display
Thread-Index: AQHbqXvVpns1l5ahJk+crB/IUO5rWbOnfbSA
Date: Thu, 17 Apr 2025 07:14:50 +0000
Message-ID: <SJ1PR11MB6129CC87485F5CFA1650FED6B9BC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CO1PR11MB4770:EE_
x-ms-office365-filtering-correlation-id: f856b593-7c4b-4de7-7b32-08dd7d7f8b40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vimRMDI5cQjxzZhG1vQ+EHmb3l4vxg4fmw7eD+Bi/e4g98dE/GY+Uy7N4oxH?=
 =?us-ascii?Q?kEGLhimlnwu49Xzi1X7jxUEb/O7+li7e8puPaJ+Hl36ZQNajBEMbA2GQ+FkU?=
 =?us-ascii?Q?SnruElTXJZoWstYTK9hM7YdRtGHzddE2MK1r6+MwAG7cpHEbKLYf1hYf9fjE?=
 =?us-ascii?Q?JvDByFFx6ZHdlFCxo1psyT9d1jjs3fEiHLCtYLDUJ5dvocuu71IqHwUjX0jG?=
 =?us-ascii?Q?cy0171PtlLnXEi2nSCl6b1XrYhUdNHkN37Sv1K0qxZd1dgY7+DsqBnU9UeqP?=
 =?us-ascii?Q?T1ZmKfEU11EPUd0QMB5WYiyfMGXnE36nRL9p/le7+9EEY6B3k4PQtWVkxXXv?=
 =?us-ascii?Q?IH1bKCltdvj3+MXETE9HftGAPlPsewBT8FEI0RtGjOH2iaKW1fgECpdRbBg4?=
 =?us-ascii?Q?qjqTl5EuezBLvhZnWIeA0MuxAXa9eT4Iqv8OPbFgFhADk+QTWJXyGiDBoULo?=
 =?us-ascii?Q?m+OHMBySclAaIrQi4T7nKaWBibI1siqLn1ehRmCE2ke1qZ1wTq9HxfuWe4GJ?=
 =?us-ascii?Q?ksL/AdJibJeO+Fihm2PZCJAvIolnLGbBXX6LeF9TYd1xpD830ueeOy5o9H0n?=
 =?us-ascii?Q?PNSA8qgjm4tqjPws7Of3sNAuegEKCZkl4AMnWmEIietCVGNxm2arBO2rLsVw?=
 =?us-ascii?Q?iDK4+7m9+eEP0nU9z100Q9GKLWlzl9zpJ+qJLdQTKEHeMTEIdwymaejo5N/u?=
 =?us-ascii?Q?kqpcbKHzFPoC9w6TFteFBDjgZFHhRJ6G1JZNEXTA2MCbw2AY5SEfXEpjx/f6?=
 =?us-ascii?Q?uTrxtcFFCfR7Z6ot3kuoOa0RI/poBXWQGoQpykGDVxVMiC8zjg5+oU/t6RFZ?=
 =?us-ascii?Q?vd552IieG7YU9rYOz8Fy8lgejjNgmbzm32XZxByLLEra7hVmWFNM4rjnl/EG?=
 =?us-ascii?Q?Jjf3MTOUeZli95FBspiDeROcF3hCG7QhQ0XDRO+VTbnTrk+ZkF0u9A8qED4z?=
 =?us-ascii?Q?f4utTHUt+js3vOcAne8kPf0Kf5VkC/quXkUC5VdJc4AnV1mi7DtU5zvYgqGF?=
 =?us-ascii?Q?nGP60zGkYMkuwp09Wy8aAxqrZKmwHTJu1GVOn72MZAF+snO+rACy3vBVK2kT?=
 =?us-ascii?Q?pgFuXxv7aRW/AEKOaYt6kfj8HQS3qWkwN811KvzSPvtnY32DLMtUPWuCdGRS?=
 =?us-ascii?Q?s5OM8PTX31fnBQ8Yjng32dM+Xka/HBxCrclXnlMF8OJWE4xBO/tnjziFSTph?=
 =?us-ascii?Q?lpGeOPniY8LDYGj3LfXjTZviMQFEUm4g9LIFmPmK1hgQJnwyetqITqTIXZ0G?=
 =?us-ascii?Q?9q0/GuJMfLamqwp4oHtdZfi8qr3RE8X8ote5/Tlv5gQbwAdU9Ew1pCfn3yg3?=
 =?us-ascii?Q?AYGXCSQow6l6ovWSTnqYyIV1Mj8snrGnzIoL8+FISlj7raQpNIt4a4q1zckU?=
 =?us-ascii?Q?twLFFs7P/GIT9S7Zu8sGm+0qPBxhcrOeHNFcQSMkxf1pAPDoe7usxK3OETHi?=
 =?us-ascii?Q?D5Mtbr+aQMHSpg6T8a5x2mxGUPuQnhY1eHtvs4QfqDveAKpAjvdw0Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i1cEHXPTScb6QJjX1xHl31GBooNe67wDJmmu3ZAbrm2MS2BJsgqkKEDmbNay?=
 =?us-ascii?Q?7l2NBhfuobgU19VBRcuHw3gSmSevGhN01yJtFCtI+moaTDMqGZKyE6khWpUr?=
 =?us-ascii?Q?cgs6jp+N+zaGlnfV4QeqkmRQWqgYv592fNznjrmRBQuYasZEo5UQH2FYvWR8?=
 =?us-ascii?Q?9dZecymQ/obl/ZNrEnC3OELlm7Ov9EeKktQ3QEgkBss2/EzusXa4zc55MBBm?=
 =?us-ascii?Q?3k5zWUw6GOGlu4ljr9Xu+1aaEXj5d5mCeC5Kpspz0e/PI3IPc5NmYuPVxTB5?=
 =?us-ascii?Q?jHXARMEhsYbNzgfw/wT4xw6MfcNQn/nhwoI3i61V9Ca7bskxLtlIEbVF4LO/?=
 =?us-ascii?Q?2ny+pw/SpTsW2TxX5AStbgnTI+NK4ipxADcxzW7ofiTLdutWvADk2kYzHjvP?=
 =?us-ascii?Q?fp2F7R/DbJ4YJQefOWK/y3qcXMOWLKrPp1sIpsKPX+KsyXPzWLb4hQAVg7yM?=
 =?us-ascii?Q?/iWLX2NuELL48M6TxpF9/p3+T6K4VjGHPnjUWw/6VVDaQizQdLVajLrMa2Fl?=
 =?us-ascii?Q?bgr5Ga+fz3jy4/jLblqWeyoOW++FbAFEurXZpyaKUFdxbMYtZRxBcJ/kZk17?=
 =?us-ascii?Q?zF1Vffohh1Lz5KrgdgtQ+EUzlFF9c0K2SjwcsCYl4cMKqj6sZ9BaAyhNL3Vk?=
 =?us-ascii?Q?BL4JG4SiuNm+bf8s4HJwChP/4yxMQFOhPz9BXpSxhExNkCWzHpnW2qK9kK0Y?=
 =?us-ascii?Q?NErOAQbOSwiKpVz6RCn31WjafNzAEAN+ldMqD3DcQHHTe99FSKDv6HM+fLRj?=
 =?us-ascii?Q?/a3Dh+lS2k7kDRcibby+AsB/YsFfRGfv7+SYCB+8pHcdyHnqFW2Dk3LT9OcF?=
 =?us-ascii?Q?RNy/pKynkR9B1jsJztqat+Nim3wrgTUDYvBOaS8k2yUz+E7ZS525/JDP8Jxg?=
 =?us-ascii?Q?9eQb9iamVAJ2ULAGIGC+BYyy2KiR/NY1qWNgAIaP8mtiQstJZ9t8q5Uvjy0A?=
 =?us-ascii?Q?P/dVJZ/4z94uS/rXUqJF9R9+9BrPoWlgqz9BY67YdY7UIEy9urnUOr/LVgrn?=
 =?us-ascii?Q?Zhoe5AIqUFnyghc01WqMsYudRS1mpxeTVKk1c3gTyLDXn2vfQyHT4b71e+7W?=
 =?us-ascii?Q?RPVlvHbdEr2DFtC0VM/nci0kmQrcclnQG1IFugSIjqTIrQ41gjsVVK0rP+Io?=
 =?us-ascii?Q?9ESdr5H3VE+7PCJugovhOLaVzs3/dwrp9BbwuaJa13uQMHbOyB/9bZkW1wJ5?=
 =?us-ascii?Q?5tTbLUQyNJZcQfwCv8HCJTG6MDk1zx38hzyPykrdUWLGK9KljNQWD416Y7lT?=
 =?us-ascii?Q?0xoIFl4WYqVtIWq8NNNc4e8c1eXRkSqhqP4OLyq0Edo9u88kZKJ+VduZW8fO?=
 =?us-ascii?Q?H8n1eZ0uB9om8TfxUi1t/xFTJz4RRU93ZOyt9G8sx1XL01PKU38DLXkYQATB?=
 =?us-ascii?Q?93zOr2hQTvwnS+w8KNQHjIxsIRKgUa9S08wuL8tp9+AHtgqq57+iqONEFU8x?=
 =?us-ascii?Q?7CmwvMCxakIKr1cDCtWLrvf+Rs2agOluitviMSmNEoG7YlgMMuc/0zc+sHrQ?=
 =?us-ascii?Q?/QkZhhuuU+WgvWq3d/vptZQBaiLcaYgW02yBJ+2FgDFn732mDL5O4ZaJ5chP?=
 =?us-ascii?Q?8NC8rb77/cYAB6T2wrmPDAv32OkDnSfM2k3WZjyez+iykEPu556/Q5fYwTOT?=
 =?us-ascii?Q?QA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f856b593-7c4b-4de7-7b32-08dd7d7f8b40
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2025 07:14:50.6995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6EfF4RHV/au39JSONblTxvbb06mXpXIS3zrEj+o5U3Sh+JgKJ2gFiXUP8rKq0OD2j+tvryoTVLRPIkFX5YjVlW7NMgU8oQLeSLvkeF2OFK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4770
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

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, April 9, 2025 11:48 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 00/14] drm/i915/display: final (?!) mass conversions to s=
truct
> intel_display
>=20
> With this, we are approaching the end of mass conversions to struct
> intel_display. There are still plenty of drm_i915_private uses left, of c=
ourse,
> but the straightforward conversions of entire files are done. And we no l=
onger
> use any of the IS_*() platform checks.
>=20
> BR,
> Jani.
>=20
> Jani Nikula (14):
>   drm/i915/fb: convert intel_fbdev.[ch] and intel_fbdev_fb.[ch] to
>     struct intel_display
>   drm/i915/display: convert intel_modeset_setup.[ch] to struct
>     intel_display
>   drm/i915/display: convert intel_modeset_verify.c to struct
>     intel_display
>   drm/i915/sprite: convert intel_sprite_uapi.c to struct intel_display
>   drm/i915/frontbuffer: convert intel_frontbuffer.[ch] to struct
>     intel_display
>   drm/i915/crt: switch to display->platform based platform detection
>   drm/i915/dmc: switch to display->platform based platform detection
>   drm/i915/dp-aux: switch to display->platform based platform detection
>   drm/i915/dpio: switch to display->platform based platform detection
>   drm/i915/gmbus: switch to display->platform based platform detection
>   drm/i915/hdmi: switch to display->platform based platform detection
>   drm/i915/display: switch to display->platform.dgfx from IS_DGFX()
>   drm/i915/audio: don't set LPE audio irq chip data, it's unused
>   drm/xe/compat: clean up unused platform check macros
>=20
>  drivers/gpu/drm/i915/display/intel_bios.c     |   2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |  13 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
>  .../drm/i915/display/intel_display_driver.c   |   9 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  45 ++--
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   9 +-
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |   4 +-
>  drivers/gpu/drm/i915/display/intel_fb.c       |   4 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  74 ++++---
>  drivers/gpu/drm/i915/display/intel_fbdev.h    |   6 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  13 +-
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.h |   4 +-
>  .../gpu/drm/i915/display/intel_frontbuffer.c  |  60 +++---
>  .../gpu/drm/i915/display/intel_frontbuffer.h  |   8 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  22 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  44 ++--
>  .../gpu/drm/i915/display/intel_lpe_audio.c    |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    | 192 +++++++++---------
>  .../drm/i915/display/intel_modeset_setup.h    |   4 +-
>  .../drm/i915/display/intel_modeset_verify.c   |  17 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  |   6 +-
>  .../drm/i915/display/intel_plane_initial.c    |   8 +-
>  .../gpu/drm/i915/display/intel_sprite_uapi.c  |  17 +-
> .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  36 +---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   |   6 +-
>  25 files changed, 269 insertions(+), 343 deletions(-)
>=20
> --
> 2.39.5

