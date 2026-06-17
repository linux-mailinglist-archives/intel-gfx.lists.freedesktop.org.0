Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wP+iD81aMmrvywUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 10:29:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292F76978D6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 10:29:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=K4S2laSA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30B810EEBF;
	Wed, 17 Jun 2026 08:28:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2181C10EEBF;
 Wed, 17 Jun 2026 08:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781684937; x=1813220937;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TE4oT9DYwVcj+yZEk2o9KjA/Bv5TA8NAtDwFUl8tFyY=;
 b=K4S2laSAXrQwB9woT/4FHu8t9vFhf+QUaXtGx+mMzM8ADRGIgE7OBqFv
 8E2c+kzkbeXg3VWwXocisTuqbo7Qe1AoCfUKClyjGbNAGiq4BcjBU0kqE
 DP3oYNsJhGl/Kz7aVbjbdvY8+XXN0YJwgpgHwGQIeNfYCCtiuXnD3TmdK
 6g6INaMspAg91Bn3bErfcFlachM2gPzhiI6N3SqA6cglM/Y0UrZ2cwT2m
 E7Wo6ArbtkmCisjiwIB/6D309Bc8esgQ+7s5iP6VXkXbeXx9VvGhnXcLF
 A18AGfHatSvIzWIWcJV7//MA9ekORE+4d0Iq53zTt9ak2itzgaKChTV+u w==;
X-CSE-ConnectionGUID: 4zOwSTaYS8K6aiRoB1ZAsw==
X-CSE-MsgGUID: KO3Usv1NQDiD6Z44K327zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86310916"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="86310916"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 01:28:56 -0700
X-CSE-ConnectionGUID: JAnhHES1R9Ki/3yMfptB9A==
X-CSE-MsgGUID: 9cPEkPnPRe2FiKwqJH5A1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="252961399"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 01:28:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 01:28:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 01:28:52 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.20) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 01:28:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VXe0o/zUUVVvDKgl91laA5PwfOpazp/gnOWCVuiV/hwpOMv1yZQOiHZjzhxKW889d8ectMyCjX+egLzs6cyZOPYqQoAu5clyyriXwnuwy9zwyKf0T+szWUF7VmsHEV6v2nvuVGTjDcFVNoKIGqAhMd08NQwMGHZ81GFJGgarv5KcPEunXGfMBc/ihPQX4tGmRQ/xjwbcuDrqwt3fRF+boQIasE4AC7IxuU0kQ1ongR0mUamJigkQ9jd6rjwTQJDaZo6eMMHDeHeQ21frUpyWJI2bXUFyMPQwxrwB5+noUfBbZMW4/05dVMJadndsAy2nq/hX9cHDknIuwAdY0TKwoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ak/R0OuPXXgp1tHhdDbsMUwD5mbBOcvyuC27VSgEk7A=;
 b=XWA8ZNo1gKzBFIKRc2bqvODLESee/morCzbVdhnR/VNA/Tfo0O0hthxVdMbBXl/KsFFrxpHerTUVdIjTJdQPgWGH0rTH2iCkCWPd1/eSPrNDA/WHBgFUFQpTn89PkE/Pfdp3WN5B1DJuSoKWnYERgRfC/lK+wF0skQlbJKGz8vGbWB6X0NHZPBDCdRfTJBkgQ/o+tLDN/dbHPlss6QYtTyeLQ+NZxyFI750+J5UhpcNpkEjaRj2VOcqHjmB4gm7J5iM0rNpoDDOFX6TKI84/b64jIdYfzqwnGgJpO7ZzIYkM8h8GWRHh81HqGKHjZ9hQTf0jjMV6RhxIOGJDWHUkNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SN7PR11MB7090.namprd11.prod.outlook.com (2603:10b6:806:299::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 08:28:49 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 08:28:49 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 08/16] drm/i915/display: Add DC3CO compute and set
 target state in commit tail
Thread-Topic: [PATCH v6 08/16] drm/i915/display: Add DC3CO compute and set
 target state in commit tail
