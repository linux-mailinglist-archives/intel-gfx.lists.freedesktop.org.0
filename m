Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BAA74D756
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7A010E269;
	Mon, 10 Jul 2023 13:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 347 seconds by postgrey-1.36 at gabe;
 Mon, 10 Jul 2023 04:06:43 UTC
Received: from pv50p00im-tydg10011801.me.com (pv50p00im-tydg10011801.me.com
 [17.58.6.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4370B10E196
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 04:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1688961655;
 bh=JQH7iAm2GIOc3WO0QA0BSVlviWsJfhz0FeE1x0hriwk=;
 h=Content-Type:From:Mime-Version:Date:Subject:Message-Id:To;
 b=tDWl6UyM2904mFA2+GT2SZPzdadrlByDVcon4bFBPNPIqPLmRq/DSCZ/treMq0wVd
 pId5E7Jtc8WIOlnXLQPnkD3rcEg5O/VnNhFJd0k1ieg+6C+hqmQA8iOrQP9djC1fWD
 q8PXS5LnxWlo+S9fS0IgU3MK9U984+B36aNRvaBx6t6CAS0v+6PkBLQ6bP6EpLTu7T
 iirNWp7l/N3A5QgOaeXM7gQnmVhXO1oprmaI9omBOJgVJ/MoTdJHAdKNaECm+NsnQM
 7Xm782nTlR3v/Y8B6mdMtd6/6ctdlcFDfJ0yZpDhFSOrPjTlQHjmJSvfzRx3lkxsqo
 FY9GlA91rYMNA==
Received: from smtpclient.apple (pv50p00im-dlb-asmtp-mailmevip.me.com
 [17.56.9.10])
 by pv50p00im-tydg10011801.me.com (Postfix) with ESMTPSA id 62478800144;
 Mon, 10 Jul 2023 04:00:54 +0000 (UTC)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64
From: =?utf-8?B?5YaJ57+g5p6X?= <zxc910707@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 10 Jul 2023 12:00:20 +0800
Message-Id: <254B4353-66A6-41D3-A56D-C152E6A70535@icloud.com>
To: syeh@vmware.com
X-Mailer: iPhone Mail (20B110)
X-Proofpoint-GUID: kF0pzzU6Ohp8aoUP8bZWxKRIk42948cA
X-Proofpoint-ORIG-GUID: kF0pzzU6Ohp8aoUP8bZWxKRIk42948cA
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.517,18.0.572,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2022-06-21=5F01:2022-06-21=5F01,2020-02-14=5F11,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=639
 mlxscore=0
 suspectscore=0 malwarescore=0 clxscore=1011 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2307100036
X-Mailman-Approved-At: Mon, 10 Jul 2023 13:20:37 +0000
Subject: Re: [Intel-gfx] [PATCH 18/19] drm: Add acquire ctx parameter to
 ->set_config
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
Cc: thellstrom@vmware.com, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 bskeggs@redhat.com, alexander.deucher@amd.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCuW+nuaIkeeahGlQaG9uZeWCs+mAgQ==
