Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ek1QCBoxMmrSwQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:31:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A54696977
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:31:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FIu4x2dV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D3610EDF1;
	Wed, 17 Jun 2026 05:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5BB310E93E;
 Wed, 17 Jun 2026 05:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781674262; x=1813210262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=km2fFDhkSL8mfrM56qpLzam6t2ZY8i5Z1T3lhwKNnbY=;
 b=FIu4x2dVGEGbWM61tPo8ip6+1e0bUbVUCgnxwFmCHZLh8yXa4j+qo9NQ
 /oTRamvP+OmFWy7uMzJ+DX0f95UGaQARAsF+FhKNd7xpzleRwYSEukVO3
 13bIhMA3PecVNzq5F28B2p/yQjiDaAmyr+q7ns3uMJnC7WwOgEB0De+3z
 9y5TTfj7OjsDNnjUp1US4DE+Rjuv2FvaIoqhy4Ic54TtPcaQsJdplwee8
 lyuDP+AZh6pcSyXnLroCtiINxmCUhsuxXLml55wRC2DgXwqSbdukbbpqj
 kyFI40XVoAVCr0LjVhBGX8rADWU/KOPzIThhglrvR/Uh5CrF4LI5Qt3VP A==;
X-CSE-ConnectionGUID: F7nGZpxFSV2BL2F8zAbMOQ==
X-CSE-MsgGUID: eiceCgBER0e87vpvc2LKqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="99871034"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="99871034"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 22:31:01 -0700
X-CSE-ConnectionGUID: Cv6CuhLwRgKGAqF3cdCp9g==
X-CSE-MsgGUID: uymHU90kS2+bZQ5zrZTjmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="253080545"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 22:31:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 22:31:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 22:31:00 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 22:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xK0+EgAy/kpD2EQh0M+Dv6aCuJKsZ6YVOuKVqG5/pQWdeo9a9dECwbak9waXVM32Eyv9Ia8cTHwidlTLhOLvaglHHQ1BpDMNWyRvsJBXz8CKIwCb6MkbFnKcgbrafTFEUZx9RFYnXVqAP5g9gRAnu8ELHgMSskL11oiECkVYeiHsUgHFFfZeupCCbgAk+cdMZOZKXJz9UFFNdaZ5KC7ZWAIVE7QGRcXJpXYYBb4kUwafouUp8WQprL5txGtMunfPmVcncuhnrAU872QmC5L54pZEjWHJwy8bz/soDk34scET9HdPo1YXQZn7TnmASBheUpgMgQ/y1/9mi2tVdZg6NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d3g99pOWpd/SJaKKqn+qBIN/rqNYs/sjeDY9XfZxslI=;
 b=fPGmDTjAgWD+dBMRIruqUmTkPmv6nCtqtp48L9rf2aTh6qkbAJom4Um6MYaacxVnr0ADMpVyUh7R/E+qdbUOIpHRgTPOXcg8OXWe4qMSdP7rjwgdjnJPGIzcXuvLF/RDPklJjnE5YHt2xkjdmTn2CTsIAX6gQUXAcY62Q2ejU4HIYUc5CqAOqs3j0+lm4AOBZMemRe0Kl9BRk0ESg9hVAEM/zjmlLwUcxDkP7a3Xip1dwhH8SCfDSrMtDxDsJFFUuHgG1vp0WCubS4TpEt17awHSTDG4MXpT8UdOovLJVuEPBtuU4a5QiG/9dais9bo1wAY/EyDzNRBPB73vEvbc7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 LV2PR11MB6021.namprd11.prod.outlook.com (2603:10b6:408:17e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 05:30:57 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 05:30:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 02/16] drm/i915/display: Switch DC3CO enable from
 standalone bit to DC level encoding
Thread-Topic: [PATCH v6 02/16] drm/i915/display: Switch DC3CO enable from
 standalone bit to DC level encoding
