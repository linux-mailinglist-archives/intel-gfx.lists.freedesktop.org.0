Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D35BF34834A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 21:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C296E1BC;
	Wed, 24 Mar 2021 20:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959276E1BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 20:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616619511;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type: content-transfer-encoding:content-transfer-encoding;
 bh=wDpK0jU2adLTMsShi/tRLuaqod6dgo7/ErJCz2+WIZM=;
 b=bjaN3MK3kdr+WR2p4c8S73du14lcAj1xqH6vvBqYPj1NeiUJ3uKcdG5FsFKE/3exa5ftlR
 kO5BnM752xV1K2On2agcELbBThapR18P1KOYsRxttDp7HCuh8TJy/jsesMgZEgya9kgVx/
 4sv7VUse9C3mo9h4vQq4qiK0MG362uU=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-ngHVIGZxO7mwTW45pxLmpw-1; Wed, 24 Mar 2021 16:58:25 -0400
X-MC-Unique: ngHVIGZxO7mwTW45pxLmpw-1
Received: by mail-qv1-f70.google.com with SMTP id z5so2196902qvo.16
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 13:58:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :organization:user-agent:mime-version:content-transfer-encoding;
 bh=wDpK0jU2adLTMsShi/tRLuaqod6dgo7/ErJCz2+WIZM=;
 b=r6JbhIUuhhMLanDsFKzuGCv8FQ8ysxqjEtiLPcye/Q42V8AOUkTuEY8P5IK2gFAG+T
 YUwSIgj2w1Kk19IhMn77PpVo0L5+gtwb92+73DnHY9mFcNC+yMwCPOn81q1JbRXa+9Lz
 vRCTDehwbII69wkJ6cx4ld8uOaL86PxJ+I6sw9o1yDpdqLh8MfvygOAJfYP7NrS5LOxq
 KeQt6YbXL/tyW4g11I11C/38LKipuxwV6LrNcrbKl1za8TH9+qLKPyCIG8ug7bjHbLE3
 08/6ypQkt84bFVF7ZDaDBXCEXLp7/B3zXwhLKkzuFXmh7Ufynm5czkaWd7EcRs6UmYU7
 BXWQ==
X-Gm-Message-State: AOAM531rVVN51eIjoGMlOHBYsaFyrq3DY1YCG/6GSIegI0JvuaHgx8AV
 gLojrxcsB2i9025Fs0zYIwbuTzZzZVwtBBfC2kJLaehOKwX5XvMrUsepr/8bHA+dIDgTxLV6wOM
 jIr2aRUP4JB+zCxwhCsLPdKUVKtyT
X-Received: by 2002:ac8:7d43:: with SMTP id h3mr4694727qtb.388.1616619504560; 
 Wed, 24 Mar 2021 13:58:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSTn2eQ9V18kRB76tQvlRAns2jg79GIZcv1/0glvorj3szTGYTXgIQB6NiHVlNxQ3CLGCDyQ==
X-Received: by 2002:ac8:7d43:: with SMTP id h3mr4694721qtb.388.1616619504342; 
 Wed, 24 Mar 2021 13:58:24 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id l129sm2569003qkd.76.2021.03.24.13.58.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 13:58:23 -0700 (PDT)
Message-ID: <dab3efecceb3e2ad2dc543a7c09fd9de0d55af2d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Aaron Ma <aaron.ma@canonical.com>, Jani Nikula <jani.nikula@intel.com>
Date: Wed, 24 Mar 2021 16:58:23 -0400
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] Regarding the laptop with the BOE panel with ID 2270
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
Reply-To: lyude@redhat.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey Aaron! A while ago you submitted some patches for a machine that appears to
have needed the VESA backlight interface in order to control the panel backlight
on it:

https://patchwork.freedesktop.org/patch/394371/

We're currently dealing with a different laptop where the machine advertises
VESA backlight support, which we end up defaulting to after failing to probe for
the Intel backlight interface, but this backlight interface appears to be
broken:

https://gitlab.freedesktop.org/drm/intel/-/issues/3158

The fix I was hoping to do was to just not attempt probing for the VESA
backlight interface, but if we did that then it's possible that the backlight
controls for the machine you submitted your patch for would stop working out of
the box. However, it occurred to me that we never tried the Intel backlight
interface on your machine - and if it works there, then we'd likely be able to
require the VBT to advertise VESA support before using it and fix the machine in
the gitlab issue I've linked.

Do you think you could test this for us? If you build the latest kernel from
drm-tip, the easiest way should be to boot up with
"i915.enable_dpcd_backlight=3" and just see if your backlight controls still
work as expected.
-- 
Sincerely,
   Lyude Paul (she/her)
   Software Engineer at Red Hat
   
Note: I deal with a lot of emails and have a lot of bugs on my plate. If you've
asked me a question, are waiting for a review/merge on a patch, etc. and I
haven't responded in a while, please feel free to send me another email to check
on my status. I don't bite!

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
