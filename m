Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V4c1GS4sMWq7dAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:57:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6807E68E8C2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:57:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="K8maNo/j";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAACD10E9FF;
	Tue, 16 Jun 2026 10:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2796610E9FE;
 Tue, 16 Jun 2026 10:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781607467; x=1813143467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SZ74me26mUbf6cTwSx9/yJu76195Xq8DAYadlNqilZ0=;
 b=K8maNo/jv3asmhe5S5acB/LJLhH6QkepXeBtndIRBj0kPnioo3KNX5mZ
 sCMnHXJfeBZ+Wz6OwTVZoznd7/ftHM4tI2oEN48Lalej+syaD/bd+WuwA
 VbrNi3F9MbPd/37ynZuv+/fMbxxV5fcfqUVat06juvbqy/z7GwzkbIRup
 k2062w33agKNalXzZYJ5mby+X0zPQk8E/CbQ1QTVGOlzLOrv1ICLm2tZo
 K+PaDbqbiqE/v1/hDc/oHLK48FoUhG+Rh9RtumjXZgdyEQ1zoYRauw49f
 SuEfnyax4/1bNn5siTEZMkrRN5upfzQVXMpRxnSx2qsoDcWinQ1lFvunD w==;
X-CSE-ConnectionGUID: LA6tkqnQTDSVEsAxriFJ2Q==
X-CSE-MsgGUID: 3O8E6LnyRFWO08ytgb/VAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="92929709"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="92929709"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:57:46 -0700
X-CSE-ConnectionGUID: s1xB0nqrRju4uKA2nG6mAQ==
X-CSE-MsgGUID: AMWNqmrHRrSMHD/lY4UCDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="252861078"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:57:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:57:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 03:57:46 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:57:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RkFnMLfdxM+1Fi59VoyWv/xODlK19HMLTY/dYaIfkXAjZHSBNpQMpHIi+r41oCFs7WHi9wnWwtrbvPx2UasUbaFmgPI8qRZ4UekgvzIoqdkId9JzIn5ypYp2RpKrpaIjIZrzQA4qVsb0jrPVYTQGSN4D8RBztbfrFu0U8/Ivbv3bBPqr6slWcqBmWVkxq6aP9mswMHV2PMOpYTDkF372xnNnsoqDoAbq6HuKjq8WiUGWpfXbiPjMNIK8yV7/6HbjjKrPvE6Lf7gzOIPRVseU10iGI8ADw6SOXdZEf4Ii5RnLX05YhpnQ/d/FT68/X5VlgzkuTWkzAg+hdkNR5+N1OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1kF7fx3A/JLnpgheoZds1qJLzkmFwmFVsaIxH9pphVk=;
 b=EKkiM7TLd8XoPVTfBeZHlwOutqZD2ki8YIrUIU0VshRMRK5K3ordaxZuXJOI28ph7rJr/ipvc7mvZSpYO0x4mkW36z2CM4kBY05eFO6foj/wZmY6Mk4n6rvFZObVma+/1oQnDBcLvkAkhZ3g02neUXF8cP6mj8Soin9Itg2wJGBeC8odAQPfRvKRsF9VkITBuX84//+2SCK9kkMY91YlfZpi2kX7yqJmJmM4Y8ZruawfT6jitm7njAjPQ+Vp0oPh6GBXVBiMORi701RGssd4+rcGxPjf7UGzRGUxieXCOKOfj/epGHA+Dpc43LVEN5ttKyMgor2xj52r+9TqyTuHWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 10:57:43 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 10:57:43 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 21/22] drm/i915/cmtg: Restore CMTG after DC6 exit
Thread-Topic: [PATCH v9 21/22] drm/i915/cmtg: Restore CMTG after DC6 exit
Thread-Index: AQHc/Qa1tXB6v5LTo0qEu4zg3lLugbZBA46A
Date: Tue, 16 Jun 2026 10:57:43 +0000
Message-ID: <DM4PR11MB63609720A0BAD96540DA99A3F4E52@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
 <20260615200339.885190-22-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-22-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ0PR11MB5134:EE_
