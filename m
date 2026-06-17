Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D2WdNauhMmr+2wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:31:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A44369A205
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 15:31:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mNQMOvT0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD9010EDC9;
	Wed, 17 Jun 2026 13:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A021910EA4A;
 Wed, 17 Jun 2026 13:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781703080; x=1813239080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dZz8xhwNLUU3lA4DslrFPBkT3TS+vxd1terpgU5Sgoo=;
 b=mNQMOvT05MWcZRzQFn57u27RdFJ2Ch0vqsc/YpjEW0zf0MOBcnZy69cx
 rH0eGAdK5Euk8zE3uggGPlpOYwQkq6B7bu/NA6tuA/OWsXNMTo/4Ef6iN
 wusO3T7bTPDOhtnvEGVVUxP7exBaYTi9uWSp14qaf6EKexeRXdJzRwM1q
 A0jLYg7eXmES17aoebwAeULNk9vCYdnT1zX5qbJwdaVQxuz9SjevMeqON
 TMOpTUpNyPbt/mu28i42tDHVMzAaJnwte4piv3mXiVIms/ZF+iCgJMZB3
 SuzsZ3uW1ui4xQZQcoY6YmrLJshboUezmltQKADWHJwxK7Yr+hbToJz91 g==;
X-CSE-ConnectionGUID: MfcHEvaRStOer5VPCog0GA==
X-CSE-MsgGUID: 2u2vhPZESwututmA3N7aMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93981411"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93981411"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:31:19 -0700
X-CSE-ConnectionGUID: BoxiDAZnSJW7Z//8qecXig==
X-CSE-MsgGUID: pjrxHPK8QiynTmd19sQLPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245161517"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 06:31:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 06:31:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 06:31:18 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.58)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 06:31:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aSNMtnA0WNFQ1iUGXXQDRYikb8mv25Qhd/3WcQvo8DjUWfcggwrCUjGKMyez/iOY/rcKHAsu4DvWX99unlQfr58r7zCrL7ZZKpTTQIchtnUKqw73ZzRFDk2a/LXDg4oNG0Q8mA6vGb6Io9Wow3HeZpDUM3zOpb7g/DxcYlEWuzeK4QXjntUKvxnUFdVgWgKRE8315GpraD8ZRGtxG7Ov8mN5BgkaqUzd5Md5t/JB6H3lYKaienmvoONR2tbrqmuPohA+6MeRv7f2Pb5xaJIqLD2CvkbC0uPm59q9CkIa0qvLT67rYzQgTNHZ8Fi1E5xiIQGUsCL+cgtDOYEfy7Vn+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixdIJbQPM1307LsFds/Btg22IuoVF143Fu7jMmJsWzo=;
 b=KBDPx2jqesk/gA4ARzFC2Kp209JgAouENCMHRU0CZP0en1tx+3bINyK3ETBBAFqnGY3q4VDfGganF9jTtpm/BpijzG9G75/PnQQpZ9Be46j//najids/CxSMl9Wv8ssfKXfrNyuEYVRd93lKzWwc8GUvsOpqsVeBAIhuApw6AbLLCLQo0fSm3Hdg9xzG2Ghzg8sukOyB658y1niRCpee+x9WIggcGv5FrSrfr5F/RXs9pywBKmelLerpRGpZQ3Qdsn2xRIZ04ETX1L/lAKHICiNGZV+B46LOZ3p6p0h2+ucEzhTnVrBq4l4YZvBIHxTs072nk2h+3YA7ZDruNnkAIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CH2PR11MB8865.namprd11.prod.outlook.com (2603:10b6:610:282::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 13:31:15 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 13:31:15 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 00/16] drm/i915/display: Add DC3CO support
