Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75698BC2C61
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 23:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A39410E705;
	Tue,  7 Oct 2025 21:40:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CfL63SHQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C040410E705
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759873254; x=1791409254;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JYp4GVZ74b0uAh9X3NiaIXhra3lz69AQ1YGadU7o2kk=;
 b=CfL63SHQEONMh7DW4BjcVU28Nu0TJn4YkROfN9/tjlxKveFXZpniB57L
 sWNvbotOc8IzrCa46P2RORYR0FPHA+FS3jVAaXRrZSCrWcIeviqbpFNof
 2zcrN+3u+QQ6VK32NZvte3fxq5JbONI+7376MIkumXBtuqVLHhHT+VF/j
 UpboINDJM7x9HSAbV+B6dGlaV+6ZVQzRuBe56tmCWIyTaKPqrXUsSsjhV
 Ww4p9M0gFTI1SP9NTcW0KWkWg27CAieV6j0BaLELmF9nhDHKdXE/0nxme
 7SBIkFJkft3VOMxiag1Csn8gNlyJZtCXDEjJp1RRiS8XiDGTR7Hlps5eL Q==;
X-CSE-ConnectionGUID: VLa9bEJOSeuQR71frUWYyA==
X-CSE-MsgGUID: FDj6bGmZRCqy8ONmjWxWWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="65913030"
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="65913030"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:40:53 -0700
X-CSE-ConnectionGUID: a3NJ1+5USOeKzNqMwRLLgg==
X-CSE-MsgGUID: YtjDHQYWQDWHrOILQwSGfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,322,1751266800"; d="scan'208";a="180210324"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 14:40:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 14:40:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 14:40:52 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 14:40:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nkzl9KM6uovTSqjn3/CvQORkEhv2B1gTD8QYRgIKAAg2zVPuv+K0NSEk3CFDoNQNj1FaPyOucex9vO2pMqLR/6rjuAwCSMVgvjtHvgqv7mY8O2M8A8OIEJlatM/r8szsoMNHgRcKO+VTimQNH6xPO66Y9FZ3G410UY+D6yWz/c84xAM4qrVr4zh1F6VBjWVMgtA0NzrK3NmYogM9C6JK5A1U4x2IysTrlsz3QP7FWe9P/nN7F0/n7qr0M7L/TRRg3Gs8XgqzbiWrmqUIkITxreY9joRtooW0k9dJkpb3ydk5BS+F0mpUiWzhtAUJwyLRoykBimHCvgh4EPNcKxokdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fYqYaV6V5SBCqJjZxToClVCE6e40qOffsKgyz6rlWp8=;
 b=K6OvWF2DDvM0b5m5K9Rp9ugUIrC7xCbdhhIEw8ooGW6sIsN67xhrgKgWoiBQAHNuspEyNBD4+UoFY4s7BrGj823Zv8Tgnmu4FwFGbnsDH8Jp6V3UXepUuW5ZC1ZjnpOVAsDz9sji2BsU6nzkruapnT5apCMHvGLDR294lyNN3Ane+zp4IBLBijn8uvHBXE2vGEWpYklzumAuzwB1WlFk1IwIu1zdCShLZ3m7GZ66uO+db5xfuz6eQE/138kvY+NCSsPZbJJYM6I9tfwr+Qvv1Ve9WtvLIttjNmoHgPuPpdkQNL8norT7Jsigo/HcBYrHKJ04kR62YAS/OcDlAC++BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 21:40:45 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420%6]) with mapi id 15.20.9203.007; Tue, 7 Oct 2025
 21:40:45 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar
 Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>, "Chris Wilson"
 <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Topic: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Index: AQHcN8iMlqXLmHFdTUuiKqVlWShhm7S3Mh8AgAAA+GA=
