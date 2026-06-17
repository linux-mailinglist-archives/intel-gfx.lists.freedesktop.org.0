Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2GNREftIMmppyAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:12:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A2C697133
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:12:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=iqGdTuPj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2478910EE33;
	Wed, 17 Jun 2026 07:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DCAF10EE33;
 Wed, 17 Jun 2026 07:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781680374; x=1813216374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L6X3mVzbnJGhcSLYTIsi26kaNkR3he/D5MF3IibmvOw=;
 b=iqGdTuPjOpgbY5GqmIn+kFuKj77GXy+GYb+8hLCE0FdeQg3qMi/fWj1F
 8dPhXw/0IdZgKSR6bNNur9CgapVSSrPcULHFvQBiou5Sb5oZkrcusiDeJ
 RZpgiGW8J1Izr+PEZ19NR5JicDLSpgmI26mh/2c3lFKyNDOKER4nBTG0h
 +YzaZVfQwbaSgGpiEGlG3PRP6Gk4e0NAI82iN5ll+04a38R6y9rc5uDqJ
 xFmCZBgV+NGM6FvUHwctVcgID3rNeVZDqe3K99EEHaNFW7P55x16e05bN
 vHLElT9esXPc6EW9cRjlAGi+Rkk9KqbEXoP5hiEv065EKnYOF1B9vTmRK w==;
X-CSE-ConnectionGUID: xaNxQ0rCRzKNI6wtjN4peQ==
X-CSE-MsgGUID: /ckTJHqETy+dIvJ5xFTF7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86394731"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="86394731"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:12:53 -0700
X-CSE-ConnectionGUID: l+VDeXCgRsis1Y33ztP/oQ==
X-CSE-MsgGUID: CWhYClKHT+eqBfmLbWck8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="272056508"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:12:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:12:53 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:12:53 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.54)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:12:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e/GhjbUOqXQz3j/B2BAxnGTYtyYIXpyrzaR6fFzeaso5uqreCjZuz8VONv1TPVTKP809dLu9a116ROwdeJxj5Xoa2d7hauO8nMHlaEO0JfDQu3+DGTM9ndJPUHXVjGGB/Vt8fk3vxoQQa38P8Odq7F6kobOjkrCtsoDkWWZsrCJqOslVMgERVybC9jEYaDINRsEvHHxxg4kqDgZH8kDqw/Iivza6UsKQbayLzSv88cS+wRSPWu8la8om1u93UTgaYhM6IjvbfhQLva0qoRHGsdZJ+PYTpaPyd04PXYPO9nPUCSdOhX3oyPemfvYcregAwkunFrfvafnYqKzksVQFHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YEaxQAf07cQDmxXRkVnLwbD+n4ZPjOONCllHPkvdP2M=;
 b=xEvpF2J2v3yiwLzuSdsOIE80SSwO4mOB7kL/7hTG16FtOC60KHXRlDNMURQBOsh4nFb6/QnajBm/girJkfO3ymlUTUDRAwDlb0GF3XARb6QAbkhhY7QU3rejxRsQKSRqq4Q2zsrpblwDYYMSXO9CYlKAWSpKvrdHp0bKlOzQzICVurA05b6+ADCrHDQsvwK0/mIeJX1nbr2cNeYFeDtMPYssn/zurbJmceCyTn4Q8jtuUeS9ehMW5QbEGbFif06AnLi9K8jDs/Her1Hmr/1CETAMrOhWMjjztw5ZIz7lqCZvoFD8ggOpNGEvUKQa5dGra2BF+nY69c9ZAuydk03Bag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6341.namprd11.prod.outlook.com (2603:10b6:930:3e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.11; Wed, 17 Jun 2026 07:12:43 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:12:43 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 04/16] drm/i915/display: Add DC3CO DC_STATE
 enable/disable support
Thread-Topic: [PATCH v6 04/16] drm/i915/display: Add DC3CO DC_STATE
 enable/disable support
