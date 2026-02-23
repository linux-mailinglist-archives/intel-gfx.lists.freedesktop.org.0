Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDK8GdxknGkoFgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 15:31:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C290B178068
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 15:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1624D10E3E0;
	Mon, 23 Feb 2026 14:31:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLKn8M9Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0482810E3E0;
 Mon, 23 Feb 2026 14:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771857113; x=1803393113;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=etboKqH13HFRan7jnqxaVr4r+yynwFe1xSKy5h5MLLw=;
 b=TLKn8M9QMBYJqw7ytiI/0O0w1TZddT6fXUMDps0vjnUQiKY7KlB0LPs4
 uHdErNMVCpwM5Ia0WuzzNLchxQkiXLOwebSJirT5iEiszfOfDCNDaNJGT
 zXT9mwGq+tlTOZc9vD06NkyTdL1rlDWHuYT5PB+Uhi1eKn3rWExUdxfVg
 QFNIX5QM2RLeWkG6GBXpUB19J1Y2Ru1t5jnwm0fkBnVR3jNZwPefTSl1e
 wLddjWP89hIK+4zNOhEVxjjt4YsBAsJeUhAHPuTn+o651vKdgwbLUHdJw
 XJ0TrJCGLY5FF0ht5/c5wmAtHTuaSDBuoiHiXZ5sK7v4kUX6tlCnaGm2N A==;
X-CSE-ConnectionGUID: vevJ4TetR/OEXdIIPi9lvA==
X-CSE-MsgGUID: XTRlbOJDQtWudY+N8bV4FA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="76682651"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="76682651"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 06:31:53 -0800
X-CSE-ConnectionGUID: LdmWznVvTKKdWDQ2HeVZqA==
X-CSE-MsgGUID: 3QwbN4s3QPm12P9tP++aFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="219695112"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 06:31:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 06:31:35 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 06:31:35 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 06:31:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iHICmlfU5UuiMaWsPZ4zFNDlgfz9Nr7Ywl0TIoLeLc7G1g+PzYchGCBJIoZt+Zv+3GFty7fBrBV9zo9FzwG34+992AgZ1GjLNR8NExs7fOxyuV0kuzr2Xlq/RD1aIYIMwmvrIy+cYx6fR0TnMwD98Y0heW485WwX5SrplkXeadFRW4PDNaSmOyfFpWuV4tLVZrDvugxmuaCz1WhO6XV4JVSfzgLczYvih6bMovz5NWMM1y17wVpZ7wtVbTKOwjAHWmiDqMYP0G4a/e5l9qy6bGSOmc2iCMSYTj/v/nQHl3KB2v5ZD2n63LZ50nRMi0Dkyk0+gmBxEDEKkaaUE08Umw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9jsqoyZZZfy/Jky0PjkBWUPj32cEtYhbQtuZ625R2Y=;
 b=RNe0D1GPlE8I6f0//FeuZVeVNeLSnlrKkyDxwZSbMlGIK3uWCHluRxihFq/WnywzWfpHpmuW/LJsBQq9GV4Rj3SbX9IvXLmqD43ypPfnQVog5KYiK5Hj6//qP30egw0rxXAePr0fbG9bhzpNUKslsyyFsf5sM4jt4oVCxJ3rYjkc9XlkztXS7pwrH3i35KRTpc91+k0Al2TPEG3yWhYQ9/crWLCJ2OdYTptlwVkO7sxrCZyFNOQT33BJoh8WLvBbhuIlsSPyEgI55vtWVbKQT0+zaLrMxBcNJt1rv1kSJ6Hcp9AURKFsdShgYU6J/DcMeKxzl/xoks1jW6vXIxv7ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by PH7PR11MB7003.namprd11.prod.outlook.com (2603:10b6:510:20a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 14:31:33 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3e15:8d62:5e58:a513]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3e15:8d62:5e58:a513%5]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 14:31:33 +0000
From: "Samala, Pranay" <pranay.samala@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH] drm/i915: Fix color blob reference handling in
 intel_plane_state
Thread-Topic: [PATCH] drm/i915: Fix color blob reference handling in
 intel_plane_state
