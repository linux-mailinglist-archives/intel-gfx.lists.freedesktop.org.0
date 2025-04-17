Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B9CA91351
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 07:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEB210E0C7;
	Thu, 17 Apr 2025 05:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqI6XirU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2130910E0C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 05:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744869224; x=1776405224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TST6EeIjYRUUPbS8A9etqkjwnnlMwn1bO2YxeELrnWw=;
 b=PqI6XirUWy4SZkqeyxBlRMXBYxEUgjwGbYEt+HudvXEBTHmnSy6iqvhJ
 117X45ONSHXkcQu81a9rSG5HAWW5gFSrR4eyOhno2FvSh0KwmEhtwvpYc
 mNzb3xnoIk2SM7KCxoueDINt9nnmqW9A9uIjJtU+EBKYKTgBG2TkSpI/I
 g/IIcSeO0ZKKdHnjriRtgrObbljFTVZlttix3r88eqMSHYjDnsPWJAyxN
 +VrX6DQTUskbekun+UaIpmn2QMe0drlO/Q6zsA+Oreh861+/YWU3wlHQO
 +Fs1DUzW6T17xNd/vPjni+WbDPx15ogBzBozbl39Ol7DzEgXML0mbvHl2 A==;
X-CSE-ConnectionGUID: ZRf7qFmZRyuC7YM4qSwjbw==
X-CSE-MsgGUID: JIFdvZ+pSK2Z1keoXHPXmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="56623284"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="56623284"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 22:53:43 -0700
X-CSE-ConnectionGUID: VpdjtUk8TjGA2p6h7RZIlQ==
X-CSE-MsgGUID: YHLwn250SPmJ47SKyagSAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="161651473"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 22:53:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 16 Apr 2025 22:53:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 16 Apr 2025 22:53:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 16 Apr 2025 22:53:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jrhyC2/DHFRS8gEKR0/v9WH+so6w4WXT5cKoFXjYbi2OEnJEH1iybGn2TJSDAm6QWCim73WW7QpAb2laJrXHncz8GDN4SjMq+Eq52coZM+r5SgvJ/Pek21WQrIT6XAE5IE96jWNAu+U+OuEWOzS0mVRpi2Ujk03cwXnAy0/6CE9wbo9SygNBwMQ2ljFbIAI5DBNtDs6vv2BzaZ3HzBU2qpV8yGQ1tYomeKx/w8vxBDD6AO3P+mAJNyIV7iaptpwVIOjdr2gm5JWAVhErmvBApWONGE51Z5LxoX4uljMNNR/a0x4uFHp7OCdnhvpWJMGaGivxZFU3euuHyRrQR0RByQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uAIxoFaviwEw/Lshl1afRv2C3xodutTyY3vqZGYJFOc=;
 b=ygpEUUs6FId/dJkpV8O5bd1xnNqMn/HgjJ8q9rXFBolurkj8IiBKECRq8BwKtNLLE0NilEhQ2DVTTQLQ3wOQRHmJ1k19BPUS40ZiKWVTKkSlUEKlS8gYbjZWLX+zoJjk+uBjCXGHC0vqGPzEoy4oV7Bja2KSsUlNUliM+N3/fDhcf2Ip2buUcnIoBBGmq7r2hip6pZlwFvlSnUTB1i1er9RochptRUEdv8c2R6qGm7GZyozfsC3joEc2BXxwpEisN37xt48LHJ+at3Rlm76XnMFpVBPSCum3gHmQAvsx5KvBZKd4pC1SwV3z7w9keBNsukQTaqXHHdP7aakZx6JIAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN2PR11MB4662.namprd11.prod.outlook.com (2603:10b6:208:263::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Thu, 17 Apr
 2025 05:53:41 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%3]) with mapi id 15.20.8632.030; Thu, 17 Apr 2025
 05:53:41 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Subject: RE: [PATCH v1 0/8] Enable/Disable DC balance along with VRR DSB
Thread-Topic: [PATCH v1 0/8] Enable/Disable DC balance along with VRR DSB
Thread-Index: AQHbrpj/Sd4roS3afEuzpnXxQOukXbOmZTUAgAABqoCAAPUkYA==
Date: Thu, 17 Apr 2025 05:53:40 +0000
Message-ID: <IA1PR11MB6348224C8E8E1CF6F535A5C1B2BC2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
 <Z__HlFEmNYauSX2u@intel.com> <Z__I-b-UQgS3log3@intel.com>
