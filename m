Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MKyVJL75Kmpb0QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:09:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0722674516
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:09:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nRjqBYnG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36B6410F0A5;
	Thu, 11 Jun 2026 18:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F0110F08A;
 Thu, 11 Jun 2026 18:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781201338; x=1812737338;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D/lT+ptM6gkgH9mJcRRvpPvILuR4LPNeHujbFQpJoSs=;
 b=nRjqBYnGsIWqxLmSxTP4v0kbNDHqGP6U82YbUhQSZZ8Cx9PKwrwPlBd+
 nbK9Cb1ppWBWrEj8deYGBpoUmZKe5Z4Cx1ki35J5W5a/IVOXhFGOwz54G
 /X2i2wKKa3vJkWFI9XG5I6uQ1GQhr4gnYOzjGzUvbaQ0EwpXquml6ayK0
 /TmIz16iAjHxGm3nWcQqjIDYZxWFeS9GbbDadvVTeAUg7gO2tz43dbhdj
 aWoT8jces8s7dLX9K9JZcJfXSJOpUlupIUjO9PFWE9yc/jv8sV/QF1Cii
 tmp+3Dcj6qRHCy86qRvIWp0W8b0xePULx7YfgP9hrxS83tM6JTekljW51 w==;
X-CSE-ConnectionGUID: fAEvCtSvRxu/eBSaEHsT3w==
X-CSE-MsgGUID: U6MelSwJRNas8UUvl905XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="99602174"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="99602174"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:08:58 -0700
X-CSE-ConnectionGUID: F0MQRdaNTouVM5lC0Ekodw==
X-CSE-MsgGUID: Q6MJqqF1RvSG+c9JFeY1lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="246448939"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:08:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:08:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:08:57 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:08:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Idm4V5QVZNohsN9aVmd04Bjw+xFyrWcXz1MyxZICO8yChNTCxVSXHmR2slM/KOHvnZLLJPEjBIsuxfXbDcFjHNyH2Ljk/1U+eKTVvGo2okJIE1lBidPAtcB4XoQb3vHwaCQGoTsOpOZu+REdHMUjB5V7Q2bwY5Ltec9MVgzAiURmzt2ZFG6b5CB8yG7HWZMqgWk5f8a4RP3c+nXwf+xuwmhX/TStJDcSeJAHNNQHCw0KJ4NQc+EVcj6DguPX3CmkAK6tveSvJMs/WJu/NCT0oi+hfv8S+n0Cvk8k8WksJSUzXUQ9/ritT8lDxH392YIE9eOqPzDkrq3bIDGUct9FNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=acRu2GIkwexr5dRV8q2NF0dl0pGaV5a0fZPWRlRUKd8=;
 b=rbuHxOnr5TuC+TkIgjYAxf6XcoeahqnNVrFyMykmlRzVfI5SBpS73iezlofm75we9VigJeBTjkVgvJ6qm6m9HJtq1vOqqdvM8kU2R9ygK1lqM91iXrwrGqkPs26Z9wQWOAtmYYl0c7eWRqNbokK/N7cGhJ+8EXyFDNu7Vs187Vixsa3QI//V8OZhANh+l3sAnT1uBqapdL0ue2FH/Q7mc01T4yp5hXBatWdaECeeyzknjJNCidZrDKbKyS6Ebqs0SymG19oNR+7fDJkVTgsOOAxSHtGk3RothTeaj6UHIUjW72yhreZF2wkMm7YXV6papkiBvgFbNTeQROwRCkaViA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.18; Thu, 11 Jun
 2026 18:08:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:08:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 15/20] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Topic: [PATCH v8 15/20] drm/i915/cmtg: Add CMTG interrupt handling