Thread-Index: AQHc/ax0d6og/ADn8EK0qxT20zq0cLZCOOJQ
Date: Wed, 17 Jun 2026 05:30:57 +0000
Message-ID: <DS0PR11MB8049C7DA3AA959BF990C5A76F9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-3-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-3-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|LV2PR11MB6021:EE_
x-ms-office365-filtering-correlation-id: c6e999c6-09ca-4430-41ce-08decc319c01
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|38070700021|22082099003|18002099003|3023799007|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: +lAtWa3brHSKMPtj4Ukwe0DOELHW9keCyx6N53xfDjNTvkVDGVXJqI0G34RwWqUCtxJUKuniRdU60Fi8C4RAEeUwwiPEHlTKUZvNNas8pEQYcM/6FzNuuAGYFY1YKI0KWifI6chNqg0Ypnj3FStvQORQfrVK/dIbM0QeJjCvEVPiT80ciSDYOBMxn9QYPMgHRqiobSFgLbYyTFkSa/O0X2GbsUT2GMwGuDyjapZieJ8Hs8l+C+w7dvBDNyiCgfuSdumGtEPO446KfhY0ZCHD1MoqqaCRHKqHESRb7OKTCabMiaCi4nDZ1e8g/s3GzwDiW39flWMO/2qjWlv2ZAjWJ3b46mZmmwGNxAeEpqXUCRWCiRwiMgF8glm7ozP+MnEZtKFKpyJXVkZJ/RT/aqwGhrTdxLv9rOd6x8Td/C08JChOvRXfxx66IzRT3zQvmvmT6CMsGAPyFTRy3hFoTEf1A9fOZo1OmHGwBMOoamEuHKOxd6OKEdmqkt7akHHwYx3xc3B+oaDCBAUUHFxccLw7pQhs9nFCqfP47dxO4I6ni6w/YWPWp+2jpyL+o2H3fPllmdDIhhMhy2b2jVdHIL9OLEqvQ8KO4TPEZ/oCaICmk6lqCzb5vKNOu8/xotlTRuHmgkYFBztSZDzlI2wY4bPdSjcFo2OFqmuO4B1KKha2plcsAKwL+HakPlPSZYrodzAaRQeOAB4f8yjV6tn2z811+tbIaq8rI1qsQW5bQyzSbyhAWl7djfXwYfzh0H+eqAvd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(38070700021)(22082099003)(18002099003)(3023799007)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VYXcHVtbwtCAn9XRkVbtOYvHwCaxw17yIlLYXqJYB1YxjtWBEVCg0gg5nwK3?=
 =?us-ascii?Q?DnuHGeP6awk9od/IdN1ZZ5lI/ag/2hDwt1YSKalURMduBZ0D4r7olrIupZn3?=
 =?us-ascii?Q?UnjH3PjYiv1kef/KPp7wYzBXbdodCVCVwEdaDvHZlzugW1ouyRiH8qDOH3jw?=
 =?us-ascii?Q?wNLpISB1CNpYZSQx5z2IsOU4yJx0cttBsTHv0vbNkL4a2kRdnhNuMuDRNnBt?=
 =?us-ascii?Q?2kF/per3ErWxq9Swn26/dADY58HJc5o5ilGAA8yXuAB+foytW1tAYyxfIvzL?=
 =?us-ascii?Q?JFWc96uYQyR/yxfMNs7Vlc63Y/YxVTu2Hm2CuB5L7e8/ArfMc+XnJwFVADro?=
 =?us-ascii?Q?Ud3gGJIx47Bkd9jiZ3ExT84KZo5lVZBqiWx0POkJogVs4gQgILZ13OHpx/+p?=
 =?us-ascii?Q?J8h07u47uA2aAFAIK4VwZK9RRhEUMRB/i7UHJSBWYwEKHZR/A7FJyBNOYCLM?=
 =?us-ascii?Q?tMnp1pZJ88gAjDvoNan8lA5IDWvmcDFJORyTNRMd6d5qn6u3gg835viuyHmW?=
 =?us-ascii?Q?n9pH3DLI6yrvODPKNsDRLQ+i2FHX0EzxULErnI3EgD1VrTy4XlA4SfnHthvi?=
 =?us-ascii?Q?gAeqrDIHL8vqpFAcRGTiKVqtnMrkQ7sDEqgi8f+8LEccgapElEFrLpTqtFpF?=
 =?us-ascii?Q?hvNftmNRXYiJfddWO9fw1nzIDYquUaYazwjm795/b/r+/Sez/otJ678hwp/w?=
 =?us-ascii?Q?KNolO4osnCNwLaS5nKhiqN1dBjciTjfALLKGCM3H0EEzo9tqtG6SnCdHCvum?=
 =?us-ascii?Q?u1UI351fDR6KQs5bxY+vyGqxxK3nfNdAdR+wfoBxRmTONSnKvdm5UqJeW625?=
 =?us-ascii?Q?Eg0gESHdLNbXMaLbxper1RtC91nDSvCpQFN8nn2AojiOsQOAsqddpV+vx7FM?=
 =?us-ascii?Q?iJxkmUpuZZVq2bBmETTGEsuMHEYW3AvUg0WxfgzF+44CDYx3nOwchCSXIjh+?=
 =?us-ascii?Q?8Konlt4321kLRMsZAKfcIjH8KbpvbCdSPXQAAkZ0t3fGDlKnKXadYmktuBA0?=
 =?us-ascii?Q?F6CNWdI02VTd1usixzLau7U3piWyqz1BU22/34BGZPLdsFOUKPeF4M+/Kute?=
 =?us-ascii?Q?1eCN4+CjXCJF1HBJmIsVAuA13sHkrWhhMnef84DHByduOrw5Dai/bdLKBm6o?=
 =?us-ascii?Q?D/+wPg1lu6RR+3swBVYPqpZ/046FaD1vlqEe3CgDwh64Kl4Obk7yxFoMAfuI?=
 =?us-ascii?Q?WpScBEe/a/rF7ztLO35aQ1NNnIYGcfxVdC74phXkyI8CvnbO2sY8ihi8uHz/?=
 =?us-ascii?Q?/B8u+5MIrgrMsMBOXXrPrkb/vKKeWqg1L+If5Ev1mJlycGeUOG2f38uTi7Fj?=
 =?us-ascii?Q?RbFay3Il6ly1CzzYS0dOIDi9ar7+FrpqjqPlPEkpFdUOc7RWTvnQgdaSlhDq?=
 =?us-ascii?Q?p789Pg79X17AgrsH4QvEUmUwAUMkxAE/my3lSfwbtxxpYLf8ac9dF8ryI4Uq?=
 =?us-ascii?Q?j9S1sFPSaTl+beKp4+CkZoWjn9DTLotrVLj5dOWjEptdvatslQ/F1tkRFhGq?=
 =?us-ascii?Q?YpD6cak7DpIHlTV5xc3DnLt5+xcbARWVoBwq2m9pWJC+LzR+kfGqfFKGW91V?=
 =?us-ascii?Q?E1ulFJZ7d28NmY+DD3eWoz6hZG//RDPi8Ko6JcgGn3ykDvGzwebJV8zwtC7/?=
 =?us-ascii?Q?vqSTgkGaCdjLnpKTic1bZnbDm96ReBXEmgDsTs8RmuD2KcwXb4gpV4HDGrrd?=
 =?us-ascii?Q?pLkgmhJ1xMc8iv92a7XJgK1JqYs0NDrf3ho21rdb1bjqQhxJkbh48aeo7UOE?=
 =?us-ascii?Q?mkFcKWP1mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SsOHMtq/zNI7z9im8tlRrKchDDrI5+jhuHaiBlSoLN2iMOfaZiB6ys3xfFzQsxeWMvvjW8rqIW2Ulel3yVKmS7665IUd/dkz2jmNSVH4ktrpaHkaeJkvNaaY0yRmUA3ImJC1kVkHNSy03tcIQsai21SYvjbJMOL6jwWXaKi6NlSu4Eq3IUhYcRczZ3Kl/ngQO14Tek4CoZaAMxX3sOLY/qTM/SM0POZbbZKMVouMRvbMaRANp5bwzoDL50Y5UpbhCfFj19h5j461QEv3uHqB9I5REBQoEKaxqCC/ZDq8GOHFB1E6k+jofur4UmiPzgeV5B/esXAcghZclSkMGKkD7g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6e999c6-09ca-4430-41ce-08decc319c01
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 05:30:57.4812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WJrRxqumW5sm8teBcvoxkg9yFizOv+F4F608kIgLuiVDPI5xF+Sie5KMDh4VBWZMVbwmscL0a+A8hIxMrSkbtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6021
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: D5A54696977



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 02/16] drm/i915/display: Switch DC3CO enable from
> standalone bit to DC level encoding
>=20
> On platforms prior to xe3, DC3CO was controlled via a standalone enable b=
it.
> Starting with xe3, DC3CO is encoded as part of the existing
> DC_STATE_EN_UPTO_DC* field.
>=20
> No functional change, as DC3CO is not enabled on platforms prior to xe3.
>=20
> Changes in v2:
> - Update commit header (Uma Shankar)
>=20
> Changes in v5:
> - Update bit mask to reflect DC3CO (Manna Animesh)
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Considering the fine granularity control for DC3co will be taken care in fu=
ture and current implementation is good for feature enablement.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c      | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 4 ++--
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
>  4 files changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 9783257651d2..e313d719fea1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *displa=
y,
>  	static const u32 states[] =3D {
>  		DC_STATE_EN_UPTO_DC6,
>  		DC_STATE_EN_UPTO_DC5,
> -		DC_STATE_EN_DC3CO,
> +		DC_STATE_EN_UPTO_DC3CO,
>  		DC_STATE_DISABLE,
>  	};
>  	int i;
> @@ -341,7 +341,7 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  	 * CMTG must be restored explicitly after DC6 exit. The dc3co_to_dc6
>  	 * flag helps CMTG determine whether restoration is required.
>  	 */
> -	if (old_target_dc_state =3D=3D DC_STATE_EN_DC3CO &&
> +	if (old_target_dc_state =3D=3D DC_STATE_EN_UPTO_DC3CO &&
>  	    power_domains->target_dc_state =3D=3D DC_STATE_EN_UPTO_DC6)
>  		power_domains->dc3co_to_dc6 =3D true;
>=20
> @@ -1022,10 +1022,10 @@ static u32 get_allowed_dc_mask(struct
> intel_display *display, int enable_dc)
>=20
>  	switch (requested_dc) {
>  	case 4:
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC6;
>  		break;
>  	case 3:
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC5;
>  		break;
>  	case 2:
>  		mask |=3D DC_STATE_EN_UPTO_DC6;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 2f0d0a77c1a2..71ea2ecc8c88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -772,7 +772,7 @@ static u32 gen9_dc_mask(struct intel_display
> *display)
>  	mask =3D DC_STATE_EN_UPTO_DC5;
>=20
>  	if (DISPLAY_VER(display) >=3D 12)
> -		mask |=3D DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
> +		mask |=3D DC_STATE_EN_UPTO_DC3CO |
> DC_STATE_EN_UPTO_DC6
>  					  | DC_STATE_EN_DC9;
>  	else if (DISPLAY_VER(display) =3D=3D 11)
>  		mask |=3D DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
> @@ -1022,8 +1022,8 @@ static void
> bxt_verify_dpio_phy_power_wells(struct intel_display *display)  static bo=
ol
> gen9_dc_off_power_well_enabled(struct intel_display *display,
>  					   struct i915_power_well
> *power_well)  {
> -	return ((intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_DC3CO) =3D=3D 0 &&
> -		(intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0);
> +	return ((intel_de_read(display, DC_STATE_EN) &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D 0 &&
> +		(intel_de_read(display, DC_STATE_EN) &
> +DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK) =3D=3D 0);
>  }
>=20
>  static void gen9_assert_dbuf_enabled(struct intel_display *display) diff=
 --git
> a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index fe851fe39222..01f6a88fd1a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3072,14 +3072,14 @@ enum skl_power_gate {
>  /* GEN9 DC */
>  #define DC_STATE_EN			_MMIO(0x45504)
>  #define  DC_STATE_DISABLE		0
> -#define  DC_STATE_EN_DC3CO		REG_BIT(30)
>  #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>  #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>  #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>  #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>  #define  DC_STATE_EN_DC9		(1 << 3)
>  #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
> -#define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
> +#define  DC_STATE_EN_UPTO_DC3CO	(3 << 0)
> +#define  DC_STATE_EN_UPTO_DC3CO_DC5_DC6_MASK   0x3
>=20
>  #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>  #define  DC_STATE_DEBUG_MASK_CORES	(1 << 0)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index b007343721e1..ab4e0e9573df 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -267,7 +267,7 @@ static bool intel_dmc_wl_check_range(struct
> intel_display *display,
>  	 * the DMC and requires a DC exit for proper access.
>  	 */
>  	switch (dc_state) {
> -	case DC_STATE_EN_DC3CO:
> +	case DC_STATE_EN_UPTO_DC3CO:
>  		ranges =3D xe3lpd_dc3co_dmc_ranges;
>  		break;
>  	case DC_STATE_EN_UPTO_DC5:
> --
> 2.43.0

