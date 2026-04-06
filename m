Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PM3E/MT1GksqwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:13:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC9E3A6E6D
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 22:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E13010E08F;
	Mon,  6 Apr 2026 20:13:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jexlaRcm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B577310E02C;
 Mon,  6 Apr 2026 20:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775506415; x=1807042415;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OLpWaPUqJTuoj0Cert9U50NX0yWjRUE5mPqANrV1NW8=;
 b=jexlaRcmWtettKbCwpEXo6rqc6PEYSkaYFjsG3jUJH4Aa63DvI8oiPOq
 7w8+THzQfED9kP2A6jaIK0IvC/bERVaJzW96vXPKdN7n3YSuGMagW67r7
 zbvkObZV3CvqTyFmTOH3I4vgs6cooUUkGT/I2h+6kWVEN5DpL5H47ocHJ
 dzwJ7hPTg6Oc2TnkcrQNmRET2Q/kW57LSnTOadthkCg5snbbdGobIYnll
 gAtVhLwaqPfbvRjFPvaILGqQ5e2MPqdrCXLVc0V0iTx7qBmwLQk5SdrIR
 2NDWXn5eO3kYajGH1yXR+/e9/xbYPj1zli1y06ApWas1OhNHT/DFbBu0h A==;
X-CSE-ConnectionGUID: Lb3Ap186RIKXznqGQ49mNw==
X-CSE-MsgGUID: BbyolcPdTMmOklL99Vb/WQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="99086670"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="99086670"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:13:34 -0700
X-CSE-ConnectionGUID: fbsQ8PZ5Q4qISzW9bkP+vA==
X-CSE-MsgGUID: 3r2qHhgpQ7W9YCIbqOVMVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="226960474"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:13:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:13:34 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 13:13:34 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:13:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nmJMHkqqRAsdQ03221oSW0owyCVCtW2CXvlWO4HhflBTgknerPEWBFZyFXs/0hLJt9tpTI8QIndDpS68DXnVBWAI+PUwP2DjDDB9THgMMZhJnq2y97WeTv+02JldawsSATyF6Kvr8drZ8jvsjBl3kxfPJOgmmvAC6Nd690Lx0+Q6FG+MZGbMBj5P54qGwqFdAKMREcM9eA7K8F8DMgObREmNqAWSoE+EzQKhrHH+zQziit80VYiXSLka4LTLfpcUNj1gIHoEr6+A1+7vJ7fkbI2RqM7QWCV5G/DjHQITtlU4H6LmBRe08vhOIIk7J+zKzat4ccXdfchTVIFlaIZylA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G8Xpx6A5oEd1ouEoAQCb9Nj3t8HBBxHde0UNsNHwAZU=;
 b=ETBxYlUyBl1tb5y87EheW1NoTbA3Qb62NyPrxtL9FSoOYK/M5B1hppibiAlfLgHEJGUkhhbSGSq04v9AgIQ3v963K/u7MhP6hgWyWU8OKhDMUBwBnAqrnzkYDdT+YZ4vNyhcvA1j0wPOsQrdHVn5uictyN1XKl/jEi+oIdI2lsVM5fHttLPbR5OkVcWRiwdJLWzxgDFyqMbRavhXs1CrJ/5v+NEKfv5BI2995Z5/aXLNj7JJg56bHIzYqsjnUEqxAqpTWogxv6iDyWaBEZlGYPDtA/oecJpKBBShVLTbHFwX3MEPbeCCcItl6ntbSxvHs/hrhFOmtRzbUu3HbJRZ5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA4PR11MB9396.namprd11.prod.outlook.com (2603:10b6:208:56a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Mon, 6 Apr
 2026 20:13:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9769.016; Mon, 6 Apr 2026
 20:13:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v3 08/12] drm/i915/cmtg: modify existing hook to disable
 CMTG
Thread-Topic: [PATCH v3 08/12] drm/i915/cmtg: modify existing hook to disable
 CMTG
