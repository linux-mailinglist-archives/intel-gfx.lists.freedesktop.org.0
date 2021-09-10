Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE074065EE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 05:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B19796E955;
	Fri, 10 Sep 2021 03:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D046E955
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 03:17:51 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-qe6K6YzuN0yK4_7kVPjROg-1; Thu, 09 Sep 2021 23:17:46 -0400
X-MC-Unique: qe6K6YzuN0yK4_7kVPjROg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2ABC1808313;
 Fri, 10 Sep 2021 03:17:45 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.0.157])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A6DED1045E80;
 Fri, 10 Sep 2021 03:17:44 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Date: Fri, 10 Sep 2021 13:17:16 +1000
Message-Id: <20210910031741.3292388-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=WINDOWS-1252
Subject: [Intel-gfx] i915/display: split and constify vtable (v4)
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

v4: I know I could have resent one patch but there was a bit of
rebase fallout from it, and it had another subtle bug, I also
fixed the kerneldoc.

(v3 just adds some missing ,)

      Details below, I've taken all the review feedback (thanks Jani).
I added 3 patches moving to wrappers before refactoring, and
one other patch is unreviewed (07) but the main comment was wanting
the wrappers.

Jani if you are happy with the final 4 patches can you land this
series, I don't think I have drm-intel commit rights.

v1:
This is orthogonal to my display ptr refactoring and should probably
be applied first.

The display funcs vtable was a bit of mess, lots of intermixing of
internal display functionality and interfaces to watermarks/irqs.

It's also considered not great security practice to leave writeable
function pointers around for exploits to get into.

This series attempts to address both problems, first there are a
few cleanups, then it splits the function table into multiple pieces.
Some of the splits might be bikesheds but I think we should apply first
and merge things later if there is good reason.

The second half converts all the vtables to static const structs,
I've used macros in some of them to make it less messy, the cdclk
one is probably the worst one.

v2:
Added some patches adding wrappers around things before refactoring
them as suggested by Jani.
Fixed up all struct names as suggested by Jani.
Added s-o-b lines
Added commit msgs.

v3:
added missing , (Jani)

v4:
fix wm bug the crept in (Jani), fix kernel doc warning (CI)

Dave.