Thread-Index: AQHc85ddP8gUt6Dk6Uq23l1sQRroMrY5sSjg
Date: Thu, 11 Jun 2026 18:08:54 +0000
Message-ID: <DM4PR11MB63602F30D10370E971B9ADF0F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-16-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-16-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB5865:EE_
x-ms-office365-filtering-correlation-id: 9276b996-0125-40a0-2368-08dec7e47fdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|18002099003|22082099003|4143699003|11063799006|6133799003|56012099006;
x-microsoft-antispam-message-info: A/XdTql+/m7FFRJ5jZidClddBf+uOZYM2neLM6H9/flkdAX7T1XKVfAZ1aG6NLKxKqRmHJwk357qlZS7TI88CkG/zEYiAJ9hGrPNHb4q5G0t9CNLl/RODeV/npQ4lHZNP5kJrrh8ubL8icYZjANAMX0Z+X954qZAEqzh+gW8dsQ8VqmjW5tDuLK3YPZuapahyBa2nv9882IXewwawc7o0nyJhkb2MHTyB7BWtCecwvvf5JTwjtPFiuyAAz8dlck3g0rKZ36pi+CCdNya/gUH4RgVYqS8jZfea5uAZu76TxFm4YvKNoASST7UfXNzEM5+5C/NzO4AuDa9rNMjdMoxBOpql/u2vs5JXN+JpmC+15PiUMCp7sieSdlqOo0tnBWFrwLiM68knGPNpdO6uR0kMq6IFrUOiaRIo5slD7JY+7ZTOmKwbRvZY96KUgS4Vt5nZneHvqdu+RFj97yyrciwirprZHTJxq+Ol8Rzl47yLKFTzCcpcp/FpCv2o0gXzpuzDH9JawmIorGqci6fJ1utfnOPlWjXuRiipCeWCirlnPgo3HKF1B6N1zvCZJN+u286U5KovqPseBxxrZRXtheF8SFmMiUWRkT/0WlQa8CZLDm88wxnqyV/NiWs+5DGoWqwH8gesvmGNe1KSgBKoVPVmRZHot8SczMNtxHPfi0901Y8iVSgATVdUoZA6QilIgLMw1z1SNBZpyTcg5c7a3OXxRErDJGfFtdKvxsQ7QZXeN0K2uFB5XX29kA49itJlRhl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(18002099003)(22082099003)(4143699003)(11063799006)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yd1VET4XEw37wIPm1SKTcOu7EBV5Oqv6KNVis+LsU3+K7IgvZHsgY9nKFA/E?=
 =?us-ascii?Q?28IO8gSsE7xjVeWgq7dbZ1yezN/qbljw4dGphEMv3VHRLVRzn894UVt9SHbx?=
 =?us-ascii?Q?ga13VtCC3fJJM7B/nW7g6ltIelo9jtV9Z9bqq0AgyVHvSBJH7ZVhPIlA34i6?=
 =?us-ascii?Q?X1fKS311IIEP3iSugZUhJagbidgPsZglRNL3dW+YP3YLHnV03xDCrPcmFAXi?=
 =?us-ascii?Q?hGiBdYpU7jZ8+P2X6JmHu28GKAYPp0XAs0znwDzQP95E1HpnHztFqikXBdOb?=
 =?us-ascii?Q?/ho9/eXy56dXL9sMl7usKUF03CqHNzg6aajPDS7Pz45geJCr9ShOLamUZtdx?=
 =?us-ascii?Q?ydBm5bIFZf2mJTG5A8sufUvMDTri2FjRVKCyNTxnP6RF9TFnAgZRxSwT1OnW?=
 =?us-ascii?Q?bNPj2OIZsv98BSSA6UswSw4PYwZnezHaMPB/8fKjUIOgIiXeefYmcvxDWzq+?=
 =?us-ascii?Q?T4zyMdpGVgiqBMf+wzsohUPC3Nooe1BMD2AHKtCyDWODM3Oq36ZspRlneHIj?=
 =?us-ascii?Q?wRLX+geaGla0OIVsWhYtqPmIzuwY0cSC4FYkKuAe0uoJSaR1LxjZREC6p8QV?=
 =?us-ascii?Q?9nN/jL1plF2ZVINuBdqYJYTJ9a4k+joZ0+wLrzrZZm+2t3wlSsCcCwIIYwjt?=
 =?us-ascii?Q?ZZA+Bur1O3GjlK8yzG6g1VKslrqJtlS99uydrwQZIVlW5nKtwReWZvmKL0Hk?=
 =?us-ascii?Q?cN/iVss9FEp2Mrfu2s58Gz315lSZXOBwrYSQpdeFJRbteR3JZvCTaAKH8Cj+?=
 =?us-ascii?Q?Z9LVuCqIhbZWSH9Flc/MqE+8Z6U3VKKyJcArFRSc0KCpDEJXTybdzGw0fzhr?=
 =?us-ascii?Q?Ni4nN8kttzSszrW3eljVFX+r68hyzfHACK841cgqjW6f7vDDy9ulD9FT8TmW?=
 =?us-ascii?Q?1lpjbojuekVLOyRYnvvCa2nfZEyA5WLsydlNqkxm/20zLCiRb92JkBPACcv3?=
 =?us-ascii?Q?p7J7NMGJJWj+uzxAMCi7R+ZyHw9XD4xW9aE+KPdqNIpdDK0rUEw4JxIGC4p4?=
 =?us-ascii?Q?4vYLFYw8YQ4pHkA3J156gIw5zETpXdTL3aRhx939FNQgjVnvjLQBDtJohb69?=
 =?us-ascii?Q?2z+MOYfqHyM0S3bUiaVtHtLhVP/tmUt7vmuk7NE3g9bRp8umvpaEEmUtUBTA?=
 =?us-ascii?Q?b5ZvYZONPnjIciTaaZTmQ4/YHhZFCW+8tG0Cjv386kbuKToL4900hfd4BTZ2?=
 =?us-ascii?Q?2Cgg5hD90wGSU9Pm74+rdQml/PD+2LwI9VOvngbRjBM+IHfQhXguYB/begcS?=
 =?us-ascii?Q?mbzhAe9PFSu0inLJRmsxC2yNHX8/GNweZvy+hz8xXgo5efwPHyHxX0xdkauU?=
 =?us-ascii?Q?O9wbr4xWOfLe4TJZsI1FTk9JnW+r5tmd68n5SSrSWyoKo+pRR7fjJ2pyQiBD?=
 =?us-ascii?Q?CFpg7iHGrj2elzeOacTd8wHcLkjoGYYCJ0mexGlZX8bdMAX+nx4EPNkCP61a?=
 =?us-ascii?Q?48LMMbFNcK8qDkWm8OH8dfSS6WkWpYIyPTrAmMNhQv9uJNL0/llOVSCrHRLe?=
 =?us-ascii?Q?CRI/GT40t/mqC/SYz7zHYgXm5NG6kis/M735PpOuevyx+oCHQdeB3m7RgySC?=
 =?us-ascii?Q?9ZZDTnTwwKhKkW5eSiFWM88MDRgQFsBLeqLriSJhuFTEiQxPQo/AP49k5Tb3?=
 =?us-ascii?Q?/aWff88ImvRLBmedCV5gkEBzcx9kNpWdwC9ETN/SowCeegnJbnXW4saoMZzi?=
 =?us-ascii?Q?I6YIveeBqNta6OvqXk0u1wOnSNK79b9mfmqJV6NmyAHdelQrpWnByw1u9GvA?=
 =?us-ascii?Q?R/2lZWm9Dg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UcQUErspeU+e17nw2B3NeSXJMrE2GH/J9JZz3yU0wTA61huUsjhzX73HdAj0ywznowoPXAzuNkZzo+RpUXSKFVnh362qhOwfrLwWwhq5EjB4Gm2MHA662zT4pP6nLmUvlXbdiGsFI9N7bQacBMMJpxDp+zYXrgB/WkcwqbU+kaXJrsl0qHPD1TDmeTDpFrrYbzAYXy4DwNx5l7YNFwemVYqDqihWXt/R87rFLzYfi8AmNdvENCXPkEsaG6HP+05SY4huSY5/+nwRTWiNIZ0BY9ozNf7plPXP6xOhE488GbI7QSy1oBuXOXzYUxB7nNDofUrWrq5zR40vJnz2ik3vvg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9276b996-0125-40a0-2368-08dec7e47fdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:08:54.3908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6QdxbDP+ZjIR5bfRLGwLzmtJN2AGK/4U5hYmIW3hO5lANQJKzDxrmF8N0UHCsfXXu+imZC6RkH5+lXzxOsCqzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5865
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0722674516



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 15/20] drm/i915/cmtg: Add CMTG interrupt handling
>=20
> Add support for the CMTG vblank interrupt, which is delivered through the=
 DE port