Date: Tue, 7 Oct 2025 21:40:45 +0000
Message-ID: <PH8PR11MB8040A2CB337190DC80B80BB3F4E0A@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com> <aOWFMICISzSZ_3nH@intel.com>
In-Reply-To: <aOWFMICISzSZ_3nH@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|PH8PR11MB7965:EE_
x-ms-office365-filtering-correlation-id: d3657c1e-cbd0-4cc5-00da-08de05ea2c53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|42112799006|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?gwhSC4PwJUEv/f+EuaPdmYbul1ri3SdzTRP3mBixssF1efhNIG4ezdG65E?=
 =?iso-8859-1?Q?F0LSNDxE/pA/AbSARZOeVjNnoozuyNKNqFYoFIEDol3vKNpJfelTaeeBRY?=
 =?iso-8859-1?Q?/A4/xH8c/iqrEwYVEjL2A00o4AxiLc8IiW8SYtekrm7wkSi9xQ6VBaiFrn?=
 =?iso-8859-1?Q?rWNPalV73ppF+GUu4LFwEbig8uSUyek9t5Niq4IzfSvSH8CzYNpBrSNeLV?=
 =?iso-8859-1?Q?Hg+d7A6zDCdHyA0FsrTOUWSeRb4GZ36S7yvqtWWJ9jfDCaMBpHQvSBaneu?=
 =?iso-8859-1?Q?syAFC03En9i6JniFJgYFZwjBthk+lLPK7GZK4VxEvMtXd8R1mVzmrxcqtF?=
 =?iso-8859-1?Q?8JijN8DKD/OdEXJPa12X77VUEhmH8DUgoPk3z5SVx+UhSHZJYUWbselp+b?=
 =?iso-8859-1?Q?VZL7qpdsFnJAsTHqw2t3DZIHukSbQLHBrBqg+DKbgMR2GUtIkSLBRU4OHd?=
 =?iso-8859-1?Q?6g1uSt0pFfj14+SaY6GOTpnCM2EjAkCD+zdrJYQ2JwHVfFoid9BC7+WKpr?=
 =?iso-8859-1?Q?TKNlQT9dKo90WNUesG1t3JC35tz5XYvDOSw2ZeNsxbJZb3oSVWHhubHoh/?=
 =?iso-8859-1?Q?USBUmsg9yf+ozymkcan2qxLTWDNG/F22r8Rd06TtHDrGYdHbmGOk0YNK5B?=
 =?iso-8859-1?Q?WyOLmP9e+wrLgz9c67Lzd4JKxfOlY050vbpzztWJ96Dm4sJlaxv8nfJN6p?=
 =?iso-8859-1?Q?fb0E2lngDG1jPOnuMOh1fhmFeSd2KHaqBHWvulDzDwc3j1j+M/Qrxopv9L?=
 =?iso-8859-1?Q?7uQcpAyq7iUK6kY2LF+thZkKVOzT6HiIv43aU0ub2wtxKCiHz07gtBISnW?=
 =?iso-8859-1?Q?iKXpSEBbuPxUhGOhipWiElFpP13Y+e8kZBUQ6La1YOlAdqAXr0QHztR5XN?=
 =?iso-8859-1?Q?GKk4sU4TGnQHt8vL7O6JDbPgtj6qZkDsXEPMf+VpZvrlNbXNNe0mkcjzqe?=
 =?iso-8859-1?Q?eck1EQ42TIPLF1ExvQ3DCuEl5ROiiGjqHESK7Vp2T5O7/fm/XNBG709FKs?=
 =?iso-8859-1?Q?ecpnfccqhtv8+rOsb84w57j+SX5akh0zeNKcFabRNUYQXaEubcacLJC26C?=
 =?iso-8859-1?Q?jdtqRh3pHi1MS2Ttgm0tR3X60OEW0EnMKCCzoO7/9Fhi+1vNY1yeSLZnve?=
 =?iso-8859-1?Q?auSmdue4zCMhWozb9zlm4r5LHTupSkxjb2qxJQVHNukHdlSnQM3rRiQt1Q?=
 =?iso-8859-1?Q?Uuv9Bzp3149/7v+cX8t9P64sYLcfD1oePCaXp0l4to7stJvM0weC2nb/4k?=
 =?iso-8859-1?Q?5lJd1T0m8OoX5qa7YYMVXLX7Lt2BUhzpfn7fyDFYyPRKsDgpXYeCQVTb/k?=
 =?iso-8859-1?Q?iqMT8OOyABDHzH4W7O/lCQgx2hxGcqY+0XLzizw87ZPaFdRITRE1SrVEx9?=
 =?iso-8859-1?Q?gx6BQfbnHowkooxvmfFCNSUMmPSS0ZyFJ3Y7l/fo+r+4Y5xNl0iCzGtSXy?=
 =?iso-8859-1?Q?2ATytbbLwQqcOYq9+F88OrnFfy9OuRKdL//SUui9mG1bElQszatrR+/K/X?=
 =?iso-8859-1?Q?9JHe31YXlXQ8BWgqloERjaR2FPHj+0kTFNf54hW/wDpA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(42112799006)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wuPu+PI3Docm6y4gYV+tmy7XJhoglItb4G8gxlQtwRgmTkMY0hq9bYbnEh?=
 =?iso-8859-1?Q?fCjR4s3ZxN92XaFT/MCRDBmzWOk7YKn4IipFpLTECP/AYR7Ww7zcAqZJgo?=
 =?iso-8859-1?Q?mlRuDKbpR0Er+kOxz6D/+bEUdR8SSJ77ztUzUKFikS+j+AYIhTpmWGr3LV?=
 =?iso-8859-1?Q?qzoySv1xO1dqPROItJsiHnqJGREJa90sZJYTbsCZlfs9t2Ro7pTt8qQnMU?=
 =?iso-8859-1?Q?FmX9CBmD9xwdXQibCLpQpCrbp50X34dhq3QyMHC/2RxM5/6ypAJwR7fTDw?=
 =?iso-8859-1?Q?iIj+FU/1CjLMnbQu45yOWytZf+NDlBxphl2Aei3iB4N91ZC0q82NiBBTny?=
 =?iso-8859-1?Q?xyGnG2e71bQ0M/OjsLlgwP0eSVN22NqNbwGL0ZVMwxsGQFJD7h5hghTjD2?=
 =?iso-8859-1?Q?u9QUVv3gLy6ZXJ5u8xNUTqCS0YpHr7pL9Mlgh52aPy10BFLyJMAjTg3F6p?=
 =?iso-8859-1?Q?bmFI6MpaH03h7wYulBf0/JMqY2V8s1KLp7NWombzEV6SL+5eyN1dPLyjrF?=
 =?iso-8859-1?Q?3a+As10tfr/buG0IPRgDcwPhT37QdJZjzAPsjr+zc5kjweHIUHOD/Lb/vT?=
 =?iso-8859-1?Q?TYJxMSwMvC++JCR948jnvhrf3bkHvPp6evsVI380jPqdr89JzlDnJslBdB?=
 =?iso-8859-1?Q?hQmSoH9eAf2Og9VaWFUBpSGo+m/qj5ShuySkCjrslOs4uAp7VWcNXD9QJe?=
 =?iso-8859-1?Q?v89XaoRF4z7nMnMUS6FcimvnliqcX+H5liidFHAnTrNzKrV+5RfrPzCxTo?=
 =?iso-8859-1?Q?aFesrEBFzrQXP7w+xBDTfKSz57rnFV5fJlSqDhu2opTW6OesvPHFS/oLJs?=
 =?iso-8859-1?Q?4aQF9FHUUkXvF0BirFEG4GuPAO1uMEu4gcllK3/p6c+Qg5S8fbp809gn+1?=
 =?iso-8859-1?Q?8X7fgYhV8Kqp6Kr1NmCh83pZXg2Ebf8OsZAEaP+RNuoEfvLug+fbZIA76/?=
 =?iso-8859-1?Q?+9w/YifTsZVxsVJ7gMXuGYq5QTFnWi7vl370ljKIUe0Rd/ooMgybKkhiBj?=
 =?iso-8859-1?Q?QIYmTDq96FVF0VxBw+H0bMP8g+nV6Ao+V/2WvDWlL8Y/+00adEdvmKat4g?=
 =?iso-8859-1?Q?kC1/4Nd6omkSwXBX8HWfhbTl4Cx6ku0hL8ETVGHWo2EwpKpAL0dAXj4Fme?=
 =?iso-8859-1?Q?MjzBp0VQwwZPMllNB+JLluOHODJNGJ4F7ma5bZywy0ANxJb8Q8+89kgW4K?=
 =?iso-8859-1?Q?TP2rfCq6CEbxgbOfAPgqeGMI8DVji7z+Q4SWfdRwAUtvQ5KzWR7YhuZuEY?=
 =?iso-8859-1?Q?yqKboHNEx/ibipv4e0YlyK4G9dXkzDNbo5XoArng6izoIpFfmkVazBO+lT?=
 =?iso-8859-1?Q?5fVzX+wdq8MtRpgHjqNtwF+c9Ft2k61cFPhIx+qQjbNYjyRmJe+mNbvcpC?=
 =?iso-8859-1?Q?uRYj0tnMRLx+NV7CX6Y2IfMhqEHwMFVAiIiBFoHj4Okn+Qr83hufKU7FFU?=
 =?iso-8859-1?Q?2QV9XhR5oaZjY4RuAR5HeulwCevgelnZeHCZNnpUvOkWJ4HUTkXVSz8Im0?=
 =?iso-8859-1?Q?F4nF3DxQWNZOuOeEOu0Lc61LdrrJOFl4lOIzT6w6GzSehkfiXlwJq0pElM?=
 =?iso-8859-1?Q?EXYK69zQ3yXC2wPgZwDnZ7m0LSWg3CSLRqDN8iupg1Dpej9XOGonjI1yoU?=
 =?iso-8859-1?Q?YbGJsoV+G6puE=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3657c1e-cbd0-4cc5-00da-08de05ea2c53
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 21:40:45.6907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YkKwISwaICW2ha8jTdB4FNdan+je5e9SpO3HwzzkgqoDn+EtB1OeQ5Dmww+KYq1teXhCNHzs7nGaCX/Cm5C9sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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

