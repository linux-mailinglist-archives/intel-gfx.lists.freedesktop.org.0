Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Jy7+Hd8aOmod1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:34:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC556B4323
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:34:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FWGFa8h5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5983910E94F;
	Tue, 23 Jun 2026 05:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41DA289EF7;
 Tue, 23 Jun 2026 05:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782192860; x=1813728860;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VyvbhmS8A1hhPibv5/JrIf/a3tjaOSD+AwW14drRPwQ=;
 b=FWGFa8h5F1gBPwxYRouaPGcAErIg+f6u8RiSYpYJV4HEer+AcE1Drl9I
 Ezn+//4gXF8epPS2fo55FbNwQbdbP1PomVA0ji01+E1XdHGF5dO9citPg
 sYWxcUUwJbZFZ9IqjHAFeQB9506SHTKDHRbp53Ho9bQwZj1khV78ik9UD
 gKJZ22B0f5LJCeVIvFXQmC+zWf2MUaOol9OyjcH1fKJ6G/SeWM0AGuoSY
 nVhbt5L4LFhfIcvw6ruzxdUNlSl4DZsWF+D6p2Wi1u2y7x2u+EPZkeJ2h
 uMUbj7a/wAkuCjAOKnNj8MJukwZJhB3QHalms+0NOjuJ6LPrnxEAsFlLh w==;
X-CSE-ConnectionGUID: aSIzR63XRMWo4WfU+PjXOQ==
X-CSE-MsgGUID: HfrpMP/NS1SRyifnGUVtrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="83117199"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="83117199"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:34:20 -0700
X-CSE-ConnectionGUID: wrPjYAAiR9u3hMIjbG/HcA==
X-CSE-MsgGUID: kQ/hNK6dRuSqAxD7r7mQOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="243061200"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:34:19 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:34:19 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:34:19 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.50)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:34:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cWHeguQtGFz2LJvtoCnjt1eh2RM/JKZKbfiaHZIlkgVaCsdL6IclFzgqfoW2owgYPp9tLGg3Nv6s5cOwynwIwscGTDLVT/IdPE/3ya91Edrv3D0XjUx4V6SBxUCSSE6FJC5xaRENtkXbosLmJoArCbqAvPBJhV6UjwM/X6Z8fnHa4Rje1MSDwhnJqPVhHOnO/M/xGOzHbAQhDbp4nZV0UXXY+FgRCKQvllyfbYbdJrIFmJ4hmq3fJlK8TEG4TSiYELl1E6fKjGbTFgN2PJ4315mIJen2/3FfubkSSrrKSD8Q5QJ0QFqVNBQGh4J7XLtOjmAIisX1gB9ZVXXKOQQbnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ln5aX8osTpUcpvWtyHkTEeBHj8ODe5G34yc++HZu8Y4=;
 b=nEa1efvc9BVp+Wlzxevs452VGEGwzSZKKo90FbJnVNwt78ruR/nJ3SAcc3ce2fn9iOwWvKO5JiTvIfh8XrrKkkP0fgpFbNddxVu4PU0FM8xSRUyAcqGx+AnryxO/cweygY2H4qum1uVixVwAELnbsZCj2HCAdHpQYo2GkBlajEgId3bwMx3l/Ln6kAeHW/koAuLOpFobP1BfGruUshQp8ie/+c8bVcayLrpZmEkm/1wPQsIftAEcZtlRfbeWa310cKmBRbjrdysn1Odjk0+x9bWRGm8YETt1JY7queMyQGrMehhJ8E/CVeM+o3HUOJEWQm5GqzquPlFwmK3tNPnq0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CY8PR11MB6841.namprd11.prod.outlook.com (2603:10b6:930:62::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 05:34:11 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:34:11 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 25/28] drm/i915/dp_link_caps: Move max link limits to
 link_caps
Thread-Topic: [PATCH v2 25/28] drm/i915/dp_link_caps: Move max link limits to
 link_caps