In-Reply-To: <Z__I-b-UQgS3log3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN2PR11MB4662:EE_
x-ms-office365-filtering-correlation-id: 4df261ea-ba88-4fd6-f577-08dd7d7434bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?zue+FP98oBCvs5YRgH/Is/VOzXW29uWrnv7fv4Vf5RjQyv+JlCWJMK3FPU?=
 =?iso-8859-1?Q?bdqoDSIF6hhmBcrWgEnw91TUtpC5OI4gSAzDTZzOSI3ene+vsGwFEkx5qE?=
 =?iso-8859-1?Q?yvdwrcAzv9MlG+g0sJzPI4s0Q8A+ub5CAtl1shxQK3OQuKZS6GiK6zobtR?=
 =?iso-8859-1?Q?BEk6ErpO8GTaz6DarzPeuThWImbZH865Ac+BTDFm4tVRyaaSAXnNDf5dba?=
 =?iso-8859-1?Q?nbgJLJr6YmrwyU6Cpp+eEDWlP9CJ31WB+zXX0FpD37b078B+83B8P2L8fx?=
 =?iso-8859-1?Q?LoBR/eUTOL7wTC+T5hsYer/POduIrKEwdUf4kPBOi4VAIgfhvsHFNRytY0?=
 =?iso-8859-1?Q?6CulteK6/LjjViUEb0jzDvdUAh4vOXtmtP1PoffLUlIsaG2e07yIoFs2kD?=
 =?iso-8859-1?Q?9m4bKEKz0vqlN2yQVsrUbds66j8Uj4mUgUHsRJvyRWiVeh+rpMmKJjDkFo?=
 =?iso-8859-1?Q?e0SuKBNVvySo5mGcjfodMDzohAJ7IOu5Tn4APDuah9WfnC2kM1JW6DoZrC?=
 =?iso-8859-1?Q?GKYJ5GX8Td5DzAay0BhHwl6ANG6McCwgJEgRoRyFOcPnJ0P4JbMSmvg8k2?=
 =?iso-8859-1?Q?uReAxmdyM9jkAoaUnnXRHMC7EToaQ4KYillIobiwcKs2TuubozjqMuOoJA?=
 =?iso-8859-1?Q?0DqS6YWtEAMWfu5syiZNZackHi4SIFlEcxYqGKpVDqCNj5ammCq/It7NM5?=
 =?iso-8859-1?Q?5lOEmqQnRI7v2FWe8/Hrnj/EwJn5bgdgYE2eeLmxwYBX8U+7+PPLi2RBYm?=
 =?iso-8859-1?Q?43RXck8IyCBEZdMQlKouzlL/jvPhi4wSQl1suL2HRNkQQDzM9blH7wJcgd?=
 =?iso-8859-1?Q?0stBfJVlX/3xtlCsuRgjeT96fSgXuAPdZ/CBCZcr2cb4IRC3Ab9uvZDRcN?=
 =?iso-8859-1?Q?HFUrntNS/HkS+5whVw5X1OfWN1hTVUSf/SNGzROzUL8qKOdNq3O2i9wCxR?=
 =?iso-8859-1?Q?jLnX74nOoTGO9Ei3X3RqINgw4AWwjVx1IHKsMEzIA7efjZ0lAgDkMln6z4?=
 =?iso-8859-1?Q?dhiFXsmO0MfyApsuFprS23POiOLB3wRA3QbSezNv3IMoYIdxHsxPhjD4zo?=
 =?iso-8859-1?Q?X0f8kb12qx8L+ClyQw+d98qfhqvM96mrenrRscCsdlXY3J8i2n0Qk6rjXS?=
 =?iso-8859-1?Q?MJKk1+gkhOHHuzMQwIOqcDRQp6uFhTXH6BtB5BRXHU0fNemlLo9C1U1HCg?=
 =?iso-8859-1?Q?349RZESceHZC3YqYhWDuKio/fi7P4VnN8gkphAKHYmbY5sujsn3hZWOH5Y?=
 =?iso-8859-1?Q?k1Ml0SUVGg+uC1eb8z2AKguNk5mLSGUFUgCiSiYq2U0VYV+8V3yrWNIm36?=
 =?iso-8859-1?Q?pZjkEW9CDSbbpLX8UYiaT7nsRmLJPTzl+dbMk6t91haPgOcdmAlxjrCKeQ?=
 =?iso-8859-1?Q?ZSlzwh0XznVWTNdFLNdheTl65fGjerCzPSa+z1GP6WnaEr8D9gtYp3MVAG?=
 =?iso-8859-1?Q?QPxfmAOP4gksVCJ4fU/21YZV+bmonGEI1wa1Pd0CM75OM0lmPNi1AJzBoU?=
 =?iso-8859-1?Q?KuIm2A2qmULTWo/RNAPMXQPVjryJsPoaWVsVUM0pp5Vh7Rw7V/x+H74/Ev?=
 =?iso-8859-1?Q?aZiEyRg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?5zfzPPzL7TprDx3larRmJ/IYq7ttSK6V2xAb8fIsLz+Y8yd03UgFnqNRXV?=
 =?iso-8859-1?Q?Ua3TGI+xvU8rAYbI3hcmRy6+H1w781tQ0T8NxzjepP0PxJnVm++9TatgE9?=
 =?iso-8859-1?Q?oyNo5ZkvRrRNQphuXjwdZ+cCH5tlv6Ip+iwLls9oiuuzJXffAbpC9Z+1Ds?=
 =?iso-8859-1?Q?bpSl3JriBHgt3sZ0Q+6Jvoz2HaysxuJXTNwlsbEP0V1cZeDklyXlQm/XD4?=
 =?iso-8859-1?Q?w2dmvy5dihYkxEadxxapVxr0lWexzhLomrEzVfY0ips/9NJHaV2R1jhsx0?=
 =?iso-8859-1?Q?KeNZFah1p4RsQDbckX1z79FpPQnI9vg2Yn5UKMv7vyEOtiXU6qAyLiulfJ?=
 =?iso-8859-1?Q?ihXZVUji2+qx8HeN33Ack/zGnvGjoSW6YYm2OfLKec+xEjV6ltVeWsJ1RP?=
 =?iso-8859-1?Q?63gKyBctg126V6jJKNmereAHM6C6gr0/XwCoC8F9cfIZSxFTYQMQHTs3mp?=
 =?iso-8859-1?Q?DjMgvKmwTYaJMsQqY0lC2WGK78c1nS0RAdR2I99tsJWImTS2Ln4fOjhlnE?=
 =?iso-8859-1?Q?PxJZ+nFcz05vnq7DjUNlCzElybeAxlEgZMkGm0OsaReBqQkcHd70dkrVRZ?=
 =?iso-8859-1?Q?qIwRsmRf6e3NNE1HX+1qlFXLG6yhxUeQT3SXL6YpS9U2K20aNDoIrBzeB5?=
 =?iso-8859-1?Q?it13hqY0EGmymeHWFFLOEwjROLr6WaNN6zXvEmMkeb/QYuOgSCgi3vmr8a?=
 =?iso-8859-1?Q?v1bI0TjQfYvVa5DpCbJAnkzRydLln1Lyz9qR+Bloc71MOAPLiK1nWRJvW5?=
 =?iso-8859-1?Q?pBz/p3VYKIH04eecCroPocEwtRMWXrxZ9lDkDtlqGuUjdGgziqmOzWo663?=
 =?iso-8859-1?Q?cmaagORwL+jFtnTXdXvFr5u5JFLZ8X335uaXfbKot48Td+zvGERXVDV1+e?=
 =?iso-8859-1?Q?RkHJVtLIPyPJeqjHts0ejhBirXfPcPVZPuvpMbCOA8oz/krJ+JyZOOPb42?=
 =?iso-8859-1?Q?6zHG2uydV9Rgpn1+PFcGA2huPuy2LE0+bSPrkLy01Ba8TrRWGvKviLmyW2?=
 =?iso-8859-1?Q?eYl0Z2rPzOIdJNHISnIbWOIfn2S5mCXQUuPSuE6WC2Kf3rGcKGTDr0KMU2?=
 =?iso-8859-1?Q?DRGdqL2LeMozhbJL+nshhl0bnFiEePhj+GtbeXJtN7abYOYOzFmDO6gv6E?=
 =?iso-8859-1?Q?xJSgu7ouNQjZLb/a4wSbF+CSk2J8gOczxzrfH8r3nngDzLCClBbbgT5z0O?=
 =?iso-8859-1?Q?ouE4RRBZPpm1xn+aOiwE3AvNKi0Lpzt/lBSXSzj5wP5mzp6koHAzVJrasC?=
 =?iso-8859-1?Q?Q92M3kGkkmRLUFdYr8Su3i0VOUNoOQfy4Vuu5bEC3kvayDdQ5p/tFGLcny?=
 =?iso-8859-1?Q?/wGfSswFvbE0BPw87fsSsTk2T6r+Z44DWXv4P7yfd2FG60nFFscWIsW22S?=
 =?iso-8859-1?Q?GEBAyJivt7fjT/XhMbxTLvuWoqpAhUEsk3SdkC5mWYdmvHWhTUsOotdZy5?=
 =?iso-8859-1?Q?lOt+F5goRhsskXbi+yCBFQEYF/g47WeWa5qio6xpwljvbr8h/xgvz1jj9T?=
 =?iso-8859-1?Q?3Nro5ecie3uCh475SChLFmIKk6nF/3F8kI5UTmX8vPNrLqFXRVC3bvMied?=
 =?iso-8859-1?Q?sR9RqurCSUWj+tXX9dRjRSiQiyKfKHWKFewgvW+ET8YPlYJFlD/GG8h1A7?=
 =?iso-8859-1?Q?UNMO4mkLBWoAEywfJsG/N8ED5gtum1rQ24jUyqABoBNm8bwDHlXgUf0VYU?=
 =?iso-8859-1?Q?KtAlhS9L2UKC9fUIH3ea4TnZUp0geNjVVAf0DG/VfXMLX8WVZhNDfCjSt8?=
 =?iso-8859-1?Q?RLBOtK+QYpyn3Q1o+GSNyeSkA=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4df261ea-ba88-4fd6-f577-08dd7d7434bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2025 05:53:41.0536 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5zjGrfmdKZV8xJunp75D9f+T/yYmj75TVyCrPb4O2qc3F5G4kj306XYwuuEkB/3FEH4XcgMN2DhHZZBum7NmEpmrWA+nqX9ShQZrjnUn8Ce+J3BHWfQvL1VIJvpFwbjH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4662
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 16 April 2025 20:43
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH v1 0/8] Enable/Disable DC balance along with VRR DSB
>=20
> On Wed, Apr 16, 2025 at 06:07:00PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Wed, Apr 16, 2025 at 11:57:29AM +0530, Mitul Golani wrote:
> > > Control DC Balance Adjustment bit to accomodate changes along with
> > > VRR DSB implementation.
> > >
> > > Mitul Golani (8):
> > >   drm/i915/vrr: Add DC balance registers
> > >   drm/i915/dmc: Add pipe DMC DC balance registers
> > >   drm/i915/vrr: Refactor vmin/vmax stuff
> > >   drm/i915/vrr: Add functions to read out vmin/vmax stuff
> > >   drm/i915: Extract vrr_vblank_start()
> > >   drm/i915/vrr: Implement vblank evasion with DC balancing
> > >   drm/i915/dsb: Add pipedmc dc balance enable/disable
> > >   drm/i915/vrr: Pause DC balancing for DSB commits
> >
> > Looks like you've messed up the authorship of most of these.