Thread-Topic: [PATCH v6 00/16] drm/i915/display: Add DC3CO support
Thread-Index: AQHc/axvU0gSEI0tWUeN7TQh2NzkKrZCvvVw
Date: Wed, 17 Jun 2026 13:31:15 +0000
Message-ID: <DS0PR11MB8049D096B2A4079783436EC0F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CH2PR11MB8865:EE_
x-ms-office365-filtering-correlation-id: 09132de0-7067-4c6a-c525-08decc74b4ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|38070700021|18002099003|22082099003|11063799006|3023799007|6133799003|56012099006;
x-microsoft-antispam-message-info: uQadOWbzkyDw9AjTlsxvGi9K17zvafmcU3VuVOEouWyR1ZH4qV2MWY2zx3zFUMrxQyPpXxxNk9p1G2WrKCvmhCwOhnOAFVhOGySZ9F9KfOvdE4jhUobqSl3UFTGruvRvAvMq+vPg+oft1CLohhtCRMdMWn+leTJF1aHsBK81dbRRSZ5ohCQPyPWExL8t40UK8g97Fj9d/OkjxrIamhlezpbAAmnCpwhOovlk8X9bH3p63SGb1owpDuXZ9GZ7tqZDUuwwpsC3veRPj3TJVSXZYLp8sh6SqKJ+Agig/mYPyy160ys2PWIJHXxPyW4algEML9yWhqfEEf4arDD8EDAKaDeQD4qg3rYf9Cw7yLTopFemuGosqfetEGuvONtZhHdPX++erA0PRZDSCsBe4D7jDEa30fkBJvmo/4inMDIzSXuUKyWqPtvcK9w/qmqdGh1+zxszXw0YbXwYCWPqz4H+PSx/oRYINz1Xwoa42NHv0ru1cwnLVPNgWtXW3x/yCA111P/YBSj4HuaUTEm9OSQ3Jj3AbdKHdME/vS+r4q3unwcEi9Q+taK3jHnz9045+zKoiEdnaq1u3VA+BEnWoUSCkLpNEt4dBMLLSdqE9tFfdjhcNPmUKjEThG3xxXRo8lp+KzlmZ4Tz52eLGb18nfKkIlJ6jbGjyfKMyqfBpuYNMuB1Exf1WkHmY4VSbGI3qbj/W1CFnEyQ9wKReIQRM5DCUzpIVecwz1bIuxcumPVhA3Yj9vpPYKovIJcw4lrv+hIq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(38070700021)(18002099003)(22082099003)(11063799006)(3023799007)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JyzcR+d+QG0MLY1n0xiXRBdnPObLUHr/2bR9DKNj0FxyE27bdj3nSM0SG18f?=
 =?us-ascii?Q?NmwQEkMnjZunXsT8FDBc7a6hQ9Ump95i5uN9quk7BJaNCZmfSf66pcGwlzcY?=
 =?us-ascii?Q?NOQ1s3bSHiYOqSyBrRImf9OOfibplTVh6OagAk1R1fadarUSQ6rVCidxzYMN?=
 =?us-ascii?Q?mAoyiCcxvJuyRcz1QA6JtxZBIk82updGh5p3hrMPOAMjQ73YvIuigrgEczS1?=
 =?us-ascii?Q?5obyELKrAdmw9ABJSHksvmFWevuPS4ZpwYdistSmRcXhM9nZSAKONfA36JfX?=
 =?us-ascii?Q?0HUTkezMUBQSleCVIbDNt77mwJwLkzsS7UMV7nEl2g6l/q+jl+7/OrQC/SkY?=
 =?us-ascii?Q?IFPAj7JOlFtKAYrt053zSNxk+qIK08lWAeWptaELujp48vSO2neBMh1CZiDK?=
 =?us-ascii?Q?t0KFrL37vv+DKelR9s9C+JWvdCfYppiw2bWBz6vuyXwjNZQcfdjTp+ev+TSv?=
 =?us-ascii?Q?gvLogdzCZ0F8G3aBdkaeQ1o57uafMySw+KhCopYZDykbyCoDVaypkqZOPRtJ?=
 =?us-ascii?Q?84KS59e4TxFHAJkxaf4Cgn2TIjz5JEmWmiBc13GmkWtuNscPs+E/Xpzvk6AM?=
 =?us-ascii?Q?rQxRlm/Q1TjRCFvsDyMoV690Nxg8wsziKzG3EUj4qU2OF7E/5fwt7d2r13Jl?=
 =?us-ascii?Q?9zOPHnX8qW7iQuiUhzFgB5uLx+MuY0f34O42l/GBYOi0dxyvuEjDsCcSnuGY?=
 =?us-ascii?Q?vUuMFTGRTeaUvo1f7lrKBEhN63W33yLydum+EjXkXnZNZc8vgt6bx7FRkMn6?=
 =?us-ascii?Q?LVpwecEcbYS9X91AqI3n+p0HEyCVyBxYh15Vphz7etHY2CKP1ufa7d3uqGuh?=
 =?us-ascii?Q?Dbqf5FAQhIZvSnT4UiBUYE0adwu8JileGUTCgbvYo3KXYKMuPtSFxOTev5Gs?=
 =?us-ascii?Q?XcDHbdyAWc1pqNi34/uKB/L3qAWb7E2kP5OmqZzXE8iCE8zNaGF9OzT5amgb?=
 =?us-ascii?Q?KFU3/+dmbZbAixPFTKZxKIeFi2F7Z3OHTLtLHOHkOXMG1GbDr3y1aEDKz5EO?=
 =?us-ascii?Q?nWM0w7Hwrr3n/SALFcwF+FF20RxvnsHjO+TMpWYm0eOKtHnAgzZ53Rh8zFpA?=
 =?us-ascii?Q?z6b7a7TLQTD5Z/5LE+ScUi/1ZtdbBkGnH21V5cVmWHZ0LZ8X2s5UwWl2htXW?=
 =?us-ascii?Q?Q/yNpzK7t1gH7VrFGSfn6B0cB8D20LKMadWuRki9wfpris5XC2Z19NGGugus?=
 =?us-ascii?Q?hTlb/wyZiCd4f4mHBT7+VIskUwoPufU9DA8sx8NjeVf05Zsoo8fTDYyBcPMq?=
 =?us-ascii?Q?7qmYdPXxddFB0jAQxnEoNeu8tiANMAC7VM2jibQPBOjVWJEAmyhxgfYP39vV?=
 =?us-ascii?Q?jcH/JpNYtdc+GQcD5CwgfP0sCmEPl8pep1uECKtLpNT5d6067I0gR8zVMcu5?=
 =?us-ascii?Q?iKMt8qYLkJ0Aa1SD3a9zjLjYdO6htNXBE23azYuHvuyaJ7jghpRaUQKtFFfe?=
 =?us-ascii?Q?dUClzqI0BYsGn+0n5liKy/DtB6oRMomv8Tr0p/2Z9tFGiqexPr0iXBTEua8M?=
 =?us-ascii?Q?yCDV8xNf0/BM9w2daPs+DezrFxKElfVyYwO3esn5B6FAnqjogVCeAbiCAA26?=
 =?us-ascii?Q?nLZZ38c5D3zg29jufXskgOgw41WiCApDwFC2AZBkNsWlf9kNCC/P3XL7U3ux?=
 =?us-ascii?Q?ZXNJVIZTg5z6xd4IrZk8ZjwWDFW723UFh2qA2iXMDdrlKfr09V8KxZyEYpha?=
 =?us-ascii?Q?EcZLFxssAPr7g4752a+plUfPXxX0xKxDs7dlgFgYhPaMpqeT5dPKTFz+p5w9?=
 =?us-ascii?Q?azh4k1nT9g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: D31PxEXSLOynAeaCa5jf6KDvq7/Fh4o8yzqoTVpqg5PedCkt0/H6GWvovspDSrz2Cohe0DORRctuLwPFRdTDK+RBCKcGsapRPXoNSXAqqSw1oFTlJx+w2rdrJCZkW7IBeRKbIr61v2RruA1tlYy57HOK6Ry+DhOTODFB0V5J66nnE9z0MGFXjrWfhUdAYCsLsxe4vT1xJk0FUngwnLhGa0jxuMEyN7+zQu1a0L6D02sdqQmw3FChMIbFEUE0HoSXNrVyyyeuw4/7S3kzMF4dBH4C+N5WOELQHN9euEawvMz4bIy430UTw7SiBk7wF1OKbluBC46ROec15a1yy9w2iA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09132de0-7067-4c6a-c525-08decc74b4ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 13:31:15.3059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: woitEqClQQwDKVr6g8H0xn5nPn+k3ezWn8EwuTX6pj2Xc/+kBI4y836Ro+CWU+2EjM3M65ssEl04lSHgZBhvtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8865
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 4A44369A205



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 00/16] drm/i915/display: Add DC3CO support
>=20
> This series adds initial DC3CO support for display version 35+ and adds
> debugfs visibility into DC3CO count/residency.
>=20
> The series also includes required PSR/ALPM updates for DC3CO enablement.
>=20
> Changes in v2:
> - Move dc3co state from intel_atomic_state to display->power
> - Squash cleanup and related patches to reduce series from 19 to 13
>   patches
>=20
> Changes in v3:
> - Fix trigger always returning zero in intel_dc3co_compute_state().
>=20
> Changes in v4:
> - Call intel_display_power_set_target_dc_state() only when
>   DC3CO is supported.
> - Add as_sdp_supported check for Panel Replay trigger.
> - Add 1:1 pipe-port mapping check for display version 35
>   in intel_dc3co_port_pipe_compatible() and change
>   dc3co eligibility compute logic.
> - Re-arm DC3CO work in PSR resume, and schedule it
>   from intel_psr_post_plane_update() to cover cases
>   where no PSR flush occurs.
> - Remove dc state validation that could break the fallback mechanism.
> - Keep dc5_reg initialization in the xe3lp debugfs
>   to avoid invalid register access.
>=20
> Changes in v5:
> - Move dc3co functions to intel_display_power.c.
> - Add psr2_deep_sleep helper API.
> - Rename dc3co_eligible to dc3co_allowed
> - Add DC3CO compute and set target state in commit tail.
>=20
> Changes in v6:
> - Add DC3CO allowed guard for intel_cmtg_program().
> - Enable DC3CO DC state in allowed_dc_mask.
>=20
> Dibin Moolakadan Subrahmanian (16):
>   drm/i915/display: Remove TGL DC3CO support
>   drm/i915/display: Switch DC3CO enable from standalone bit to DC level
>     encoding
>   drm/i915/display: Use FIELD_PREP() for DC state enable bits
>   drm/i915/display: Add DC3CO DC_STATE enable/disable support
>   drm/i915/display: Add HAS_DC3CO() macro
>   drm/i915/display: Add DC3CO support check
>   drm/i915/psr: Add psr2 deep sleep helper API
>   drm/i915/display: Add DC3CO compute and set target state in commit
>     tail
>   drm/i915/display: Store DC3CO eligibility in PSR state
>   drm/i915/display: PSR2: Set idle_frames to 0 for DC3CO
>   drm/i915/display: Enable DC3CO idle protocol in ALPM
>   drm/i915/display: PSR Add delayed work to exit DC3CO
>   drm/i915/display: Add helper to enable DC counter
>   drm/i915/display: Add DC3CO count and residency in dmc debugfs
>   drm/i915/display: Guard CMTG function calls
>   drm/i915/display: Enable DC3CO DC state

The patches are pushed to din after adding some minor fixes. Thank you for =
the patches.

Regards,
Animesh
>=20
>  drivers/gpu/drm/i915/display/intel_alpm.c     |   5 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  20 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_power.c    | 155 +++++++++-
>  .../drm/i915/display/intel_display_power.h    |  38 +++
>  .../i915/display/intel_display_power_well.c   |  49 ++--
>  .../i915/display/intel_display_power_well.h   |   1 +
>  .../gpu/drm/i915/display/intel_display_regs.h |  14 +-
>  .../drm/i915/display/intel_display_types.h    |   7 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  16 +-
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |   2 +
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 265 ++++++------------
>  drivers/gpu/drm/i915/display/intel_psr.h      |   1 +
>  drivers/gpu/drm/i915/display/intel_psr_regs.h |   1 +
>  16 files changed, 355 insertions(+), 224 deletions(-)
>=20
> --
> 2.43.0