Thread-Index: AQHc/dGnNqzBz18ybUaGf2Ag1YgMmrZLqCrQ
Date: Tue, 23 Jun 2026 05:34:11 +0000
Message-ID: <IA1PR11MB646780390BDBC4F45D2A0305E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-26-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-26-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CY8PR11MB6841:EE_
x-ms-office365-filtering-correlation-id: 6256aca2-9ed1-4e2d-9e94-08ded0e90deb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|22082099003|18002099003|38070700021|3023799007|56012099006|11063799006|6133799003|4143699003;
x-microsoft-antispam-message-info: IZ3ziDHcQaDUP6ECJmdeKzbSKnRz4ISn1qTvB679BVqn3R/zMPropTlEa86nReGlIK7Pt7eVofoPS2t+PnUqsUy7wTw3xDHs6jR2Pi81uJjpegMIQASYYEJibAdxGZxudwKSYDm158MZGpIwXd6sAMN26wkBtIoe1lLljvXhRsbsTXyvZz9aN/KWDPI1M3ItAshEIpLpswAivjCmY/QBIa2koGMM8EJchfsCDY1IHdDxPVyY0LmUF1mJD7neeX+r/8Wuczc5yEjke9O76w8GHkSPr5NNRN5jq2dW05tYXo5wAmXvSRFGdbTvCFd94c7aFth1wL0WIBBsVlOc+l2W4ROGn6CR2CAP5FaRKUM2kGaSYjSv8c0ZPJgyqGkL/5+xGvMEg8PPfyPJ7Dfy+uGWeoxiF0VEQdbGaOsp/hck1gxFyuULguF6lfwh4d+SjgYEjrocSZYmZPAHJZTYNOgIAMtfwdluE2CFE8FhKwLG+xJsvdGxQ+/FctOSa1Nah8ZEogaH7ustiEVj87sj0r9BwLr/ZXsNbdTuCPcqF9Rf0CwORCNHy+Zwhoo9CiiOKYctBJpEhhi/SrmYVP9nKaqH7Eibx6dqu3DErfaYe/bnn+Vo+GtVjQZGqZBYbjWBZBkbx9Uf89jDQFKHI3xOkHergUpJw6hd0NRXvkMMj0fyr5HYqHCI/XrvpYkDGuPWJyT38KTyHA3Ekv1QWtp5SDDEL7DUFFzxGLxHgAAP36QnA2Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(3023799007)(56012099006)(11063799006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hZO8uLYpN4/XUTYVLQVP2+S00rihplhb5c5sae4mebMlKUBAh1Fk2U2Vsmbo?=
 =?us-ascii?Q?AKfFHfAlLzLI+LXZtPuFuGjr8NZO+5aqgFuCCmGsFprgmNlJ+ZpmQMfXbOV9?=
 =?us-ascii?Q?wSbhvulHNeZF+p5XVcMgB7ALdaTm+Y/s7m/aQwz5zmdutDKDmLTJ1gPKU7FJ?=
 =?us-ascii?Q?vVQZm31UqqJsHvMfDMdFbJtnIOnAo8mL6XHLQAh80lYlF3sbbzsyocuDL07j?=
 =?us-ascii?Q?mXNs90qIR+M09bdFlLesQrUapk4NtTsdxlzCudpyZRDst7w8un5sv0+ids8c?=
 =?us-ascii?Q?9tT23w51gdhZ2/krcMoYfFPyWh5k/xrBmtgEIvdQYUR4BlPxjgRyE3pNHXXh?=
 =?us-ascii?Q?zFgM6ZrAjJFdmp+fuyPDrzAZK8OGDgJFes3vcaemjd3gPB2GAt1BbJf/jyTQ?=
 =?us-ascii?Q?Fu4wnZMWbYVTe44YwtANbScovr6CFquVQqx6dyY7BBiOyc69mGbAPnySufjt?=
 =?us-ascii?Q?Frj9PFDm9Tyc5gB5iTIQZJ7w+Gp82WCDDq3eHJJ7QqWWNLKjfXXjT287nyuN?=
 =?us-ascii?Q?P4i62MR+9exyUA0eUcgUNZfM2zBMWAaO1ACdNJAm4UXGkCOMphw8WP5oKvXX?=
 =?us-ascii?Q?X2DuEU4rKb0aesY5E5iGTzkR392Q0WiSwdJLjlf1ms8Geu787jRNdxXdgVC7?=
 =?us-ascii?Q?+DDztLA4Xrky6UZrJjAPO4c3Pk66sZbE0wcRSEUr8Y0FWYmQ7/5nOzXEoEDT?=
 =?us-ascii?Q?wxGhyOuZt0AlsTlhEnE2Vkf3gFRBUAMr1p3oqG/IbV1xoBjQ0xBbfeCOoWeO?=
 =?us-ascii?Q?tuq9K4SJOasU4xjLAcR+pZtZbBLQZSs5Fa2eIQqBH0iJrpORBLxpwPJJMIlx?=
 =?us-ascii?Q?UWipS9WmEieqhhwqDRSKmyig/124wX6nEBaDvrqrN3AbaTlxJLnYjJk+0f9l?=
 =?us-ascii?Q?0TGTJGJ7/VJHt1b4mvCuK/FLKmncF8nElbQp1rU93iyJ9bR6ckgsxEjdSkdN?=
 =?us-ascii?Q?2UlPPQ7IKGw18UZEHhEg2eCqVFo6nWWgbwPrERDB7eAfGnCwR9SDBuFE//jc?=
 =?us-ascii?Q?dXG2dS0WSIjj7txAhuMeBxkH9FyuEg/PSywKYww9hz0QbWRfABaYMrmah08V?=
 =?us-ascii?Q?twzMihaWPAN0bFjIg0vzimtHAM3q9VYa1Cv93h0R0MC1i+l/cDteqW1J/G5O?=
 =?us-ascii?Q?8e24ts9tPYWJoS6tuGwdF/iVuUtVFGvQmNsifhEXUjWe9wTEnfL9CdHqLNbq?=
 =?us-ascii?Q?XJGwHtLhBteFDP98MiAqM6nk8dSngYBlGcsEiHq7PIrAGcvbBOeQfogUCZSO?=
 =?us-ascii?Q?0eX7cWd0sW0hFp2feAyLlQ7VUDvm06aL5YB3rDsSRAQszrye4guZhS+Ueg+u?=
 =?us-ascii?Q?dCSWHE9wPiCIoWkqJeaGD3U8ofS8AFJa1vwRD7p7/Ey4s3qzgw3EekF8fs7V?=
 =?us-ascii?Q?vjodxra/0gdScV70ebkY/rKdQKOOQUeFqZ0ACy+bd5v8bTdKYd2NLoAvbdBZ?=
 =?us-ascii?Q?AlGDFTb4qsLS7FDYNEXH5Sah44j9VkCT7it3EKOSjX7/DI6Etv9GbwQQ+h0h?=
 =?us-ascii?Q?g0dYZCUgSmb9i/orhpvRv8DC+F/06PxDtrvLiyB3XcnZJGnIdXDTDmxa8Aha?=
 =?us-ascii?Q?P8q+tIdVgAr6/aAJzi87wXjADntMhx2JxmvML1WOdwXFDPXjddBMAESA/zD9?=
 =?us-ascii?Q?F517av20qIdFP+oolozjYCJ3RkOLhd2YNA1lxyA3wGyCvahFFQOwQKhxbfmI?=
 =?us-ascii?Q?ptMFD8SX5sBuvOv8ZffdvgPLXpyJq8KJUbgo/ongoGGmW9KM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Z0lBWuZXLhqJfZUrhMtNychvklCenANcSVfI8mDlJ+S9OD9D865ZBeEO/JKQzO+lIzGrBGwEDcrCPrk3p9wuya33HZbhDCnGqEUJXn7foTX7cS7+0GTS39S0zH6BYrbWRHl5SF+HHGKGBpHfP48kEaNdLgtHhdDw/dAARCWtQ4KImfwvuzOq7VUdWIMWW3FW4GxfBg7gsO9V/zdbQCDumSTRigfKlSC4CDGsmYRG2tf7PTnFX822wESkBmhD3NsjWQTF4McLAFivsG0jHyg2PSg+9+uRgNP0juw8ucXG6Vg+SfI3nBOBumec+sf2zJLNM6+oQc5v+65pmsXXENMAjQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6256aca2-9ed1-4e2d-9e94-08ded0e90deb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:34:11.2188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X/Plk2elDfHgEMK/2CWW/HgYQsAa+qSbPDUITozgJdDIn4a/LzwdpE4Uiv6ivVEtwuci1KyF2MnVUiNN3L/eLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6841
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA1PR11MB6467.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BFC556B4323



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, June 17, 2026 1:39 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v2 25/28] drm/i915/dp_link_caps: Move max link limits to
> link_caps
>=20
> Now that all users access the max link limits via helpers, move tracking =
of
> these limits from struct intel_dp to the link_caps state.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  4 ----
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 21 ++++++++++++-------
>  2 files changed, 13 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 19c66b3a81509..8f9c8309b33e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1837,10 +1837,6 @@ struct intel_dp {
>  	struct {
>  		/* TODO: move the rest of link specific fields to here */
>  		bool active;
> -		/* Max lane count for the current link */
> -		int max_lane_count;
> -		/* Max rate for the current link */
> -		int max_rate;
>  		/*
>  		 * Link parameters for which the MST topology was probed.
>  		 * Tracking these ensures that the MST path resources are diff
> --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 9b7da5a64ee25..43427e7cf422a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -46,6 +46,17 @@ struct intel_dp_link_caps {
>  	 * disconnects.
>  	 */
>  	struct intel_dp_link_config forced_params;
> +
> +	/*
> +	 * User set maximum limits. These limits constrain the currently
> +	 * allowed set of configurations and are not adjusted when sink
> +	 * capabilities change.
> +	 *
> +	 * max_limits.rate/lane_count may come from different allowed
> +	 * configurations, i.e. the (max_limits.rate, max_limits.lane_count)
> +	 * tuple itself may not be an allowed configuration.
> +	 */
> +	struct intel_dp_link_config max_limits;
>  };
>=20
>  /* Get length of common rates array potentially limited by max_rate. */ =
@@ -
> 154,10 +165,7 @@ static int intel_dp_link_config_lane_count(const struct
> intel_dp_link_config_ent  static void set_max_link_limits_no_update(struc=
t
> intel_dp_link_caps *link_caps,
>  					  const struct intel_dp_link_config
> *max_link_limits)  {
> -	struct intel_dp *intel_dp =3D link_caps->dp;
> -
> -	intel_dp->link.max_rate =3D max_link_limits->rate;
> -	intel_dp->link.max_lane_count =3D max_link_limits->lane_count;
> +	link_caps->max_limits =3D *max_link_limits;
>  }
>=20
>  static void reset_max_link_limits_no_update(struct intel_dp_link_caps
> *link_caps) @@ -194,10 +202,7 @@ static void
> reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps  voi=
d
> intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
>  				       struct intel_dp_link_config
> *max_link_limits)  {
> -	struct intel_dp *intel_dp =3D link_caps->dp;
> -
> -	max_link_limits->rate =3D intel_dp->link.max_rate;
> -	max_link_limits->lane_count =3D intel_dp->link.max_lane_count;
> +	*max_link_limits =3D link_caps->max_limits;
>  }
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  /**
> --
> 2.49.1