Thread-Index: AQHc/ax8IMtzeq/LEkWtZmxEGwex+7ZCaxdg
Date: Wed, 17 Jun 2026 08:28:49 +0000
Message-ID: <DS0PR11MB80497596560EEE1C75744864F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-9-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-9-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SN7PR11MB7090:EE_
x-ms-office365-filtering-correlation-id: b6e15385-a1be-408f-3ab1-08decc4a7513
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|38070700021|3023799007|18002099003|22082099003|56012099006|11063799006|6133799003|4143699003;
x-microsoft-antispam-message-info: wjykA7MfnK4S88Pjs7tS6FuAJez7cnRVk3gqwbA+tG7kX7ocvhHEsOtN1Q1bqgEoMVPc+A470aXnYim/QK2rGqOcKuyXVLeOy6LmfF9wQtCVWSRizzWKpDF0q6U/TDn6HEQqfwAIw1S0SL/EiWdnoYRPxweux+9Ki9WAWH/GzubTB1vNICiI45NdKt6sMUcZw42lEuYMeKOSGKmFZsVGp5w3AfHU7rsNgnVcz+zg5Q05SKZ/+rFoWHakAtCMdbIZvifKcBOtGPn+E4Z/CHTUtB9eeJni1kzBfbA3wKY7qcJTD+j93U7z5BW45aPxPqRwX9nvWxJrpDxm3G4+tQTnsTirRawEQ8poPpBXeskc2aYPOF35zr6YC5ZdU8LAbcr+ESPdi2549FSqytz5m3tiHibzkC2NqEKF/b9VckXAopB3OBsAQMRxX4/mV20uj9y4+59SZYJJBkTt2IVPShzALjnaxOolhsevDAyYeL1mfkEojThndZiIvfKSyUvoIguHA3e8pRXHvOCXa8YmMNs2iB/fIM8mLAoH4K9iFZ15k77cfSAsrz877Ar/GU0gn7LuTBR8xCiz0ATVZRe21yY2vTlNDWea1PAkx5KSqn467tCExmzj/iK3Y4VpL89UV0lSfKrPuvIwDJPAYwHIFEtoRuSqsJO+q7S3lZzi0LtbL2BsNP5Z8rVxFhURhiQ5t+sqqvtJlnmwL1OwhWJoLEVRQlLgaigFl77cCUNiE40U/j80iGLEO+QzCXUDmIQIRWZ9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(38070700021)(3023799007)(18002099003)(22082099003)(56012099006)(11063799006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?a/Umm8hdDCBulMSapka9Bq+GCyE+UxQDw+h81XmtFABoZEs72mrnO9c4qQW5?=
 =?us-ascii?Q?uEiVDTwN7BSjJ0B4CrhnHaAg/tWQzgxKu0puCpsaYO4QRz09fCwxQ4dyPlP1?=
 =?us-ascii?Q?KPS24UDPrVjTQ8SS7snHJMkjMa/vRc0OFH2gKtJ5mK3M4vmn/5OBRMmrMx7U?=
 =?us-ascii?Q?mrCqy9w5fSU+3CjMETZwFAQiwfh3+1pF2z2o7f7ebUmukyxNsdIuLbwEO9Zv?=
 =?us-ascii?Q?giK4ALtKRGIUiRY2IkJiRBL8oYelyt5TpHJjY14BQ9r0Xfu9Ax3vi6wl882r?=
 =?us-ascii?Q?gdsaTbGW8WiFehL5wHI0cx7sNnIzBCjtUpOCPuqRk8Tj51F3GWYIfo+1Pubw?=
 =?us-ascii?Q?sMalpgZimpCh9TdZcWU2hwY5hdd/OT0sWElJZAPua4TldfIyN6UOCC1RpvQq?=
 =?us-ascii?Q?7vMu6HpMXPF7um8ZJGTDN9XuBPcehhYDG9vMLNHYyb9HUFJfhzG1OereQUuM?=
 =?us-ascii?Q?DD77TPSH4f791nnvXenyV4OwVL2VeBxr5fkil1GPeTh0+3FCoLo7TtMBGKHf?=
 =?us-ascii?Q?Ob0b21gAUFs/th3sRkqYU6y5ovZVJb7C6xU5szDsEu+pLxlTOQIREZY/jVRU?=
 =?us-ascii?Q?mWbL7V5tna69MEF4502felJUXgloFgTa64HaPpQr0BEw0VhE5U+KscOIVNPO?=
 =?us-ascii?Q?8HYFDRe7ui0aGUkHgX4BSTBTFyi5S/1QByrK1pTbCbGze8O3eLXEHFwZgZAP?=
 =?us-ascii?Q?TTR17pYc6eFSPWSDSMYy9ykc7jNNej7avd+VScXxX4xSSbXW9+lvRjMbuwR2?=
 =?us-ascii?Q?fBnbm/zaSW+2kqrGJ7if5qBCzGxN/5JpekmnG0yL51Pm3Ln9JzGtiR6VqkwC?=
 =?us-ascii?Q?e0I17ivGj5h0/XlidjyKE66Ph4ERwL1iVTR8GB/mu6a+yvI5fdldiItJiJ2B?=
 =?us-ascii?Q?avquAoC3SVb7v8M3lYAYebJ8koIqwmFvzK9P4br6tAxd0MQeKRds8M0HgaVJ?=
 =?us-ascii?Q?FMdmC6E3Oon0f6KL/oyp6fDOjm3+htol7S0H8a+wknSpGZltYFA/LI26NKvu?=
 =?us-ascii?Q?DrSlhD6WZ6DpnqCb5Yi9Q0eh/3rsYIKr4XHNRuq8J5iBXZJDRQvlWqmrHJPI?=
 =?us-ascii?Q?sdz39Kdj4HygR29ZsYiitYTPUocH4X1mh5k52jxh1PcB1uDayajMeFwn1vcP?=
 =?us-ascii?Q?C84ps/5HGXWdCQ72V80aUYbI63t62Z04P3GJqorwsp7SRkOsFB4CvNjMMTBu?=
 =?us-ascii?Q?2NIH5ssZi/vAj85PTJP1DAawaj+ROnDuK5X8vX1w5TCD2xwmM+1fh3G4sZjD?=
 =?us-ascii?Q?vGlTBx5jlT88LfseU3hL87v+2xhv8fkVfX8CdfElqDfw7m6S6JzcWDZAOvfH?=
 =?us-ascii?Q?c5yI5ExedVOXxCvjJeujFQonQOV/wku4yqoXdgGnMsOP6xWpYADJpmbuPmrb?=
 =?us-ascii?Q?/gs+Gnic6eS6bCKMhPMED6y4UnG+A+//PEHAobuMIIvxjJUZy0yBUriZQ5ma?=
 =?us-ascii?Q?0ZJFrwMM5XfLL0q0EvvmC2k4PIuiZro1TILqqB07at+Pcf/nizUQ8/9FXjqc?=
 =?us-ascii?Q?zcFivrtNn85Orgay5PGMFNq6hBAEo/zUimmqmjTldUreJvo20RxHYVeV033a?=
 =?us-ascii?Q?FFH58yH/XmWumghnftrrHo7JORtJ8rx3ptUMOp8hLYpjEU5mdDHhbwOJCmno?=
 =?us-ascii?Q?+5deRBpBuYe+rCUq693asGd4qrqJk9LgNo7Nbg/IMZwgpdX7Y/bWDeorZuG1?=
 =?us-ascii?Q?mGpWD3eJOVXiGWkIB+R7ZwPJBniTrJ9bYmIZH3SZalADcYC2GTxpoHfYO2XM?=
 =?us-ascii?Q?WQNExPMAxw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rNg2ftqICRTwykMqeUir+a87TvKKBV6HRy6eG5Z4eNzP0a5IyRANFHOJXQEgIFEy3Zv+m6zw5EGN/kJz88Kn11rqnvCwHL6Nj8K36Mb9lNvZ+lEzZ5SOk1gHAqtCFXwJ0aGQ2YUO+DQicDkuXL+5gGkoTMNRqmzznTuouxVtY9zYH4FD0DJb492oWHy1Jy8TFK6rNe14BjcQOH6LqZHa3ldS3bMGUMmrjX5Sylev/wcrv5a364LIGQkvbI0/aHE22q8Ua+FN86guHUu18Tsv2lYtz/jdgsFpnEDkzbmJ/38X2gViJ4BtTOd/NvSjz+k0MkeQM68pt7wj0PdwWoBCjg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e15385-a1be-408f-3ab1-08decc4a7513
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 08:28:49.6483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MQofJ45dXFkYUUs8JpIS8vkPT66lj/cZjYvkqu6VeT2Oal6MPZpZxdvfhNQ4NtZnLvbgbePWuUkiwoQBaHkEEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7090
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
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
X-Rspamd-Queue-Id: 292F76978D6



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 08/16] drm/i915/display: Add DC3CO compute and set
> target state in commit tail
>=20
> Compute if dc3co is allowed in intel_atomic_commit_tail() based on
> pipe/port constraints and runtime triggers and store result in display-
> >power.dc3co.
>=20
> When DC3CO can be enabled, request DC_STATE_EN_UPTO_DC3CO and
> reduce the DC entry delay. Otherwise, retain the existing delay and set
> default DC_STATE_EN_UPTO_DC6.
>=20
> Changes in v5:
> - Move DC3CO compute logic from intel_atomic_check()
>   to intel_atomic_commit_tail as it is not advisable to
>   change persistent state in atomic check (Jani Nikula)
> - Add psr2 deep sleep check in dc3co compute.
> - Move allowed computation logic inside dc3co update (Jani Nikula).
> - Add dc3co support check in dc3co allowed function (Jani Nikula)
> - Move all dc3co functions to intel_display_power.c and
>   rename functions accordingly  (Jani Nikula)
> - Clean up dc3co/dc6 power async delay in
>   intel_atomic_commit_tail() (Jani Nikula)
>=20
> Changes in v6:
> - Remove debug print from intel_display_power_dc3co_update()
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  14 +-
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_display_power.c    | 133 ++++++++++++++++++
>  .../drm/i915/display/intel_display_power.h    |  37 +++++
>  4 files changed, 181 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e76aa6c8dab6..ddcf2d2054b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7465,6 +7465,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D
> {};
>  	struct ref_tracker *wakeref =3D NULL;
> +	int power_async_delay;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state)
>  		intel_atomic_dsb_prepare(state, crtc); @@ -7573,6 +7574,8
> @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up.
> */
>  	display->modeset.funcs->commit_modeset_enables(state);
>=20
> +	intel_display_power_dc3co_compute(state);
> +
>  	/* FIXME probably need to sequence this properly */
>  	intel_program_dpkgc_latency(state);
>=20
> @@ -7674,11 +7677,12 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  		 */
>  		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>  	}
> -	/*
> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
> -	 * toggling overhead at and above 60 FPS.
> -	 */
> -	intel_display_power_put_async_delay(display,
> POWER_DOMAIN_DC_OFF, wakeref, 17);
> +
> +	power_async_delay =3D
> intel_display_power_select_target_dc_state(state);
> +
> +	intel_display_power_put_async_delay(display,
> +					    POWER_DOMAIN_DC_OFF,
> wakeref, power_async_delay);
> +
>  	intel_display_rpm_put(display, state->wakeref);
>=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 3c17cac1eb97..17f7d3abdb9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -538,6 +538,8 @@ struct intel_display {
>=20
>  	struct {
>  		struct i915_power_domains domains;
> +		/* DC3CO state */
> +		struct intel_dc3co_state dc3co;
>=20
>  		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely
> read */
>  		u32 chv_phy_control;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 9e66f9a4fcdc..2ee38ba1fb2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -14,7 +14,9 @@
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
>  #include "intel_combo_phy.h"
> +#include "intel_crtc.h"
>  #include "intel_de.h"
> +#include "intel_display.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_map.h"
>  #include "intel_display_power_well.h"
> @@ -30,6 +32,8 @@
>  #include "intel_pch_refclk.h"
>  #include "intel_pmdemand.h"
>  #include "intel_pps_regs.h"
> +#include "intel_psr.h"
> +#include "intel_psr_regs.h"
>  #include "intel_snps_phy.h"
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
> @@ -391,6 +395,134 @@ bool intel_display_power_dc3co_supported(struct
> intel_display *display)
>  	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D DC_STATE_EN_UPTO_DC3CO;  }
>=20
> +bool intel_display_power_dc3co_allowed(struct intel_display *display) {
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +	bool allowed;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return false;
> +
> +	mutex_lock(&dc3co->lock);
> +	allowed =3D dc3co->allowed;
> +	mutex_unlock(&dc3co->lock);
> +
> +	return allowed;
> +}
> +
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +u32 trigger) {
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return;
> +
> +	mutex_lock(&dc3co->lock);
> +	dc3co->trigger =3D trigger;
> +	dc3co->allowed =3D !!trigger;
> +	mutex_unlock(&dc3co->lock);
> +}
> +
> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
> +					     const struct intel_crtc_state
> *crtc_state) {
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +	enum port port =3D dig_port->base.port;
> +	int num_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> +
> +	/* Need to follow 1:1 mapping because of CMTG restriction */
> +	if (DISPLAY_VER(to_intel_display(crtc_state)) =3D=3D 35)
> +		return num_pipes =3D=3D 1 &&
> +		       ((pipe =3D=3D PIPE_A && port =3D=3D PORT_A) ||
> +			(pipe =3D=3D PIPE_B && port =3D=3D PORT_B));
> +	else
> +		return num_pipes =3D=3D 1 && pipe <=3D PIPE_B && port <=3D
> PORT_B; }
> +
> +void intel_display_power_dc3co_compute(struct intel_atomic_state
> +*state) {
> +	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	u8 active_pipes =3D 0;
> +	enum pipe pipe;
> +	u32 trigger =3D DC3CO_TRIGGER_NONE;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return;
> +
> +	for_each_intel_crtc(display, crtc)
> +		active_pipes |=3D crtc->active ? BIT(crtc->pipe) : 0;
> +
> +	active_pipes =3D intel_calc_active_pipes(state, active_pipes);
> +
> +	if (hweight8(active_pipes) !=3D 1)
> +		goto done;
> +
> +	pipe =3D ffs(active_pipes) - 1;
> +	crtc =3D intel_crtc_for_pipe(display, pipe);
> +
> +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +	for_each_intel_encoder_mask(display->drm, encoder,
> +				    crtc_state->uapi.encoder_mask) {
> +		if (encoder->type !=3D INTEL_OUTPUT_EDP)
> +			goto done;
> +
> +		intel_dp =3D enc_to_intel_dp(encoder);
> +
> +		if (!intel_dc3co_port_pipe_compatible(intel_dp, crtc_state))
> +			goto done;
> +
> +		if (intel_psr2_in_deep_sleep(intel_dp))
> +			goto done;
> +	}
> +
> +	if (crtc_state->has_lobf)
> +		trigger |=3D DC3CO_TRIGGER_LOBF;
> +	if (crtc_state->has_panel_replay && intel_dp->as_sdp_supported)
> +		trigger |=3D DC3CO_TRIGGER_PANEL_REPLAY;
> +	if (crtc_state->has_sel_update)
> +		trigger |=3D DC3CO_TRIGGER_PSR2;
> +
> +done:
> +	intel_display_power_dc3co_update(display, trigger); }
> +
> +/*
> + * Select the target DC state for this commit and return the async-put
> +delay
> + * to use when releasing the DC_OFF reference.
> + *
> + * Picks DC_STATE_EN_UPTO_DC3CO when DC3CO can be enabled
> + * otherwise falls back to default DC state of DC_STATE_EN_UPTO_DC6.
> + * The chosen target is programmed via
> intel_display_power_set_target_dc_state().
> + *
> + * Returns the async-put delay (in ms) to use when releasing the DC_OFF
> + * reference: DC3CO_PUT_ASYNC_DELAY_MS when DC3CO was selected,
> +otherwise
> + * DC6_PUT_ASYNC_DELAY_MS.
> + */
> +int intel_display_power_select_target_dc_state(struct
> +intel_atomic_state *state) {
> +	struct intel_display *display =3D to_intel_display(state);
> +	u32 target_dc_state;
> +
> +	if (!intel_display_power_dc3co_supported(display))
> +		return DC6_PUT_ASYNC_DELAY_MS;
> +
> +	if (intel_display_power_dc3co_allowed(display))
> +		target_dc_state =3D DC_STATE_EN_UPTO_DC3CO;
> +	else
> +		target_dc_state =3D DC_STATE_EN_UPTO_DC6;
> +
> +	intel_display_power_set_target_dc_state(display, target_dc_state);
> +
> +	return target_dc_state =3D=3D DC_STATE_EN_UPTO_DC3CO ?
> +		DC3CO_PUT_ASYNC_DELAY_MS :
> DC6_PUT_ASYNC_DELAY_MS; }
> +
>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)
> { @@ -1070,6 +1202,7 @@ int intel_display_power_init(struct intel_display
> *display)
>  		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>=20
>  	mutex_init(&power_domains->lock);
> +	mutex_init(&display->power.dc3co.lock);
>=20
>  	INIT_DELAYED_WORK(&power_domains->async_put_work,
>  			  intel_display_power_put_async_work);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 41b4be9018b4..546af67b680b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -9,9 +9,12 @@
>  #include <linux/mutex.h>
>  #include <linux/workqueue.h>
>=20
> +#include "intel_display_limits.h"
> +
>  enum aux_ch;
>  enum port;
>  struct i915_power_well;
> +struct intel_atomic_state;
>  struct intel_display;
>  struct intel_encoder;
>  struct ref_tracker;
> @@ -131,6 +134,36 @@ struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>=20
> +/*
> + * DC3CO enabling triggers (bitmask).
> + * DC3CO may be enabled when at least one of these triggers is active.
> + * Additional constraints may still apply.
> + */
> +#define DC3CO_TRIGGER_NONE		(0)
> +#define DC3CO_TRIGGER_PSR2		BIT(0)
> +#define DC3CO_TRIGGER_LOBF		BIT(1)
> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
> +					 DC3CO_TRIGGER_LOBF | \
> +					 DC3CO_TRIGGER_PANEL_REPLAY)
> +
> +/*
> + * Delay to re-enable DC5/DC6 states by 17 ms to avoid the off->on->off
> + * toggling overhead at and above 60 FPS.
> + */
> +#define DC6_PUT_ASYNC_DELAY_MS		17
> +/*
> + * Use minimal re-enable delay to allow DC3CO entry on
> + * the next idle frame.
> + */
> +#define DC3CO_PUT_ASYNC_DELAY_MS	1
> +
> +struct intel_dc3co_state {
> +	struct mutex lock; /* protects allowed and trigger fields */
> +	bool allowed; /* DC3CO compute result */
> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
> +
>  struct i915_power_domains {
>  	/*
>  	 * Power wells needed for initialization at driver init and suspend
> @@ -185,6 +218,10 @@ void
> intel_display_power_set_target_dc_state(struct intel_display *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display
> *display);  bool intel_display_power_dc3co_supported(struct intel_display
> *display);
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +u32 trigger); bool intel_display_power_dc3co_allowed(struct
> +intel_display *display); void intel_display_power_dc3co_compute(struct
> +intel_atomic_state *state); int
> +intel_display_power_select_target_dc_state(struct intel_atomic_state
> +*state);
>=20
>  void intel_display_power_runtime_suspend(struct intel_display *display);
> void intel_display_power_runtime_resume(struct intel_display *display);
> --
> 2.43.0