You mean  intel_pxp_fini(i915)  ?
This is because mei_me_shutdown  is called after i915_driver_shutdown in pc=
i_device_shutdown sequence.  If we don't close pxp in advance, it will caus=
e=20

[  295.584775] i915 0000:00:02.0: [drm] *ERROR* gt: MMIO unreliable (forcew=
ake register returns 0xFFFFFFFF)!

Since we disabled PCI_COMMAND_MEMORY in  i915_driver_shutdown

Thanks,
Jia

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Tuesday, October 7, 2025 2:25 PM
To: Yao, Jia <jia.yao@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; Lin, S=
huicheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; Pin=
gfan Liu <piliu@redhat.com>; Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit wh=
en en/disabling i915

On Tue, Oct 07, 2025 at 08:25:14PM +0000, Jia Yao wrote:
> Make i915's PCI device management more robust by always=20
> setting/clearing the memory access bit when enabling/disabling the=20
> device, and by consolidating this logic into helper functions.
>=20
> It fixes kexec reboot issue by disabling memory access before shutting=20
> down the device, which can block unsafe and unwanted access from DMA.
>=20
> v2:
>   - follow brace style
>=20
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> Cc: Alex Zuo <alex.zuo@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Askar Safin <safinaskar@gmail.com>
> Cc: Pingfan Liu <piliu@redhat.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jia Yao <jia.yao@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 35=20
> +++++++++++++++++++++++++++---
>  1 file changed, 32 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c=20
> b/drivers/gpu/drm/i915/i915_driver.c
> index b46cb54ef5dc..766f85726b67 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -118,6 +118,33 @@
> =20
>  static const struct drm_driver i915_drm_driver;
> =20
> +static int i915_enable_device(struct pci_dev *pdev) {
> +	u32 cmd;
> +	int ret;
> +
> +	ret =3D pci_enable_device(pdev);
> +	if (ret)
> +		return ret;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (!(cmd & PCI_COMMAND_MEMORY))
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd |=20
> +PCI_COMMAND_MEMORY);
> +
> +	return 0;
> +}