Yes. I will update Author and resend along with on xe list

>=20
> Thse in fact just look like what I had. Where is the stuff to actually pr=
ogram the
> DC balance parameters?

Actually yes, one more patch required for event trigger and one patch for f=
ew more registers. Earlier I thought of to complete your patch series revie=
w as there are some independent restructuring. But With next revision I wil=
l append my local changes as well.

Thanks,
Mitul

>=20
> >
> > >
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
> > >  .../drm/i915/display/intel_display_types.h    |   2 +-
> > >  drivers/gpu/drm/i915/display/intel_dmc.c      |  16 ++
> > >  drivers/gpu/drm/i915/display/intel_dmc.h      |   5 +
> > >  drivers/gpu/drm/i915/display/intel_dmc_regs.h |  37 +++++
> > >  drivers/gpu/drm/i915/display/intel_dsb.c      |  31 +++-
> > >  drivers/gpu/drm/i915/display/intel_vblank.c   |  33 ++++-
> > >  drivers/gpu/drm/i915/display/intel_vrr.c      | 138 +++++++++++++---=
--
> > >  drivers/gpu/drm/i915/display/intel_vrr.h      |   5 +
> > >  drivers/gpu/drm/i915/display/intel_vrr_regs.h |  43 ++++++
> > >  10 files changed, 284 insertions(+), 39 deletions(-)
> > >
> > > --
> > > 2.48.1
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