> interrupt block. Enable/disable the interrupt via the DE port IMR around =
CMTG
> enable/disable, and dispatch the CMTG_VBLANK_{A,B} bits to the correspond=
ing
> pipe vblank handler in the gen8 DE IRQ handler.
>=20
> Wired up for DISPLAY_VER 35. The CMTG interrupt is not enabled via IER to=
day
> because CMTG is brought up together with the eDP transcoder; this can be
> revisited later.
>=20
> v2:
> - Use consistent DC3co check as used in earlier patches. [Uma]
> - Use else-if instead of separate if block. [Uma]
> - Merge mask and unmask function as it is similar. [Uma]
> - Modify DISPLAY_VER() check. [Uma]
>=20
> v3:
> - Enable only vblank interrupt. [Dibin]
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 47 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 +
>  .../gpu/drm/i915/display/intel_display_irq.c  | 12 +++++
> .../gpu/drm/i915/display/intel_display_regs.h |  2 +
>  4 files changed, 63 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 20b74c2856c4..fb57fa41f721 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -13,6 +13,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_device.h"
> +#include "intel_display_irq.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> @@ -353,3 +354,49 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_s=
tate
> *crtc_state)
>  	crtc->cmtg.enabled =3D true;
>  	drm_dbg_kms(display->drm, "CMTG: %s enabled\n",
> transcoder_name(cpu_transcoder));  }
> +
> +static void intel_cmtg_mask_interrupt(const struct intel_crtc_state
> +*crtc_state, bool mask) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 interrupt_mask =3D 0;
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A)
> +		interrupt_mask =3D CMTG_VBLANK_A;
> +	else if (cpu_transcoder =3D=3D TRANSCODER_B)
> +		interrupt_mask =3D CMTG_VBLANK_B;
> +
> +	if (mask)
> +		bdw_update_port_irq(display, interrupt_mask, 0);
> +	else
> +		bdw_update_port_irq(display, interrupt_mask, interrupt_mask); }
>