NAK. If the pci code is broken then fix the problem there.
Do not add ugly hacks into random drivers.

> +
> +static void i915_disable_device(struct pci_dev *pdev) {
> +	u32 cmd;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (cmd & PCI_COMMAND_MEMORY)
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd &=20
> +~PCI_COMMAND_MEMORY);
> +
> +	pci_disable_device(pdev);
> +}
> +
>  static int i915_workqueues_init(struct drm_i915_private *dev_priv)  {
>  	/*
> @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  	struct intel_display *display;
>  	int ret;
> =20
> -	ret =3D pci_enable_device(pdev);
> +	ret =3D i915_enable_device(pdev);
>  	if (ret) {
>  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
>  		return ret;
> @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const=20
> struct pci_device_id *ent)
> =20
>  	i915 =3D i915_driver_create(pdev, ent);
>  	if (IS_ERR(i915)) {
> -		pci_disable_device(pdev);
> +		i915_disable_device(pdev);
>  		return PTR_ERR(i915);
>  	}
> =20
> @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	i915_driver_late_release(i915);
>  out_pci_disable:
> -	pci_disable_device(pdev);
> +	i915_disable_device(pdev);
>  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
>  	return ret;
>  }
> @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct=20
> drm_i915_private *i915)
> =20
>  	intel_dmc_suspend(display);
> =20
> +	intel_pxp_fini(i915);

What is that doing in this patch?

>  	i915_gem_suspend(i915);
> =20
>  	/*
> @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *=
i915)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> =20
>  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> +	i915_disable_device(to_pci_dev(i915->drm.dev));
>  }
> =20
>  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> --
> 2.34.1

--
Ville Syrj=E4l=E4
Intel