Thread-Index: AQHcswMUQk7sh32n4Eqd7ZG6EBWH87XSnIiw
Date: Mon, 6 Apr 2026 20:13:30 +0000
Message-ID: <DM4PR11MB63603BC96839DCAE106EB875F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-9-animesh.manna@intel.com>
In-Reply-To: <20260313153300.3530695-9-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA4PR11MB9396:EE_
x-ms-office365-filtering-correlation-id: 76fef01b-6988-4405-a44a-08de9418f8b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 6pqs94MoOQo4XYPMuOnQtFK5cyov7CY8JTTtwMSimo/TIKSIDX7NfNaB2oqZ0k8TPf8JLjqtAkoLx83VC5cj+wh0PNVoeSZnpjQoPWoQa2dIJ3czeCXjg3KW7x8Rk/hBFdwEBTpM3yMuIAZz0O7G9KHTZERRNukUjsCHl9D7SIpvx7bxI0CpNinERKZkn4bhdAxCMBJ1L2B8BywOmNSOASpAqoFX3b4FwKgBmrY00ugGf1YpjmKaf1eutsRvLvEikov6VOQnZ2/f85teBU2xwH9xqwFiYKKhq68Xz5MOv1ilYJyUzI75Mu1Jy5NCkIxsCQQ7D7xDHkYu1Jw8G4DPFvGj/IHmn7l9ZYJGdYf5fwuzq6bjBT8RoD7EHDsmttNc6Cgx8Z5nYF1npqiudYphhPZ5c0LcL2kN5bZujmzZr61gJu5n0/KaYK4/OnTLAcRVJJye+XNLbq3GVHVjQxNEfuetz1iyfbUCfi67SVY03D/zR0Fu8/znsqtSXKDskuBggvldgTTGl6nACmRLqJ4OV4xyES9XBH4SSJQhinem6Mfmi5py7w39jgme22zDHkY9/2ggzHoWM8HgjJ7QWtoSIMk+qf8YwyVSy7v67/51DzWM5QpW27Stn+5Hrkx0TGZgCBW1vX4e6UGcZxkp0QEHykwFml3fKQFr4Ggb5/EGQ46ZGSP7zv2CySYFzPkOBlAhuFp+NmB/hbwHTpfgJ53SC5abFM5uXZTkIgRQKbYI4Ohsm9qPAfz4BSfLMLzAOkiRmb9d9zG9S33Mp3AiVlG2F/TngzP0W7KJkUAkiaddnxs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?x9If1hRhIGNosq3N0+LxNOucVPiPWqUmxNNN7hiKM9DVq+G/HSQi0mLwKlO/?=
 =?us-ascii?Q?So8x3vKH+c94yIKAnBWCvDeCIPPwHteQVJbJFzRfBrbzNcDCcURfJSfKG4y/?=
 =?us-ascii?Q?UXLdcywwpKgqJOIr2ZLydnjSBGFonwUhq954rbRQ07u0WDHPsLIxk3nSWJ1K?=
 =?us-ascii?Q?3XwDkBTiapV1xaAMH0uTGA5SUutNzE04W0cRSScJu5ljYzG7OdiJIboBrGjd?=
 =?us-ascii?Q?RUFL6lOP7JjsH4JNmMJKLQMDAnPLDakSaEn9A3QQeudJ4KF1KkyGmhuzPLu/?=
 =?us-ascii?Q?IdGQrZDNFNJefwstwnD7XcqhzpzIuUuu+klFEWRheEeyaIC6t1rpWypB7xKg?=
 =?us-ascii?Q?t5PjgwTMsi8UDyUmnlG9MF93m0dHB4AcGpaBwSLRz7cvVzCzWWzMLvDN3+aF?=
 =?us-ascii?Q?rHxIFsSoyDCT3umVzR5uT81NzZL2L7rXQRuFN+jKPyrEf4FtjGp19xfwR1NV?=
 =?us-ascii?Q?PWDRRx/WIU7mPrtl4xKAgt1U3Qmdcf4JoHRYVYW/SEqLEZ8qkIcZ3MeCGxCP?=
 =?us-ascii?Q?hhbIOxg1fleK9HcP2OFoCkAMe2diaaVFfuqBgNbQMTPbh+OFEavLVUoleRuC?=
 =?us-ascii?Q?GV4/DE8+/fh9muPVOSvHD1G28tXM5AVuDF7rbbyKPZGy2VBUj0nA93EhGL7B?=
 =?us-ascii?Q?lOm1MOAR6AkQ7EkEcCDwehZvTIRTToWRBLUeLDYaEkfWqymOsSmYyfjHXzBb?=
 =?us-ascii?Q?ecr2Dd5guDdg+yzsqdul1x3tP2L6/TIoo2dae/AG0J2+LDkCmqrEk0WxbwIx?=
 =?us-ascii?Q?pf2nLTpEkz0e8u0qFNEW/Rm9fPYL2Wy/aB0dWEXiGB4SJOt2EjIRE3gauVqM?=
 =?us-ascii?Q?VANroxTx+mF0FCVf0teXeZ5DbDJZmWDcrzqAPTgBTSBoHoThuqJcbEY/7GGs?=
 =?us-ascii?Q?6/uzZigNVZ3cEGVoNg52Rsehj0mizxsWANesHDGEwIPvwudwDVXdB5YVl2gC?=
 =?us-ascii?Q?Pm+PBn+VIZLo3P70unwleG9BHeirAXj5MHiqMgWLkeQQI1U0yn5uhZWb0Z79?=
 =?us-ascii?Q?AJ3Q1QJ88QT6uaR5p+a2wFfc5oFFGWvRfB/eeXUGH+xxfIIfzRYpi0r9+/jl?=
 =?us-ascii?Q?zSDQ0tysWy6rLX1675sGT53SSp69Y/6VtEL7gnzWlOLY29tyIsU7Wlh6jib4?=
 =?us-ascii?Q?irTeNR9KeSDclP5Npb9qQH+CM1q6pDi+bY+IurwAKng66cSEqhHHDj0VisPL?=
 =?us-ascii?Q?+d33Fy0nrq+p5n6COeoJ3zW0j+FQdJjOshzsTSdugdHBBN2oUpiXLZAPaPQt?=
 =?us-ascii?Q?uuForBkgcUoTVV+uuhC1K7FHIOSZSFxMvhh06zpSQls0tmylR2RILdK3cr05?=
 =?us-ascii?Q?G9tGM0HaBCLndLp0E93vRhXkdgdx+dJSzbJJJrju7HHiMrjURwavl+9Kb5Dk?=
 =?us-ascii?Q?9K0OLn5J+duMvHDdhz1PmeWYF/r/Mn1kB8LBSJDgm5kiI5vSORrvGXOr7mAV?=
 =?us-ascii?Q?iarRIpxsjJWOGjhQQsSmQqYK7A0EYMni5alIaqmf5Ivoy69O+CkxMolnor/d?=
 =?us-ascii?Q?fe2nU+n08H/F8XuFhW8ab1pHMiHDTtdkFjfFMvTmEgOlzNDAl5KvTJi1jdTS?=
 =?us-ascii?Q?SAxsYWOjuCbiuuv63mzIs7R6fpDlwm7U3/ai9Z1Q29Ce0+jlXbTK+IcAwtLb?=
 =?us-ascii?Q?BuNynAy0CA2kl4Kg+HV3uMquMe/8aLFN8JnpW8udQ06gLREmRm10JdB9Z4au?=
 =?us-ascii?Q?XdgpOx9jrPlQN6OTgjl1GvCeuuOxsLiUsb1GRyH7OnRtTTUwaMJoKIYujYLl?=
 =?us-ascii?Q?EcExEdrJAQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MLnOB7Dpoo6nQ0bnz/dOtkkcYzIlPylYjMh9EZWaqPPMbsKH6YCFtuIFdf06bYMiQhTWNvP6iD2D660NNartNXtpYrZKWxf4vH/MMSrCZRX+r8YNs9w51C0s0KQc70nypCaVGwhNUI0kDJxO0RL0XOvxVWnkQjmVdZZ+Kb0/K5citcjflXiXq5In0OcJmlIyW+/PcBRRu6JmcHXdZ4vIe5B8XuGbSCJ2orzQvsMTucXEZB/E202SVQe86Mo3eqgJw3Fk+3QgMY6lqMrz6My00C2Dn325DAAFVoO1dK9/R38oykIbMqDNnEVS8MW97HiVihU4CQ5PzTQ/1/iU91ejUQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76fef01b-6988-4405-a44a-08de9418f8b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 20:13:30.5349 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MkEi9jW3vUULmkjoD/r9cYHuMmu8lD1ukXzFMW12ZR2Kdl9l1Wsfitd95bJuaohXBsqgDeCmNHUrUAMVN5mWFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9396
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4AC9E3A6E6D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Friday, March 13, 2026 9:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v3 08/12] drm/i915/cmtg: modify existing hook to disable =
CMTG
>=20
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
>=20
> Earlier cmtg_disable() used to disable all instances of CMTG which cannot=
 handle