Thread-Index: AQHcpJPEq7qh2Q5WN0Ki+waK6prLDrWQWLTA
Date: Mon, 23 Feb 2026 14:31:32 +0000
Message-ID: <PH7PR11MB6053DB2E7554D4CA95E058D7E777A@PH7PR11MB6053.namprd11.prod.outlook.com>
References: <20260223064708.540934-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260223064708.540934-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB6053:EE_|PH7PR11MB7003:EE_
x-ms-office365-filtering-correlation-id: 2af3476b-cc30-4f93-a1eb-08de72e83de2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rlHgrbij4AotoCwMYkFsn3MwWq+F3WuyDYHrRbsFdZwgmJNeTid4rubHUC31?=
 =?us-ascii?Q?DOUphZ4NktlMjGxeUqwJ3ZA0aWab0lHluze9HUOwf6Pi2XT8guODnD/5466p?=
 =?us-ascii?Q?AmmsYDsTECoggIji/uIyoKWRjfTfP8IgM8426XvlQdiRjRTPCgNCVoPB/Kzu?=
 =?us-ascii?Q?SddQ/Zqi+yQ01b0WL6k3mrq11S8WS6n429V3KzaX24VK5bqn8L1Xr+82sWti?=
 =?us-ascii?Q?emEypXsmWpHkJgdIgxg9Pu+Tc7OY1ezlwWzoCwUntrSidFLNR7mS5BkX4C0+?=
 =?us-ascii?Q?f+xynWMXnABPL+12XOwKGG4z+JZDDMPlm6n6OrD3Ma+cuYtOWIwDBpiIwVUT?=
 =?us-ascii?Q?zFka9DtSIFo2ZNdHBAx9qHtyFMCyJxod8rLEYE+IPK2fgeDPyI3XmcvV+t1A?=
 =?us-ascii?Q?hNmY+ONA48BnElXP1fZ/dYLv62GZlyt0eItvXSxCGKW/icvdknqrvG8Ws5He?=
 =?us-ascii?Q?3V3jChGu9QDnpzzcz35sSB6B2SfigxQMEy+JGgKniwH+tqX4outAeh1gCtcU?=
 =?us-ascii?Q?qJD97zAXWtavtR8QyvxTIh/LAqsS74pM3eF5qyCnHs5+vPvEuwGyeZiw4Fac?=
 =?us-ascii?Q?cyNxcJeAqL6AJJONVWBEG0HZOZke4aHEhI7/xSBVi7Vng+vnzDLGOcBPM2G/?=
 =?us-ascii?Q?lTU9ZasoPgCie3a1UnvTAUQvkjK/5WJ2nKSrX5Ay7ApbxQe6Ln6mMjnr7hJt?=
 =?us-ascii?Q?MFTLV3YKmiEXoJnEDErwsll7cKerJWH4TkHmpEZxO56XXUJ758TJ5Sv+l6aa?=
 =?us-ascii?Q?5tvCm0XF5flwZUkSQWga/EMhZeZMnZhtyLA4oi/+fukB3Fnbj803mLdBfgJy?=
 =?us-ascii?Q?zfceAbT8VQ0RSXkCSrGagIN1JbqHyuPqWum05Q+bKGqESTrw/D4IFAdD1y31?=
 =?us-ascii?Q?Tx+YFF7QGKQgy9HJA2yI8jLIuqVSRfbYoMVxVO9tJsE1X6k4cpmhf6H+2znS?=
 =?us-ascii?Q?psdgnbjliEbXI4zNwSJ74QJwrmb/X80/hxjGCBreYSR0hKuY10v4dC4eGgNp?=
 =?us-ascii?Q?Av2uN1HTWRKgMzHNVLaDkHHuOyUWXRAVltZpJlI4eIUquK/HH7/C1xkMvgBQ?=
 =?us-ascii?Q?yqybHLwnemcUGcJ0gJho3pxiX9hctU60+izY5pMWau+VqDCS1TvCfoPWegPS?=
 =?us-ascii?Q?YkjjjIPWHc4umuc2B5lb79B/nA+EEn0sggQ2OW+w0isVfBPL8ZRUI7ejsWMd?=
 =?us-ascii?Q?mky+487a5r50QAI4phEcPfarUOFudF6raOQDf18n0VZwLTIaZQC5msYUvAwj?=
 =?us-ascii?Q?Bp4wWia3it1ddeNkjY1rxisd7AeUgqzEcXJDWCIPo8J1VHll0GNuMzIbUM0Y?=
 =?us-ascii?Q?yQ1f17W20v3qQzK7NE4hD+yfMUcCJR/QckYBj6AKArXL+6Vke1ZXntNRapks?=
 =?us-ascii?Q?1Bdz9PqGS4MBPhr0O8EYxsdDzTxLBz3Mt4DkWa4DEv6DWJ1hebTbMy4QkG0V?=
 =?us-ascii?Q?Qwt+p98hiJO/DLRtkuvy9QkniT3mUmmh43k8OD0biEgvtJoBek7tFef5/L+b?=
 =?us-ascii?Q?PwZLXKBkipTobFF1sMhlsjuE0jO+tlS8E4HmmHYGpjn0iOCyv6fYvovqF/Ax?=
 =?us-ascii?Q?+tF2IJKo+V1nbLF2SG5w1RMAAU/CVlV3zu/f4DY+7586qcEeEvbSrFliVuG2?=
 =?us-ascii?Q?TC066rDpMvQSXtRqB8S+ySQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mbaguvDgSXIllbBk+7FCYPoOzmccXaxs3XNXmGWYn4Qnl9dpDIKD7enPT4kZ?=
 =?us-ascii?Q?D5YTa2UMpCizEVwGJTgGj/L4LrsrxWjCD7qk1Bduj0rwOWRnjDRXy5Ng39fK?=
 =?us-ascii?Q?H5W6NcRoiz/ZL0naB/cJUDyCqUkMzdcVHC+698/jgiXUs9V9zhgOXBqaoeCC?=
 =?us-ascii?Q?GaclT1u9RadvxxBDPBGK3DnYNE0N9zM9zVvkdoTxuH/6X1T/e04kLAvpzLRY?=
 =?us-ascii?Q?ALQ8LPuSGHwLh7IfJy4goXofPwwbDylilOOfBaloD6Sr2eTScu/zTCLSdYzS?=
 =?us-ascii?Q?PfC9f4fBQKI4UFko/ivzttLlL3zWjXt7QgCEuOPRmYmmD9apBZhyL37AIubD?=
 =?us-ascii?Q?1h3UKHGcL9X5Zw3YHuUoxtB5z6neJF+gzsvSJNSMiboFkPGrIoJT3Cyx5R9F?=
 =?us-ascii?Q?dni4bnbdy7e4Uf6mTcPSdAk9NlhK1TlyM+3NezYaYPY/xChnnN30V5fF57AD?=
 =?us-ascii?Q?HSBw1wiP70uMvBl7UWnCj+nn1poUdQukr6u+BkL0YX0OvrwwITY8Unft2qMk?=
 =?us-ascii?Q?bP8OjoPk7hG8tn9C7LGFl+kjtkDbGt1wkzJrSQ0eKpzW96T3xPvwYw8cyv0U?=
 =?us-ascii?Q?JxG1o41I0nkL4ytNZMZ4v2IxuLGyZtFcqZZ2rW0yl/GvfDo2XLXdE5XwWAG6?=
 =?us-ascii?Q?DfHWMqIhu8UXMFUbMoj9YjCvCrfgDSLoSpUgzqY65lJ0wdIqS4zE3Ple0ext?=
 =?us-ascii?Q?Yi2PP0y5gAUfqLqsOTYTSTh32BqitxzRj04gAKjmjnyc2a3+GPfOsgKjQsgq?=
 =?us-ascii?Q?LJt5zVXTViokuLyjCou/NYtliD5tJ4cx1FFQeU0Vxkv10P6YHZbBRjd7VExh?=
 =?us-ascii?Q?6Ewu7S+ZAvPBCFQ/Q4Eo2fGxi3QPenw75IcahnPalINv0yrVcoJN7I1+Ee+x?=
 =?us-ascii?Q?9fARCEgoSs0P5qelzdlz5pkFN+6+b+gTgnaF26aMfd5Ke+jpmFhtNyQtsfA9?=
 =?us-ascii?Q?b7STIDCem2Ev6QL00bvixM2HDfMYe93rEJwuwKcm/rG1pVIhVnGcxhUuRhju?=
 =?us-ascii?Q?MveNkILxUtLNn2WnS8MK0I0inaPaARseITAJ7CFJftJcPfQw0oCZwzCq+aHR?=
 =?us-ascii?Q?MAWXVG4gwdy8Cw2zBaiql4S3+gaBvdwBHyAB8iHt+JhDE+jC9YXjWSRySDpc?=
 =?us-ascii?Q?MzwNO4pbD8jtQ3KlDUb+02U1UqCwOa+YeblV00+iiB2QteoOD6AeYyDiQt5j?=
 =?us-ascii?Q?YJziIuyywUM3bAF7tpRDOq6W8Ng6B3doqoSlpkWU8wFMuJf8qeiLJnFKKSL2?=
 =?us-ascii?Q?z8Qo65P23wCErAYy5+0EWQwShBzg5OFYT+oeS/71bXSmConxL8bdbijSR725?=
 =?us-ascii?Q?viwyjphLR9CoyLFKbI00CGbvwcNmfGIP2fZcWMEQgDkSIosfOcTDumssTU/t?=
 =?us-ascii?Q?VZ25DVBed/n1RjOVN+WXkNitxxbD9F9Rb99IRCpTCzG9GZ1CXXXmrIn7svag?=
 =?us-ascii?Q?3krYA/chOy2KnL8ETJqasADtQf9C/CQi/gAeJzB4WF3ePmWlK/ahrkq3OuNH?=
 =?us-ascii?Q?xWnQorXrIDthZ9vpcEgOv5tBYjtOyTOmJlgmL/fiGprd9vGekzJrJxzhNdoH?=
 =?us-ascii?Q?OfjBGS41bYpJje/vW/LqYKYQ4ub8CTekV4TTX7z/q0xAs6ag1+1JIBVWA/ys?=
 =?us-ascii?Q?XQ6DU/0rirAybDQygwJm1AlMwMjfZdo0hoW3eaEjhvMqEifze8zZkrKNGvXT?=
 =?us-ascii?Q?afreGF/+UOJDOnfGhaliLPbOVaiOeXbycTTVz9JIhpgT1YBWiJWo8Vqz/n52?=
 =?us-ascii?Q?aRZ2NAqnaw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2af3476b-cc30-4f93-a1eb-08de72e83de2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 14:31:32.8873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3B58EhDMYdJ6XzgXdNpQoIiAkjLCKqBFrdsOYgKcGd+3KVB14H8jsBhI/wgPxuxYfXgHhn4tNBrQmWPuR5ma2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7003
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,PH7PR11MB6053.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pranay.samala@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C290B178068
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Chaitanya Kumar Borah
> Sent: Monday, February 23, 2026 12:17 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH] drm/i915: Fix color blob reference handling in
> intel_plane_state
>=20
> Take proper references for hw color blobs (degamma_lut, gamma_lut, ctm,
> lut_3d) in intel_plane_duplicate_state() and drop them in
> intel_plane_destroy_state().
>=20
> Fixes: 3b7476e786c2 ("drm/i915/color: Add framework to program PRE/POST
> CSC LUT")
> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
> Fixes: 65db7a1f9cf7 ("drm/i915/color: Add 3D LUT to color pipeline")
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

LGTM.
Reviewed-by: Pranay Samala <pranay.samala@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c
> b/drivers/gpu/drm/i915/display/intel_plane.c
> index 3dc2ed52147f..171cb5e32609 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -144,6 +144,15 @@ intel_plane_duplicate_state(struct drm_plane
> *plane)
>  	if (intel_state->hw.fb)
>  		drm_framebuffer_get(intel_state->hw.fb);
>=20
> +	if (intel_state->hw.degamma_lut)
> +		drm_property_blob_get(intel_state->hw.degamma_lut);
> +	if (intel_state->hw.gamma_lut)
> +		drm_property_blob_get(intel_state->hw.gamma_lut);
> +	if (intel_state->hw.ctm)
> +		drm_property_blob_get(intel_state->hw.ctm);
> +	if (intel_state->hw.lut_3d)
> +		drm_property_blob_get(intel_state->hw.lut_3d);
> +
>  	return &intel_state->uapi;
>  }
>=20
> @@ -167,6 +176,16 @@ intel_plane_destroy_state(struct drm_plane *plane,
>  	__drm_atomic_helper_plane_destroy_state(&plane_state->uapi);
>  	if (plane_state->hw.fb)
>  		drm_framebuffer_put(plane_state->hw.fb);
> +
> +	if (plane_state->hw.degamma_lut)
> +		drm_property_blob_put(plane_state->hw.degamma_lut);
> +	if (plane_state->hw.gamma_lut)
> +		drm_property_blob_put(plane_state->hw.gamma_lut);
> +	if (plane_state->hw.ctm)
> +		drm_property_blob_put(plane_state->hw.ctm);
> +	if (plane_state->hw.lut_3d)
> +		drm_property_blob_put(plane_state->hw.lut_3d);
> +
>  	kfree(plane_state);
>  }
>=20
> --
> 2.25.1