Agree with Jani, this can be abstracted better.
Something like:

Add in intel_display_irq.c
void intel_de_port_interrupt_mask(struct intel_display *display, u32 bits, =
bool mask)
{
    spin_lock_irq(&display->irq.lock);
    bdw_update_port_irq(display, bits, mask ? 0 : bits);
    spin_unlock_irq(&display->irq.lock);
}

and call from various places instead of using the function directly.

> +void intel_cmtg_enable_interrupt(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	/*
> +	 * TODO: Currently cmtg is enabled along with eDP transcoder so cmtg
> +	 * interrupt is not enabled through IER, need to do some fine
> +	 * tuning in future.
> +	 */
> +	spin_lock_irq(&display->irq.lock);
> +	intel_cmtg_mask_interrupt(crtc_state, false);
> +	spin_unlock_irq(&display->irq.lock);
> +}
> +
> +void intel_cmtg_disable_interrupt(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	spin_lock_irq(&display->irq.lock);
> +	intel_cmtg_mask_interrupt(crtc_state, true);
> +	spin_unlock_irq(&display->irq.lock);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 79785afccc51..8fcb44d6398f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -21,5 +21,7 @@ void intel_cmtg_set_timings(const struct intel_crtc_sta=
te
> *crtc_state, bool lrr)  void intel_cmtg_set_clk_select(const struct intel=
_crtc_state
> *crtc_state);  void intel_cmtg_sanitize(struct intel_display *display);  =
bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_enable_interrupt(const struct intel_crtc_state
> +*crtc_state); void intel_cmtg_disable_interrupt(const struct
> +intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 4a821b0674fd..7ad722024c87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1469,6 +1469,18 @@ static void gen8_de_irq_handler(struct intel_displ=
ay
> *display, u32 master_ctl)
>  				found =3D true;
>  			}
>=20
> +			if (DISPLAY_VER(display) =3D=3D 35) {
> +				if (iir & (CMTG_VBLANK_A)) {

Redundant parenthesis

> +					intel_handle_vblank(display, PIPE_A);
> +					found =3D true;
> +				}
> +
> +				if (iir & (CMTG_VBLANK_B)) {

Here as well

> +					intel_handle_vblank(display, PIPE_B);
> +					found =3D true;
> +				}
> +			}
> +
>  			if (DISPLAY_VER(display) >=3D 11) {
>  				u32 te_trigger =3D iir & (DSI0_TE | DSI1_TE);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..fe851fe39222 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1458,6 +1458,8 @@
>  #define  GEN9_AUX_CHANNEL_B		(1 << 25)
>  #define  DSI1_TE			(1 << 24)
>  #define  DSI0_TE			(1 << 23)
> +#define  CMTG_VBLANK_B			(1 << 17)
> +#define  CMTG_VBLANK_A			(1 << 14)
>  #define  GEN8_DE_PORT_HOTPLUG(hpd_pin)	REG_BIT(3 +
> _HPD_PIN_DDI(hpd_pin))
>  #define  BXT_DE_PORT_HOTPLUG_MASK
> 	(GEN8_DE_PORT_HOTPLUG(HPD_PORT_A) | \
>=20
> GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) | \
> --
> 2.29.0