> individual request for specific CMTG instance.
> Introduce cmtg_disable_all() which will disable all cmtg instances and
> cmtg_disable() only disable specific instance.
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 36 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  1 +
>  3 files changed, 35 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 703828339d4d..a6ac87fd552e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -125,8 +125,8 @@ static bool intel_cmtg_disable_requires_modeset(struc=
t
> intel_display *display,
>  	return cmtg_config->trans_a_secondary || cmtg_config-
> >trans_b_secondary;  }
>=20
> -static void intel_cmtg_disable(struct intel_display *display,
> -			       struct intel_cmtg_config *cmtg_config)
> +static void intel_cmtg_disable_all(struct intel_display *display,
> +				   struct intel_cmtg_config *cmtg_config)
>  {
>  	u32 clk_sel_clr =3D 0;
>  	u32 clk_sel_set =3D 0;
> @@ -157,6 +157,36 @@ static void intel_cmtg_disable(struct intel_display
> *display,
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
>=20
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 val;
> +
> +	if (!HAS_DC3CO(display))
> +		return;
> +
> +	if (cpu_transcoder !=3D TRANSCODER_A && cpu_transcoder !=3D
> TRANSCODER_B)
> +		return;

Maybe just use intel_cmtg_is_allowed which is used throughout for CMTG.

> +
> +	val =3D intel_de_read(display, TRANS_VRR_CTL_CMTG(cpu_transcoder));
> +	val &=3D ~VRR_CTL_VRR_ENABLE;
> +	val &=3D ~VRR_CTL_FLIP_LINE_EN;
> +	intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder), val);