Thread-Index: AQHc/ax2BvbyGlB3gkWCoXG3spRBLLZCVdDg
Date: Wed, 17 Jun 2026 07:12:43 +0000
Message-ID: <DS0PR11MB80498001FD9F8E8384EDF77CF9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-5-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-5-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6341:EE_
x-ms-office365-filtering-correlation-id: c4325c12-0329-4594-07e2-08decc3fd343
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|38070700021|22082099003|18002099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: 23sfDh96EnZ5gfYArG6uQlvJ0wiBKjwHfKLcPF4xjhNc51MnBycdws31gJzIfRTSFkLVzKHCVpEYSjGP4t9iaVVoKiE4+bxluBR2RPRBscOQPfhCzy8RGdBu7Qepxydv9VL1c0c8v+wVxkKB1qnKJWybXSxkMs4zA2rtKBPg5Kc9DB7mcz18+KmYnevM79ugZ77ns13QtuGXuR5BMciOwzbJfNJUa4Af8exS8zcnAx/xutqgurd/K3XUWtGenjA33tVCI7PkJ0vHL0olBUKniZXUp6P2FN3K8lDRn/bMQYVElTklfL4AXaacyfuCgrY5RljBVjpKqqGmHiJqMyXiivbJ2d/65P9+vppZwvBTSyELR542kRuJjOFB0UUqvO/8sI0F0Ce1ejOtF2X2BtYcYjK0XY0detLzK5ROBJaF0jUqWu8R3BKT9HuU0nOTO1oa0SZu2xDJjkjNFoXbza5XUee6u6/jfTkd5ODUHaqniKSnuaGekxkDX9bxH+m/+pWfoL25v20lGk9IRYxxEXDtgw5ubDVn+OC95HPTpC2AmUBhG9r56dvgqvJ/qCoSxiKxg7l+fdeG6BjnzxKKhSdy5RBfiNLxe/ms7iwegTSjNvsIKKCx9UoQZotb3icdLW41H9PWNd5o0Keq41HHrE+eMxMH0QpDQ4OLRfV2ONeQAbIS7TrhaA7BUWuGLnAeRrEZK3AZN3IYjwd/NTYwYZ4Oov7mDiZyC1EC6LOXw2ZMUvrF36ethIP3shKP+KRBSCft
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(38070700021)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yU0QZRiTdyrRm6/LkB4ARuKcqgb6opTrr6XIODvtsH13sbfIard+7SL2SRUw?=
 =?us-ascii?Q?LVHMPu6jJXgjXWbX/K+QKciCc2LHtA+SsgxFqCJVIK2X6CzV0/P9IMfcr5bJ?=
 =?us-ascii?Q?4YgcrMNcMrEPgdjSCAmMc6OA5EzQPbDcqDDnA3ZuXGIjnDtLQ8IcrAxCbFNY?=
 =?us-ascii?Q?KP/mIFuN1C2nu7LUFbbKd+RUbbE1dsLslpiX5/4K8cWRU0gyBd/jkrMBv9ql?=
 =?us-ascii?Q?AlZPHVZuIJZHVr+XQPlOCbX5fMdqvwx3dKv3dB3zMSMfdK36+qINwR5P7KSp?=
 =?us-ascii?Q?a9z5JKNdYii9bt2JQk7FNRV5feMV6WSgOR+XF09HsfXhaWS0Q1G7d0UcB/lH?=
 =?us-ascii?Q?A5tiSWj2KayOoqHmR0tpMBINtdypxnQD8VfHlG+dshTI2a0qKOdIiZ/a27l+?=
 =?us-ascii?Q?I7KwJIlPgJjtzPb/331HS0in7aPxh3lsk6PanWnbg+qHa2OpOVVURY4tmiYV?=
 =?us-ascii?Q?zRlpN6hEiAeCtBJFS7WEIr/ZO3aRPxums4QvrcjP7E1eo/jeDlu9/XhcGTIs?=
 =?us-ascii?Q?JU4oijiQ2NDsd17Tl5aYXQst4QnQdJ4+Ohw3j7FR7aHK5lo4Rs2f/CZ7ZCVb?=
 =?us-ascii?Q?Klwk8BYw7X/AbKtP8e3T2xt3CyZonx9iQghbPTXPXII8K894NIkVxmfaUkiN?=
 =?us-ascii?Q?ZrPXAJBQCQdFfHc6Lel4PYffReTFO5XXt+dOhhIw+TlqWBYIWiOA/o8YA9AB?=
 =?us-ascii?Q?jNiwIgipNwFOSBTuIaQDO3c8jqUCXo82tdVkMOmpIDdELJ/k5XLRo/Yk87Rn?=
 =?us-ascii?Q?LcdIRfQIs8817XtKjheujhG3tWvEpstJ17QGHigv4gDMMyt8uAQwyRh9ci05?=
 =?us-ascii?Q?sIXxD2OK6GIQsPGPuW3THnDBdo+iUho2K5ZxRcR+KyawN8j8kjTv7Kfq041i?=
 =?us-ascii?Q?EJFeMZUiR7OEtMX6t/st42HYjBxZpE+XtOqc/c6dTBLTS0dTf2ZsIViERxdW?=
 =?us-ascii?Q?+U08Y0G/eyBHd0wB/zXrQ+o2yLgeo+jYFNTYBkXv+qJzG+Z3k+0CLbfhLL3g?=
 =?us-ascii?Q?mORJiX4+ujAQXgB1IaWIxXFHp+PzOQI4doZo9oO+pSDntRhmeIlLt1DIvRGi?=
 =?us-ascii?Q?Pi1APp7fQtBOO2OyX9Y5DwIK0skXcJqav3UrLAo/If/dnigyhrVoyN3glWKL?=
 =?us-ascii?Q?lPqNuAZkss1HP77wsDzzW7U2j1fwEgtyaAI2sq0fmiYuNNOUVGRbd8qvIqyZ?=
 =?us-ascii?Q?9c+fChHJRpe1nzl3rrCTyJWwP5UK+szhswAy6qyGsbXSh1MkXKYX0eZqD5+v?=
 =?us-ascii?Q?JKLm6CmhGdUjjSp80l2+UGv10JIPUJ6mywAWO8DhbnKPWTenUZKR+XL/hDlF?=
 =?us-ascii?Q?LUtkGAsbclh46Qo6gtAnYbtXg/kvmT56UdwGErXkywJ0j/1dcHJeZ1a4Goxw?=
 =?us-ascii?Q?eWE+rttq95sl+0fEixVQSlRpIG9/aSb4WY/55CO8Q+GGVszyfDyCYQKBogAd?=
 =?us-ascii?Q?5IkHjgh/wnrVZZ7rjZS7CWHUhfy+ZeP9BJGGT9a5IAhqEuG0ZZUDU0Gw3P8G?=
 =?us-ascii?Q?uhpd1j3kNH8ZN4rwXbGRUznP2b9BJ6/XUzuMeQHaaX646seELavwOc+/3tIZ?=
 =?us-ascii?Q?Wi3PJ9xKkHawv13CQ8Cqg1s2MDh9pZjQiJwNCr7k7IzyqeRBAPADZ7lLtTiB?=
 =?us-ascii?Q?gRKoG3Ht1lHbPU9JWlSYILnnknpFqabJCPcBX4HXDEDS197DsNwC7sakxxWH?=
 =?us-ascii?Q?KJzDKHp5W7YonEnnwUrqd1Fo2YQyKQTQgjOxXt/TQBrtR89eS7PoEr9ZsE++?=
 =?us-ascii?Q?vljkUNNCTQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Ahmy//u3BAg97s/qPAieY7xkP4m+LstdncV74AcMmKoSdeXFvnfFriRoRwD9Pinc6OQpc8uSxCkrQll7D89VowOgbXCWNjHq0HLhO4t6SOC0/xQPC/Frxbk3w+KsAcTr8d8W4XvhK1MYJLcXLJvq7vJgB6TI56mxutUWkixWwYYI94oKVBEzZ3RnHQI2JSXiE2uxDmHwCzGjm45oqb/msH3E+vq64a/JgCvN8rT7jOlac4Gpci8lflQLfpppp0YjxmjcAsrepJKczxYpQUTuFe7hxEcvTclqDRIPx/fEhicY1t4Zp6RmAPyphxW4Z1u2oBvt8LKmJkcnVVYxFA/zRg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4325c12-0329-4594-07e2-08decc3fd343
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:12:43.2087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TNNcyrDG0kWxk4W2wd3M8B0a6w2PBhQ++T/+6xZtuu0PfBVV2WeE8iBO19/6HE+VU0lvlDSjTzK1Wbpqm+ROsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6341
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 98A2C697133



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 04/16] drm/i915/display: Add DC3CO DC_STATE
> enable/disable support
>=20
> Add DC3CO handling to the dc_off power well sequencing and disable the
> DMC wakelock when exiting DC3CO.
>=20
> Changes in v5:
> - Call assert_can_enable_dc3co() before dc3co enable (Manna Animesh)
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  .../i915/display/intel_display_power_well.c   | 27 ++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 71ea2ecc8c88..9c8ea14a5cff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -866,6 +866,24 @@ void gen9_set_dc_state(struct intel_display *display=
,
> u32 state)
>  	power_domains->dc_state =3D val & mask;
>  }
>=20
> +static void assert_can_enable_dc3co(struct intel_display *display) {
> +	drm_WARN_ONCE(display->drm,
> +		      (intel_de_read(display, DC_STATE_EN) &
> +		       DC_STATE_EN_UPTO_DC3CO),
> +		      "DC3CO already programmed to be enabled.\n");
> +
> +	assert_main_dmc_loaded(display);
> +}
> +
> +static void xe3lpd_enable_dc3co(struct intel_display *display) {
> +	assert_can_enable_dc3co(display);
> +	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
> +	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC3CO);
> +	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC3CO); }
> +
>  static void assert_can_enable_dc5(struct intel_display *display)  {
>  	enum i915_power_well_id high_pg;
> @@ -1054,9 +1072,13 @@ void gen9_disable_dc_states(struct intel_display
> *display)
>  	}
>=20
>  	if (old_state =3D=3D DC_STATE_EN_UPTO_DC5 ||
> -	    old_state =3D=3D DC_STATE_EN_UPTO_DC6)
> +	    old_state =3D=3D DC_STATE_EN_UPTO_DC6 ||
> +	    old_state =3D=3D DC_STATE_EN_UPTO_DC3CO)
>  		intel_dmc_wl_disable(display);
>=20
> +	if (old_state =3D=3D DC_STATE_EN_UPTO_DC3CO)
> +		return;
> +
>  	intel_cdclk_get_cdclk(display, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>  	drm_WARN_ON(display->drm,
> @@ -1092,6 +1114,9 @@ static void gen9_dc_off_power_well_disable(struct
> intel_display *display,
>  		return;
>=20
>  	switch (power_domains->target_dc_state) {
> +	case DC_STATE_EN_UPTO_DC3CO:
> +		xe3lpd_enable_dc3co(display);
> +		break;
>  	case DC_STATE_EN_UPTO_DC6:
>  		skl_enable_dc6(display);
>  		break;
> --
> 2.43.0