x-ms-office365-filtering-correlation-id: 2533a37d-7b1f-457d-5bec-08decb9617c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|18002099003|22082099003|38070700021|56012099006|11063799006|6133799003|4143699003;
x-microsoft-antispam-message-info: pU8XJ9T4Gl6fSYgJgRK8Vai86nRI1LZ/PvshbPosbhVWl21AHGXdhAHuP7iGA9RtEL1JosVsLRM2DbTzeXM0XzsFyckyeCJaUYRkdtTsM9Nj+qXxxbXb3L8isxk6HEDid6b10JzFMLBq8Kd350WNT6+wKFWEYVVafhvMX9zvb1ppg5w6UMunLFEj5n5whEanDTf726YdH1u+TriooVZ0kPgw7FyT6UK5tquKkkPxpJZ4wik694+n8bE/S/EJ1ObWpMh9TT8HE/aJjDdEp5tFKS85BpnsZFeqYDDBfEUiJr3XC2hS7Z7dN4ILqn3WVL/ugxmjvU/khtWH7ciDcVS1n0tKy3cDFjZJLabag/m9ZCDYoJw3zWUbE3hQLGc8wnKNoIa94TlIW8f35cTUq1Y+A8HuJAnkExK+BBC9b3pw3hvxlhnfjKIJCPhXAKXMMMd3QG1R9/JBbt85M+9oB1xi1QvYXl5aOzlc0B7WkC8VgU7q43BVq7O3144t1ZIDq8IVGr2i0nq1OlnY/K0YAfNZtAs5yrvmyYwhS+H9eeVQm0gxQn0w8JCXeBQGzrwF0EhmFIJE1J568Aym4b3Ve+iI8K/3bjHAS2hfdAVbH0NLKtneEXh1MTA96D13QkWJaLyRmRMGn0cU3M4W53Gc42xYOHyr/mR9C3yd0u4qnHbG2VSAQKDq2eTnUwcZ+pknNDjb0EU9TQKLPINbkAg+1tVkmSG7smjHY9TLNiKKr4DDJ9dtUnwZCpiQLXCqD+Dc6NP+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(18002099003)(22082099003)(38070700021)(56012099006)(11063799006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sYwbg0Js1t3eN/Br7SM+RFPKX2jRWlXnhtAhd1DvdvbHLJpAGXic3GGFuBFA?=
 =?us-ascii?Q?PAUA5WyTNcUevUCk8XeMTUtql51BeXnV562hxZGHzWed3QQBINAG09ocED+S?=
 =?us-ascii?Q?qY51EW9j/914mOWc5+VtYebCefmL8tTfjybRQIpfJqMV5HnQFTzR+fy08tq7?=
 =?us-ascii?Q?WkvAKqCvVfRMdygba9loYUl1Vfnqc7B6VDGy0eUxQaH6tTQARKw0rZrQVoF6?=
 =?us-ascii?Q?uvsQZTLCcaUFWBLV/9JQgiSmzL69Uw8FqLAUTnrnF8xI3YjQKFAZR76qNxbP?=
 =?us-ascii?Q?j5LBucth1Q46IOO6ZSUhyVuhSvFuKeKNXdY1QdlqJNSwDySk0gMiMZbjOkw+?=
 =?us-ascii?Q?QD1WKIYTkefIWcjX8G4hyEa41DRlbNXyTVaHo4rA48pUWjs+KBCiPwHMAswF?=
 =?us-ascii?Q?btu5X2wbEvk95PHxuUa+TEjmkDuYWykSTbCBPrKMl0CSjEy7uthciB9DHdpx?=
 =?us-ascii?Q?YZVA4i3lOGvZNcPp4Y/S/l9jF5YbjEXbIhBy6pmR14pq+PVnPaj0RBDr1Qh3?=
 =?us-ascii?Q?JzYLU8KrViaG5T+bEqeubz/BdQ96xjVIVfvkZvM5+bqz2Ul0+DXv4pwhNYUm?=
 =?us-ascii?Q?qmgyfhMMXPSwkObe7EUxscMguNLJhESts8bzJ3vIRNFcZuSfYW0VZJawgCj+?=
 =?us-ascii?Q?pZKXMdwelTOP2Cuq+6xoZm2+HEuiVNtx1XMyRbbpaNXUvRZTxanudvDSgAnh?=
 =?us-ascii?Q?rvI26IX+C+IboINqBFpz+cII2P5+X9y+s5CbWNzyuf0Wsdj6bb4ESbqvQjAP?=
 =?us-ascii?Q?OqpXfAk3oGWzuTMXVPDWogMvsqnMUtUC9YikhySTiK49ATnyaFtBa+korjG4?=
 =?us-ascii?Q?VSZoyZI6e5jZjtsbf5uLKnYPq/0KflfJ6ZAhufrAqcADeoWK+z7sTDmIQ2r+?=
 =?us-ascii?Q?sLP3/Mcdy542Gbjo7OhEDRQWTccYYrTNjdccDcM82wgRKQmZlR9lmwzbvy+0?=
 =?us-ascii?Q?oCG9zxYQ1gSloDzcPLAXSssMpQtQN87FcMYib3Sjbud7PQsgoOeyTTFMNVI+?=
 =?us-ascii?Q?x/eMm0I023G2LmFI85n1L9YgvBFfRlzVi2d2qejyrn+DMs1EOmWjBp9R1/Wq?=
 =?us-ascii?Q?Tjiu2mNF1tLJXjZ7TylfaVu7SPDb1bzKviy0abrmPovlUHTXGpEJdtwY/D4X?=
 =?us-ascii?Q?Uz57la8jKrGDpbEgV9QSQffEUxeuma5AS8MLmD/tZrEnRLvmx2kSUp98UM9R?=
 =?us-ascii?Q?j1JoNvfbny36VyyxZlOpWDdIYQNdkkUnuBiwdP3ZCebs5P5atgL2Q+91TsvW?=
 =?us-ascii?Q?E2yJerx8OKoC00LTR8TVhLHfKmg8qk/k62YM68Q3nSDsnIe8uP88c4VgpmNv?=
 =?us-ascii?Q?3g2dN1SNkzjzj4FIV7mcGld2hnccOW2hDNexavJ6lI0hJOsAWVMH7GOwov0M?=
 =?us-ascii?Q?tGYgqfsYGbhZjyQopzjbgR8Y435m3U3hcmC53z7x03EyLkHN7o0kIi0Tkx7Z?=
 =?us-ascii?Q?jTPhiYvQW5yhch961Y4LCzC68tCKHr+pEdsIQyc7zk4yGIx3a6s0LhkxMw2K?=
 =?us-ascii?Q?sEkMVGUvzQrSPfKi2B0AH0QQmetK/HsJqIrcj3q2oyHDwMtM4sebWISWe3pl?=
 =?us-ascii?Q?2S2/L2EYsMqgII6+h290rvTPhGBRZXkbCGmU51UWtNYF92MszXA9l/IM8sC5?=
 =?us-ascii?Q?EJxS1TKTaKLk0FxVoQrh2Bbp4cPgXuyv9iS70MPVrytxrf67+1m6FlDTsJPD?=
 =?us-ascii?Q?VHBXy/8FGuUYmz6ECObkMdcci0pIa2xWK/dGaEaxpbCBz4iRECugitskrvfW?=
 =?us-ascii?Q?/x0F+4B9iw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EwNJ67ZwVSCSfDJSBx8kQah2EMjqQGkncwq+JoOrtwo6GPcNS3vwkAdoWA7g2Y8qJW+KPjZOYwZxymSDy5Foj7KqSyVQPKYRHbs064JcfWsbCfJ1OauNBAjq+3wD3Pao7ysD3dw/7ySp8FJovcW50JAlFffmWEwJ/FWyMWq2I8d0tfVVKvNP8iGHQWAktajAB9tCOmHuWLyFdK2q9tJ7r/Kta426GC9jdpl5Rz+4MJydHS6bHseZS6QCpoG23FJbg6DMBNhyFGvUJTTP3jdLuoMom0LJcguVK0KcM4jrcWRpaOeYrca0c8pTOl9Pngb0HDsdkDGP7kBYLsF9/Iv7jQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2533a37d-7b1f-457d-5bec-08decb9617c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 10:57:43.7237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jx86Jm60XaldKwmT5a7de8VB0zHjEaHpB4xSoLqwZISb7ICYkVFO0iLCaVCvNGzz1cdMbV5QBquMdgkaALeCkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 6807E68E8C2



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, June 16, 2026 1:34 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v9 21/22] drm/i915/cmtg: Restore CMTG after DC6 exit
>=20
> Restore CMTG registers after DC6 exit, as they lose their values in the l=
ow-power
> state.
>=20
> v2: Introduce intel_cmtg_restore() instead of calling multiple cmtg funct=
ions.
> [Uma]

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 21 +++++++++++++----
>  .../drm/i915/display/intel_display_power.c    | 23 +++++++++++++++++++
>  .../drm/i915/display/intel_display_power.h    |  2 ++
>  3 files changed, 42 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 8684d2ec2f83..ae59d7e755f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -391,20 +391,33 @@ static void intel_cmtg_set_hwgb(const struct
> intel_crtc_state *crtc_state)
>  	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);  }
>=20
> +static void intel_cmtg_restore(const struct intel_crtc_state
> +*crtc_state) {
> +	intel_cmtg_set_clk_select(crtc_state);
> +	intel_cmtg_set_timings(crtc_state, MODESET);
> +	intel_cmtg_set_vrr_timings(crtc_state);
> +	intel_cmtg_set_vrr_ctl(crtc_state);
> +	intel_cmtg_set_m_n(crtc_state);
> +}
> +
>  void intel_cmtg_program(struct intel_atomic_state *state)  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *new_crtc_state;
> +	bool dc3co_to_dc6 =3D
> +intel_display_power_get_and_reset_dc3co_to_dc6(display);
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
>  		bool modeset =3D intel_crtc_needs_modeset(new_crtc_state);
>=20
>  		if (!intel_cmtg_is_allowed(new_crtc_state))
>  			continue;
> -		/*
> -		 * TODO: CMTG needs to be restored on DC6 exit.
> -		 */
> -		if (modeset && new_crtc_state->hw.active && !crtc-
> >cmtg.enabled) {
> +
> +		if ((modeset || dc3co_to_dc6) &&
> +		    new_crtc_state->hw.active && !crtc->cmtg.enabled) {
> +			if (dc3co_to_dc6)
> +				intel_cmtg_restore(new_crtc_state);
> +
>  			intel_cmtg_enable_sync(new_crtc_state);
>  			intel_cmtg_set_hwgb(new_crtc_state);
>  			intel_cmtg_enable_ddi(new_crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2e51dfcd5dce..9783257651d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -285,6 +285,19 @@ sanitize_target_dc_state(struct intel_display *displ=
ay,
>  	return target_dc_state;
>  }
>=20
> +bool intel_display_power_get_and_reset_dc3co_to_dc6(struct
> +intel_display *display) {
> +	struct i915_power_domains *power_domains =3D &display->power.domains;
> +	bool ret;
> +
> +	mutex_lock(&power_domains->lock);
> +	ret =3D power_domains->dc3co_to_dc6;
> +	power_domains->dc3co_to_dc6 =3D false;
> +	mutex_unlock(&power_domains->lock);
> +
> +	return ret;
> +}
> +
>  /**
>   * intel_display_power_set_target_dc_state - Set target dc state.
>   * @display: display device
> @@ -300,6 +313,7 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  	struct i915_power_well *power_well;
>  	bool dc_off_enabled;
>  	struct i915_power_domains *power_domains =3D &display->power.domains;
> +	u32 old_target_dc_state;
>=20
>  	mutex_lock(&power_domains->lock);
>  	power_well =3D lookup_power_well(display, SKL_DISP_DC_OFF); @@ -
> 320,8 +334,17 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  	if (!dc_off_enabled)
>  		intel_power_well_enable(display, power_well);
>=20
> +	old_target_dc_state =3D  power_domains->target_dc_state;
>  	power_domains->target_dc_state =3D state;
>=20
> +	/*
> +	 * CMTG must be restored explicitly after DC6 exit. The dc3co_to_dc6
> +	 * flag helps CMTG determine whether restoration is required.
> +	 */
> +	if (old_target_dc_state =3D=3D DC_STATE_EN_DC3CO &&
> +	    power_domains->target_dc_state =3D=3D DC_STATE_EN_UPTO_DC6)
> +		power_domains->dc3co_to_dc6 =3D true;
> +
>  	if (!dc_off_enabled)
>  		intel_power_well_disable(display, power_well);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 56dc89eed3f8..b9c9b68072af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -138,6 +138,7 @@ struct i915_power_domains {
>  	 */
>  	bool initializing;
>  	bool display_core_suspended;
> +	bool dc3co_to_dc6;
>  	int power_well_count;
>=20
>  	u32 dc_state;
> @@ -179,6 +180,7 @@ void intel_display_power_sanitize_state(struct
> intel_display *display);
>=20
>  void intel_display_power_suspend_late(struct intel_display *display, boo=
l s2idle);
> void intel_display_power_resume_early(struct intel_display *display);
> +bool intel_display_power_get_and_reset_dc3co_to_dc6(struct
> +intel_display *display);
>  void intel_display_power_set_target_dc_state(struct intel_display *displ=
ay,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display *displ=
ay);
> --
> 2.29.0