Use intel_de_rmw instead of manually doing it.

> +
> +	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder),
> +		     PORT_SYNC_MODE_ENABLE, 0);
> +
> +	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder),
> CMTG_ENABLE, 0);
> +
> +	if (intel_de_wait_for_clear_ms(display,
> TRANS_CMTG_CTL(cpu_transcoder), CMTG_STATE, 50)) {
> +		drm_WARN(display->drm, 1, "CMTG: %s disable timeout\n",
> +			 transcoder_name(cpu_transcoder));
> +		return;
> +	}
> +
> +	drm_dbg_kms(display->drm, "CMTG: %s disabled\n",
> +transcoder_name(cpu_transcoder)); }
>  /*
>   * Read out CMTG configuration and, on platforms that allow disabling it=
 without
>   * a modeset, do it.
> @@ -184,7 +214,7 @@ void intel_cmtg_sanitize(struct intel_display *displa=
y)
>  	if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
>  		return;
>=20
> -	intel_cmtg_disable(display, &cmtg_config);
> +	intel_cmtg_disable_all(display, &cmtg_config);
>  }
>=20
>  bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) di=
ff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 12abbafa7d08..79785afccc51 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_disable(const struct intel_crtc_state *crtc_state);
>  void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state);  =
void
> intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state); diff --git
> a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 93bdf8e23546..d53891f3e3c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -19,6 +19,7 @@
>  #define TRANS_CMTG_CTL(trans)		_MMIO(0x6fa88 + (trans) *
> 0x100)
>  #define  CMTG_ENABLE			REG_BIT(31)
>  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
> +#define  CMTG_STATE			REG_BIT(23)
>=20
>  #define TRANS_HTOTAL_CMTG(trans)	_MMIO(0x6F000 + (trans) *
> 0x100)
>  #define TRANS_HBLANK_CMTG(trans)	_MMIO(0x6F004 + (trans) *
> 0x100)
> --
> 2.29.0

